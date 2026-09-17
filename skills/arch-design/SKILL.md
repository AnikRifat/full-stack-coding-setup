---
name: arch-design
description: Design or revise a software architecture from the actual project context, constraints, and user journey. Use for material boundaries, data flow, integration, or scale decisions; do not implement unrelated features.
---

# Architecture design

Inspect the repository, project context, requirements, and existing conventions before proposing a boundary or pattern. Read [architecture guidance](references/architecture.md), [core rules](../../rules/coding.md), [output rules](../../rules/output.md), and only the capability guidance that matches the actual stack.

Recommend the smallest architecture that meets the current goal. State decisions, trade-offs, interfaces, data ownership, failure handling, and verification implications. Ask immediately when a missing product rule, operational constraint, or target environment would materially change the design.

Return a reviewable design or focused change plan. Route implementation to [code-implement](../code-implement/SKILL.md), planning to [delivery-plan](../delivery-plan/SKILL.md), and product ambiguity to the lifecycle coordinator's product method.
