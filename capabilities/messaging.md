# Messaging — queues, events, and async workflows

Selected when work moves off the request path: background jobs, queue consumers, event
publication, webhooks out, or a workflow spanning more than one service. The project's
existing broker and job tooling win over everything here.

Assume an expert operator: skip explaining what a queue is. What follows is the decision
points that are actually contested, and the failures that reach production.

## Picking the transport

Only for a new integration. Never relitigate an existing choice.

| Signal | Transport |
| --- | --- |
| Laravel app, work is jobs the same app will run | `database` or Redis queue — the framework's own driver |
| Independent consumers, routing by key, per-message ack, retry and DLQ semantics | RabbitMQ |
| Replay matters, multiple independent consumers read the same stream at their own offset, retention is measured in days | Kafka |
| Cloud-managed, low volume, no ordering requirement | SQS or the platform's native queue |

Default down this table, not up. A `jobs` table serves more production systems than its
reputation suggests, and it is transactional with the data the job is about — which Redis,
RabbitMQ and Kafka are not. Reach for a broker when the consumer is a separate deployment,
or when the volume genuinely exceeds what a polled table sustains.

Kafka is not a queue with better throughput. It is a retained log, and choosing it buys
partition-key design, consumer-group rebalancing, offset management and a retention policy.
Choose it when replay or fan-out to independent readers is the requirement. Do not choose
it for a job queue.

## What breaks in production

**The dual write.** The handler commits the database transaction and then publishes the
event. The publish fails, or the process dies between the two, and the system is now
inconsistent with no error anywhere. Write the event to an `outbox` table inside the same
transaction as the state change, and publish from the outbox in a separate process. If the
dual write is deliberately accepted, say so and name what reconciles it.

**Enqueue inside an open transaction.** The job runs, reads the row, and it is not committed
yet. The failure is timing-dependent and disappears in testing. Dispatch after commit, or
enqueue from the outbox.

**`if (!$order->isPaid())` as idempotency.** Two deliveries pass the check simultaneously and
both proceed. Idempotency is a unique constraint on a message or idempotency key, or a
conditional update whose affected-row count is checked — not a read followed by a write.
This holds for every consumer, not only payments: gateways, brokers and schedulers all
redeliver.

**Retry without a ceiling.** A consumer that retries forever on a permanently bad message
blocks the queue and amplifies load against a dependency that is already failing. Separate
the retryable failure (timeout, 503, lock contention) from the permanent one (validation,
404, malformed payload). Retry the first with backoff and a bounded attempt count; send the
second to a dead-letter queue immediately.

**A dead-letter queue nobody reads.** A DLQ with no alert is a silent data-loss channel.
Either its depth is monitored, or it is not a mitigation.

**Assumed ordering.** Concurrent consumers, retries, and multiple partitions all reorder
messages. Where ordering is a real requirement, it is bought explicitly — a partition key
for Kafka, a single consumer for a routing key in RabbitMQ — and that choice caps throughput.
Where it is not, consumers tolerate out-of-order arrival: carry a version or timestamp and
discard the stale message.

**Unvalidated payloads.** A message is external input at the point it is consumed, even when
the publisher is your own code. It may have been enqueued by an older deployment whose
schema differed. Validate in the consumer.

**Payload as a data carrier.** A message carrying a full serialized entity goes stale between
publish and consume, and couples the consumer to the producer's schema. Carry identifiers
and the facts that were true at the moment of the event; let the consumer read current state.

## Events versus commands

A command names an action for one known handler (`SendReceipt`). An event names a fact that
already happened, with no expectation about who reacts (`OrderPaid`). Mixing them produces
an event whose publisher secretly depends on one specific subscriber — coupling with none of
the benefits of a direct call.

Name events in the past tense. If the name reads as an instruction, it is a command, and a
direct call may be the simpler and more honest design.

## Multi-step workflows

When a workflow spans services and one step fails after an earlier step committed, there is
no transaction to roll back. Either each step has a compensating action (refund the payment,
release the reservation), or the workflow is restructured so the irreversible step is last.

Do not introduce a saga or an orchestrator for a workflow that fits in one local transaction.
Two services and one compensating action need a documented failure path, not a framework.

## Verification

An async path is not verified by a green unit test on the handler. What is worth proving:
the same message delivered twice produces one effect; a failing message reaches the DLQ
rather than looping; the consumer's validation rejects a payload from an older schema.

Test the consumer directly with a constructed payload. Where the broker itself is the thing
in question, say plainly that the check was not run against real infrastructure.

## Reporting

State the transport, the delivery guarantee assumed, where idempotency is enforced, and what
happens to a message that fails permanently. If the outbox was skipped, name the window in
which state and event can disagree.
