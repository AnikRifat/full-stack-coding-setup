---
name: code-implement
description: Implement an agreed software change using the repository's stack, conventions, and relevant checks. Use for scoped features or fixes; do not replace product discovery, architecture decisions, or verification with a scaffold.
---

# Implement code

Inspect the requested behavior, project context, affected code, and available commands. Read [implementation guidance](references/build.md), [coding rules](../../rules/coding.md), and only the relevant framework capability.

Implement the smallest clear change that preserves required behavior, authorization, data integrity, accessibility, and existing conventions. Keep scope contained; do not introduce dependencies, migrations, abstractions, or features without a demonstrated need.

Run meaningful checks for changed behavior. Route a material design decision to [arch-design](../arch-design/SKILL.md), a supported failure to [debug-investigate](../debug-investigate/SKILL.md), and a requested independent assessment to [review-code](../review-code/SKILL.md).
