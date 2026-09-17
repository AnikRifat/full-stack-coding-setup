# Selecting an architecture from the solution domain

Read with [architecture.md](architecture.md) when a new project, or a material
restructuring, needs a starting shape. This file answers one question: what does knowing
the domain actually entitle you to decide?

## The domain does not select the architecture

It selects the requirements, and the requirements select the architecture:

```
domain          → vocabulary, actors, invariants, regulatory duties, cost of failure
    ↓
requirements    → workload, isolation, consistency, integration, team, test coverage
    ↓
architecture    → boundaries, data ownership, deployment shape
```

Skipping the middle step is how a brochure site for a logistics company becomes a
distributed system. "Ecommerce" tells you money is involved, so idempotency and
reconciliation are not negotiable — it does not tell you monolith or services. Traffic,
team size, and whether one area genuinely has its own vocabulary tell you that.

The one thing the domain decides directly is **which invariants must hold even when no test
defends them**. In a domain where a violated invariant costs money or trust — a balance, a
stock count, a booking slot, a payment state — that invariant belongs in the database as a
constraint, not in application code, regardless of the structure chosen around it.

## Start here, and make the project argue upward

The default is a conventional framework application: Laravel with Blade and Livewire,
normal framework mechanisms, one deployable. Every step away from it needs a named
requirement and a stated trade-off.

| Move away from the default | Only when |
| --- | --- |
| Separate frontend (Next.js) | A demonstrated frontend need: SEO-critical rendering the framework cannot serve, an app-like interaction model, or a second consumer of the same API that already exists |
| API-first backend | A second client is real and funded — a mobile app, a partner integration, an existing frontend team — not anticipated |
| Domain folders over flat services | The business has genuinely separate areas with their own vocabulary, **and** a cross-domain call rule will actually be enforced |
| A separate service | A part has a different scaling profile, a different availability requirement, or a compliance boundary that a module cannot express |
| A queue | Work is genuinely slow or unreliable, and the user does not need its result in the response |
| A read model separate from the write path | Query shape and write shape have actually diverged and the join is measurably the bottleneck |
| Multi-tenancy | More than one tenant exists or is contracted. Retrofitting it is expensive; building it for one customer is speculative |

`architecture.md` records what the failure looks like: nineteen domain folders with no rule
about who may call whom is the flat service layer with longer paths.

## Starting shape by product type

The product type — not the industry — is what narrows the shape. Use
[domains.md](../../loop-delivery/references/domains.md) to establish both, keeping them
distinct: a logistics company may need a corporate site, an operational system, or both.

| Product type | Starting shape | The decision that actually varies |
| --- | --- | --- |
| Portfolio, business showcase, corporate site | Laravel + Blade, Livewire only where interaction needs it | Whether content is editable by the client at all — that alone introduces auth, an admin surface, and uploads |
| Storefront / ecommerce | Monolith; money and inventory invariants in the schema | Idempotent payment handling and stock decrement under concurrency — before catalog features |
| ERP / operational system | Modular monolith; domain folders when vocabularies genuinely differ | Who owns which record, and which transitions are legal — the state machine precedes the screens |
| B2B SaaS | Monolith; tenancy enforced at the query layer | Tenant isolation is a data decision before it is a structural one; a forgotten scope is the breach |
| Dashboard / analytics | Read path separated from the write path | Query shape and refresh cadence; whether stale data is acceptable and for how long |
| Admin panel over an existing system | No new architecture — it is a client of the existing one | Whether it may write directly to those tables, or must go through the owning application |
| Mobile app | API-first backend | Distribution route and offline requirements; offline sync is a different architecture, decided now or not at all |

A product can be more than one of these. Say which part is which rather than picking one
label for the whole engagement.

## What each domain obliges regardless of shape

These survive every structural choice, so establish them before the structure.

| Domain signal | Non-negotiable |
| --- | --- |
| Money moves | Exact money representation, verified webhook authenticity, idempotent handlers, reconciliation against the provider — [security](../../../capabilities/security.md) |
| Stock, seats, slots, balances | The invariant enforced by a database constraint and the correct locking primitive, not application logic |
| Personal or regulated data | Named trust boundaries, data retention decided, nothing sensitive in logs |
| Multiple organizations share the system | Tenant scope that cannot be forgotten — base query or global scope, not a `where` per call site |
| An external system is the source of truth | Explicit reconciliation, and a defined answer for what happens when it disagrees |
| Staff operate it daily | The operator journey is a first-class requirement, not an admin afterthought |

## Test coverage changes the recommendation

`architecture.md` states this as an architectural fact; it is also a selection input. Read
the ratio of test files to migrations before proposing structure. Where a project has
effectively no tests, the recommendation shifts: fewer moving parts, stricter database
constraints, invariants pushed into the schema where the application has nothing to defend
them. A structure that assumes a regression will be caught is wrong in that project.

## Record the decision

State the chosen shape, the requirement that selected it, and the signal that would change
it. One short record in the project's architecture notes — not a formal document per
component. Then feed it to [delivery-plan](../../delivery-plan/SKILL.md) and
[code-implement](../../code-implement/SKILL.md), and revise it when implementation evidence
contradicts it.
