# Debugging and incident diagnosis

Status: proposed starting method. Personal incident and debugging habits still need examples.

Begin with the actual symptom, expected behavior, affected environment, and available evidence. In a codebase, inspect the failing path and related project instructions. If reproduction is possible within the user's scope, reproduce before making a causal claim.

Keep observations and hypotheses separate. Choose the next check because it distinguishes likely causes, not because it adds general instrumentation. Prefer the project's existing logs, tests, and diagnostic tools.

When the failure only exists in production, or the evidence needed to distinguish two hypotheses does not exist yet, read [observability](../../../capabilities/observability.md) before proposing instrumentation — and capture the error, correlation ids, and current state of the affected records before any repair overwrites them.

Make a fix supported by the root-cause evidence, then check the original failure and any important related behavior. If evidence remains incomplete, state what is known and which observation would resolve the uncertainty.

For production incidents, establish which read and write actions the user authorized. Diagnosis does not authorize destructive repair, replaying payments, messaging customers, or changing unrelated systems.

## Useful outcome

Explain the cause, why the change addresses it, verification performed, and any residual uncertainty. Capture a reusable debugging lesson only when asked, using [personalize.md](../../loop-delivery/references/personalize.md); do not make an environment-specific repair a universal rule.
