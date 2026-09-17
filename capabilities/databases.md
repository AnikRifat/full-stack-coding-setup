# Databases — PostgreSQL, MySQL, MongoDB

Selected when the task touches schema, migrations, queries, or data modeling. The project's
existing engine, conventions, and migration tooling win over everything here.

Assume an expert operator: skip explaining indexes and normalization. What follows is the
decision points that are actually contested, and the failures that reach production.

## Picking the engine

Only for a new project. Never relitigate an existing choice.

| Signal | Engine |
| --- | --- |
| Relational data with real relationships, and no strong reason otherwise | MySQL |
| Heavy JSONB querying, partial/expression indexes, CTEs, window functions, exclusion constraints, `LISTEN/NOTIFY`, PostGIS, or analytical load | PostgreSQL |
| Genuinely document-shaped, high-write, variable-schema data — activity logs, event streams, catalogs with irregular attributes | MongoDB |
| An existing Node/MERN stack already on Mongo | MongoDB |

A mixed deployment is legitimate: relational core in SQL, event or log stream in Mongo.
Say so explicitly when proposing it, because it doubles the operational surface.

## Schema decisions worth arguing about

Model the query pattern, not the entity diagram. A schema that reads well and writes badly
is a design failure, not a tuning problem.

Push the invariant into the database when the database can hold it — foreign keys, unique
constraints, `CHECK`, `NOT NULL`, generated columns. Application-level enforcement alone
loses to concurrency and to the next service that writes the same table.

Money is never a float. Integer minor units or `DECIMAL`, one currency column beside it,
and the rounding rule fixed in one place.

Timestamps are stored UTC with an explicit type (`timestamptz` in PostgreSQL). Presentation
converts; storage does not.

Soft delete is a query-correctness liability: every later query and unique index must
account for it. Adopt it only when retention or audit actually requires it.

In MongoDB, embed for read-heavy one-to-few that is always fetched with its parent;
reference for unbounded, large, or independently queried collections. A document approaching
the 16 MB limit is a modeling failure surfacing late, not a sizing question.

## Migrations against a live table

A migration is a deployment event. Check row count and traffic before writing it.

Adding a `NOT NULL` column with a default, changing a column type, or adding an index
without the engine's concurrent path locks the table. Use `CREATE INDEX CONCURRENTLY`
(PostgreSQL) or the online DDL path (MySQL), and verify the engine's version actually
supports it for that operation.

Split a destructive change across deploys: add and backfill, dual-write, switch reads,
then drop. A single-step rename breaks every process still running the old code.

Every migration is reversible, or its irreversibility is stated where it is written.
Backfill in batches with a bound, never one statement across the whole table.

## Failures that reach production

N+1 queries — the dominant cause of a slow endpoint in an ORM codebase. Confirm with the
query log or the framework's debug output, not by reading the code.

A missing index on a foreign key or on a new query's filter column. Every new query pattern
is an index question at the time it is written.

`SELECT *` across a wide or joined table, then discarding most of it.

An unbounded result set, or pagination by `OFFSET` deep into a large table. Prefer a keyset
cursor on an indexed column.

Work inside a transaction that does not belong there: an HTTP call, a queue dispatch, a
file write. The lock is held for the duration of the slowest thing in the block.

A missing or wrong isolation level on a read-modify-write of a balance, inventory count, or
sequence. Use the database's locking primitive, not an application mutex.

Connection pool exhaustion under a queue worker or long-running job, with the symptom
appearing in the web tier rather than the job.

In MongoDB, an unindexed query — it will not warn the way a slow-query log does. Check
`explain()` on anything non-trivial before shipping it.

## Evidence before a claim

A performance claim needs the plan, not an opinion: `EXPLAIN (ANALYZE, BUFFERS)` in
PostgreSQL, `EXPLAIN ANALYZE` in MySQL, `explain("executionStats")` in MongoDB. Compare
before and after on realistic row counts; an index that helps at 100 rows proves nothing.

Report the measurement and the row count it ran against. A query tuned against an empty
development database is untested.
