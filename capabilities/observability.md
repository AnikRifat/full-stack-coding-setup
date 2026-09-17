# Observability

Read this when a bug only exists in production, when a change adds a failure mode nobody
would see, or when someone asks for monitoring. Not on every task — most work needs none of
it.

The question this capability answers is narrow: **can the cause of a failure be established
from what the system already records?** If not, the first fix is the recording, not a guess.

## Before instrumenting anything

Ask what already exists. Laravel ships a log channel, failed_jobs, and query logging;
hosting adds request logs; most projects have more signal than anyone reads. Adding a new
tool to a project with an unread log is adding a second unread thing.

Instrument to distinguish two live hypotheses. Instrumentation added "for visibility" with no
question attached is noise that costs money per month.

## What a request has to carry

One correlation id, generated at the edge, attached to every log line, queued job, and
outbound HTTP call the request causes. Without it a production trace is a guess across
timestamps, and async work is unattributable to whatever started it. This is the single
highest-value thing in this file and it is a few lines in middleware.

Log events, not sentences. A structured line with an id, an actor, an outcome and a duration
can be filtered; `Log::info("Something went wrong")` cannot. Never log a card number, a token,
a password, or a full request body that could contain one — see
[security](security.md).

Errors go to something that aggregates and alerts, not only to a file that must be opened over
SSH. What matters is that an error reaches a human without anyone looking for it.

## Money and async need more

A payment path needs enough record to answer "what did the provider actually say" days later:
the gateway reference on the local record, the webhook receipt logged with its id, and a
reconciliation that can be run on demand. The gateway is the source of truth — an ledger that
cannot be compared to it is decorative.

Queued work needs the depth and the age of the oldest waiting job, not just a throughput
number. A queue that drains fine at low volume and silently falls behind is the failure
[messaging](messaging.md) describes; only depth-over-time shows it.

## Alerting

Alert on symptoms a user feels — error rate, checkout failures, queue age, a job that stopped
running — not on CPU. An alert nobody acts on gets muted, and a muted channel hides the real
one. Every alert names what the receiver should do.

Where a service level is genuinely promised to a client, state it as a target with a window
("checkout succeeds for 99% of attempts over 30 days") and measure that number. Where nothing
is promised, do not invent an SLO to look rigorous.

## Incidents

Restore first, diagnose second, but keep enough evidence to diagnose: capture the error, the
correlation ids, and the current state of affected records **before** repairing them. A
repair that overwrites the evidence ends the investigation.

Diagnosis does not authorize repair. Replaying payments, mass-updating records, or messaging
customers is a separate decision Anik makes — [bug-investigate](../skills/bug-investigate/references/debug.md)
holds that boundary.

Afterwards, record the cause and the signal that would have caught it earlier. That missing
signal is the only instrumentation worth adding reactively.
