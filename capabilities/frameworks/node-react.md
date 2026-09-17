# Node/Express and standalone React

Selected when the project already runs on Node, or when a React SPA sits in front of a
separate API. For a Next.js application read [nextjs.md](nextjs.md) instead — the boundaries
and traps are different.

Anik works in these but calls them partial skills next to PHP/Laravel. Explain the non-obvious
idiom when it comes up; skip the basics.

## Choosing this stack

Do not. Preserve what the project already runs on. Where there is genuinely no established
stack, the Laravel default in [laravel-livewire.md](laravel-livewire.md) holds, and the case
for Node has to be made from a requirement — an existing MERN codebase, a team already on it,
a websocket or streaming workload that fits Node's model, or a shared TypeScript contract
between client and server that is actually being used.

"It's JavaScript on both sides" is not a requirement. The shared language pays off only where
types are genuinely shared; two separately maintained type definitions are two codebases with
extra steps.

## What Laravel gives free that Express does not

This is where the Laravel-shaped instinct silently fails. Express is a routing library, not a
framework, and every item below is present in Laravel and absent until someone adds it:

- **Request validation.** No `FormRequest`. Without Zod, Valibot or equivalent at the route
  boundary, `req.body` is whatever was sent. Validate and parse into a typed value at the
  edge, once.
- **Authorization.** No policies, no gates. A middleware that checks authentication is not
  authorization; the per-record check has to exist somewhere and is usually the thing missing.
- **Errors.** An exception thrown in an async handler does not reach Express's error
  middleware unless it is forwarded. On Express 4 that means wrapping or `next(err)`; Express
  5 handles rejected promises from async handlers. Know which major version the project is on
  before assuming. There is no default error handler that does anything useful — without one,
  a stack trace goes to the client.
- **Transactions.** No `DB::transaction`. Prisma, Knex and the `pg` client each have their own
  shape, and a transaction spanning several awaits needs the same connection passed through —
  not the pool. A query that silently takes a different connection is not in the transaction.
- **Config.** No `config/`, no cast env values. `process.env` values are strings; `"false"` is
  truthy. Parse the environment once at boot and fail loudly on a missing required value.
- **Queues and schedule.** No `php artisan queue:work`, no scheduler. BullMQ or an equivalent
  is a deliberate addition — see [messaging](../messaging.md) for what the consumer owes.

Assume none of these exist until seen in the code. Most Express codebases have some.

## Express specifics

Route order is execution order, so a wildcard registered before a specific route swallows it.
Async middleware that forgets `await` or `next()` hangs the request until timeout with no error.

One process, one thread for JavaScript. A synchronous loop over a large array, a large
`JSON.parse`, or synchronous crypto blocks every concurrent request — not just the one. This
is the failure mode that does not exist in PHP-FPM, where each request has its own process.
CPU-bound work belongs in a worker thread or a queue.

Because the process is long-lived, state persists between requests. A module-level variable is
shared by every user and survives until restart. In PHP it would be discarded. This is how
request data leaks between users, and how a memory leak accumulates instead of being swept
away each request.

Unhandled promise rejections terminate the process on modern Node. Fine under a supervisor
that restarts it, fatal if in-flight work is lost. Shut down on a signal by draining in-flight
requests before exiting.

## Standalone React

The boundary that matters: server state is not client state. Data fetched from the API needs
caching, invalidation, retry and staleness handling, and hand-rolling that in `useEffect` is
the most common source of the duplicate-request and stale-render bugs in these codebases.
Where the project already has TanStack Query or equivalent, use it. Where it does not, say
plainly what is being rebuilt before adding one.

`useEffect` is for synchronizing with something outside React. Deriving a value from props or
state does not need one — compute it during render. An effect that sets state that another
effect depends on is a render loop waiting for the right timing.

Auth tokens in `localStorage` are readable by any script on the page. An httpOnly cookie is
the safer default; where a token must be held in JS, say so as a trade-off rather than a
default. Never put a secret in a `VITE_`/`REACT_APP_` variable — those are compiled into the
bundle and shipped to every visitor. This is the same rule as
[coding.md](../../rules/coding.md) on client-exposed environment variables, and it is
violated most often here.

Validation in the React form is UX. It is not security. The same rules exist server-side or
they do not exist.

## Verification

Check which test runner the project actually uses — Vitest, Jest, `node:test` — rather than
assuming. For an API, a test that exercises the route through the HTTP layer catches the
middleware ordering and validation gaps that a direct handler call misses. For React,
test what the user does with the component, not its internal state.

Run the project's own type, lint and build commands. A passing `tsc` proves types agree; it
proves nothing about behavior.
