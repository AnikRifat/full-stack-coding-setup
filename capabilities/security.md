# Security — trust boundaries, authorization, secrets, payment integrity

Selected when the task touches authentication, authorization, money, personal data, file
handling, or any input that crosses a trust boundary. [Coding rules](../rules/coding.md) 5,
6, 7, and 8 state the obligations in one line each; this file is how they are actually
satisfied and how they are actually broken.

Assume an expert operator: skip explaining SQL injection and XSS. What follows is the
decisions that are contested in real projects, and the failures that reach production in
this stack.

## Find the trust boundary before defending it

A trust boundary is any point where data or a request changes hands. Controllers, API
handlers, queue consumers, webhook endpoints, scheduled jobs reading external state, file
uploads, and admin-facing forms are all boundaries. So is a call to another internal
service — an upstream service is not trusted merely because it belongs to the same company.

Validate at every boundary, not once at the edge. A queue consumer reading a job payload
that a controller already validated still validates it: the payload may have been enqueued
by an older deployment, a retry, or a different caller.

Authorize the action and the object together. `Gate::allows('update', $order)` is an
authorization check; `auth()->check()` is not. A logged-in user asking for
`/orders/{id}` where `id` is another tenant's order is the single most common real
vulnerability in the kind of application built here, and it passes every test that only
asserts a 200 for an authenticated user.

Never take an identifier, a price, a quantity, a role, a status, or a total from the client
and use it as authority. The client may name which order; the server decides what that
order costs and who may see it.

## Authorization in Laravel, specifically

Policies own the decision. A controller that inlines `if ($order->user_id !== auth()->id())`
works until a second caller forgets it. Register the policy, call `authorize()`, and let the
framework fail closed.

Scope at the query, not after it. `Order::findOrFail($id)` followed by a policy check leaks
existence through timing and error shape; `auth()->user()->orders()->findOrFail($id)` cannot
return another tenant's row at all. For multi-tenant work, put the scope in a global scope
or a base query so that forgetting it is impossible rather than merely caught in review.

Mass assignment is an authorization problem, not a convenience problem. `$request->all()`
into `update()` lets a client set `is_admin`, `status`, or `balance` if the model's
`$fillable` ever drifts. Use `$request->validated()` with an explicit rule set.

Signed URLs, `Signature`-verified webhooks, and rate limits are authorization for callers
who have no session. Apply them to every endpoint that a session does not protect.

## Secrets

Real secrets live in `.env` and nowhere else — not in source, not in a committed config
file, not in a public client bundle, not in a log line, not in a checkpoint note, not in a
message shown back to the user. `.env.example` carries every required key with an empty or
obviously fake value, and is updated in the same commit that introduces a new key.

Sandbox and live credentials are separate variables, never one variable and a mode flag. A
flag is one typo away from charging a real card from a development machine; two variable
names cannot be confused by accident.

Anything client-exposed — `VITE_*`, `NEXT_PUBLIC_*` — is public. Treat a value placed there
as published the moment it ships, and rotate it if it was ever a secret.

A leaked secret is rotated, not deleted. Removing it from the working tree leaves it in
history, in CI logs, and in whatever cache pulled it; the only remedy that ends the exposure
is a new credential at the provider.

## Payment and webhook integrity

This is where the defensive default is mandatory rather than preferred.

Verify the signature before parsing the body, using the raw request body — a framework that
has already decoded and re-encoded JSON produces a different byte sequence and a failing
signature, which is then usually "fixed" by skipping verification. Use the provider's own
verification helper against the raw payload.

A client-side redirect is never proof of payment. The browser returning to `/success` means
the browser reached `/success`. The order is marked paid when the webhook is verified, or
when a server-side status call to the provider says so. Treat the gateway as the source of
truth and reconcile local state against it.

Handlers are idempotent because gateways retry on timeout, and will deliver the same event
more than once. Dedupe on the provider's event or transaction identifier, persisted with a
unique constraint so that concurrent deliveries collide in the database rather than both
succeeding. An `if (!$order->isPaid())` check is not idempotency; two simultaneous webhooks
both read "not paid".

Money is an integer in the currency's minor unit, or a decimal type the database enforces.
Never a float. `0.1 + 0.2` is a reconciliation ticket.

Log the transaction identifier and the resulting status. Never log the payload, the card
number, the token, or the CVV — not even while debugging, unless the environment is sandbox
and the log is ephemeral.

For SSLCommerz and bKash specifically, confirm which merchant account and which environment
a given project uses before touching its configuration. Several projects on this machine
integrate the same two gateways with different credentials, and the failure mode is silent:
the wrong sandbox account accepts the request and the money never appears.

## Uploads and untrusted files

The filename from the client is a suggestion, and may be `../../.env`. Generate the stored
name; keep the original only as a display label after sanitizing it.

The MIME type from the client is also a suggestion. Validate against actual file contents,
constrain the extension to an allowlist, and cap the size at the framework and the web
server, since the framework limit is reached only after the bytes have already been
uploaded.

User-uploaded files are not served from a path that executes code, and not from the
application's own origin when they can contain markup. A stored SVG is a stored XSS.

## Failures that reach production in this stack

An `IDOR` on a nested resource: the parent is authorized, the child is fetched by raw ID.

A `403` that leaks existence by differing from the `404` for a missing record — decide
deliberately which one an unauthorized request receives, and be consistent.

A debug facility left enabled: `APP_DEBUG=true` in production renders a stack trace with
environment values in it; Telescope, Horizon, and log viewers mounted without auth do the
same on purpose.

A webhook endpoint excluded from CSRF and then also excluded from signature verification,
so it accepts anything the internet sends it.

A rate limit on the login form but not on the password-reset, OTP, or token endpoint beside
it.

Personal data in application logs, exception trackers, and support tickets, where it long
outlives the retention policy it was supposed to be under.

A dependency with a known advisory left in the lockfile because the fix is a major version.
Record the decision and the exposure rather than leaving it undescribed.

## Evidence before a claim

A security claim needs a demonstration, not an assertion. The check that matters is a test
that authenticates as the wrong user and asserts the request is refused — write that test
for each new authorized route, because it is the only one that fails when a policy is
forgotten later.

For a dependency claim, run the ecosystem's audit (`composer audit`, `npm audit`) and report
what it said. For an authorization claim, name the policy and the test. For a payment claim,
show the idempotency constraint and the signature verification, and say which environment
the evidence came from.

Say plainly when something was not checked. An unverified security statement is worse than
an absent one, because it ends the investigation.
