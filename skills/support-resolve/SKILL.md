---
name: support-resolve
description: Resolve a customer's reported confusion, bug, or enhancement request and answer in two separated parts. Use for client-facing support tickets; produces a client reply in business language plus an internal technical record, and does not send, publish, or promise anything on the client's behalf.
---

# Handle a support request

Establish what the customer actually observed, on which product and environment, and when it started. Classify the request as **confusion** (the product works, the expectation was wrong), **bug** (behavior contradicts the intended design), or **enhancement** (behavior is correct, the customer wants different behavior). Say which, because the three have different resolutions: confusion is answered, a bug is repaired, an enhancement is scoped.

Inspect the real code, logs, and data path before answering. Route a reproducible failure through [bug-investigate](../bug-investigate/SKILL.md), an agreed change through [code-implement](../code-implement/SKILL.md), a flow or wording problem through [flow-design](../flow-design/SKILL.md), and a visual or component defect through [ui-audit](../ui-audit/SKILL.md). Verify the repair with [behavior-verify](../behavior-verify/SKILL.md) before reporting it resolved. Apply [coding rules](../../rules/coding.md) to any repair; payment, authorization, and personal-data paths keep their guarantees under support pressure too.

Ask the customer for missing evidence when it changes the diagnosis. Do not guess a cause to produce a faster reply.

## Required output shape

Always answer in these two parts, in this order, with no internal detail crossing into the first.

### For the client

Plain business language. What they reported, whether it is a bug, a misunderstanding, or a new request. What the impact is on their data, orders, money, or users. What is being done and what is expected of them. State a status honestly: resolved, in progress with a dependency, or not a defect. No file names, stack traces, internal service names, credentials, or other customers' information.

### Internal

Root cause with the evidence that proves it — the file, query, payload, or log line. The change made or the change proposed. Verification actually run, and its limits. Follow-up work, regression risk, and anything to record as a recurring pattern. This part is for Anik and is never pasted to the client.

## Boundaries

Report the reply; do not send it. Do not commit to a date, a refund, a discount, a rollout, or a contractual remedy — those are Anik's decisions, so surface them as a recommendation in the internal part. An unverified fix is reported as unverified in both parts.
