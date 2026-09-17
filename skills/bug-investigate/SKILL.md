---
name: bug-investigate
description: Investigate and repair a reproducible software failure using evidence from the project, runtime, and tests. Use for bugs and regressions; do not guess fixes or weaken checks to hide a failure.
---

# Investigate a bug

Establish the observed behavior, expected behavior, reproduction, affected environment, and previous attempts. Read [debugging guidance](references/debug.md), [coding rules](../../rules/coding.md), [output rules](../../rules/output.md), and context-matched capabilities.

Inspect the narrowest relevant execution path, form and test a root-cause hypothesis, then make a focused repair. Preserve security, authorization, and money or data invariants. Ask when missing evidence or a business rule changes what counts as correct.

Verify the original failure and nearby affected behavior. Report the cause, change, evidence, and limits. Route broad structural issues to [arch-design](../arch-design/SKILL.md).
