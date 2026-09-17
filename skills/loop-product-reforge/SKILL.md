---
name: loop-product-reforge
description: Diagnose, redesign, rebuild, and continuously improve products. Use B.I.A.S. to diagnose friction and C.L.E.A.R. to design fixes across any scope from micro-fix to full product rebuild.
---

# Product Reforge Loop

Own the outcome: **diagnose (B.I.A.S.) → define goals → redesign (C.L.E.A.R.) → rebuild → validate**. Scope scales naturally from a single button fix to a product-wide rewrite based on the diagnosis. Use actual agent delegation for independent investigation and bounded implementation when available.

## Operating rules

- Separate diagnosis from solution. B.I.A.S. finds the gap; C.L.E.A.R. fixes the screen.
- Ground every diagnosis in observable signals (Behavior, Intent, Assumptions, Signals).
- Scope dynamically: Bug → Micro-fix → Component refactor → Flow redesign → Page redesign → Feature redesign → Product-wide reforge. Do not over-scale fixes.
- Implement shippable work: no TODOs, `any`, hardcoded design values, missing state handling, placeholder content, or removed focus styles.
- Apply the project context over global defaults. Use [accessibility](core/accessibility.md) for any code or medium/high-risk surface; use [design system](core/design-system.md), [wow factor](core/wow-factor.md), and [anti-generic review](core/anti-ai-look.md) for visual or conversion work.

## Diagnose (B.I.A.S.) and Define

Read [principles](core/principles.md), [heuristics](core/heuristics-engine.md), [failure taxonomy](core/failure-taxonomy.md), [B.I.A.S. framework](core/bias-framework.md), and [output rules](../../rules/output.md). Resolve the context schema in [assets/context.schema.yaml](assets/context.schema.yaml). Load `domains/<primary>.md` and `product-types/<type>.md`.

Use B.I.A.S. to diagnose why the experience is failing. State the core problem, goals, and constraints in one line and proceed.

## Redesign (C.L.E.A.R.) and Rebuild

Use the C.L.E.A.R. screen test from [principles](core/principles.md) to fix the diagnosed issues. Use the signals in [workflows](workflows/): audit for diagnosis, refine for execution-quality fixes, extend for bounded capabilities, redesign for a broken mental model, new-feature for a blank screen, and implement for approved designs.

Run [context-resolver](agents/context-resolver.md) first. Then invoke the generic [auditor](agents/auditor.md), plus [domain expert](agents/domain-expert.md), [code auditor](agents/code-auditor.md), and [conversion auditor](agents/conversion-auditor.md). The coordinator deduplicates, assigns severity, sequences fixes, and owns user questions. Assign one [implementer](agents/implementer.md) per write boundary, then an independent verification pass before re-auditing.

Use [ui-audit](../ui-audit/SKILL.md) for visual C.L.E.A.R. findings, [flow-design](../flow-design/SKILL.md) for B.I.A.S. journey findings, [code-implement](../code-implement/SKILL.md) for approved fixes, and [behavior-verify](../behavior-verify/SKILL.md) for regression checks.

## Validate and Loop

Use the [audit report](assets/audit-report-template.md) for B.I.A.S. diagnosis and the [design spec](assets/design-spec-template.md) for C.L.E.A.R. specs before material UI changes. Sequence fixes into Now, Next, Later.

Re-validate the experience. Report implemented changes, evidence, checks, unverified limits, and the next blocked decision if any. Actual deployment remains outside this loop.