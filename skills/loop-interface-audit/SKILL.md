---
name: loop-interface-audit
description: Autonomously audit, prioritize, fix, and verify UI and UX issues through a context-aware, sub-agent-driven loop. Use for confusing, low-converting, generic, inaccessible, or incomplete product interfaces; separates visual UI from behavioral UX and ships evidence-backed fixes.
---

# Loop UI/UX audit and fix

Own the outcome: **resolve context → audit → synthesize → fix → verify → reassess**. Continue until agreed issues are fixed and verified, or a material product decision blocks the remaining work. Use actual agent delegation for independent investigation and bounded implementation when it is available; otherwise run the same passes sequentially and label them clearly.

## Operating rules

- Give one recommendation and at most one alternative. Ground every finding in a route, file, copy string, screenshot region, data shape, or business rule.
- Name the violated principle and its user and business cost before prescribing a fix. Prefer **refine → extend → redesign**; redesign needs the scope test in [workflows/redesign.md](workflows/redesign.md).
- Ask only blocking questions, in one batch of at most five, each with a default assumption. Infer domain, stack, and existing rules from artifacts before asking.
- Implement shippable work: no TODOs, `any`, hardcoded design values, missing state handling, placeholder content, clickable `div`s, or removed focus styles.
- Apply the project context over global defaults. Use [accessibility](core/accessibility.md) for any code or medium/high-risk surface; use [design system](core/design-system.md), [wow factor](core/wow-factor.md), and [anti-generic review](core/anti-ai-look.md) for visual or conversion work.

## Resolve context first

Read [principles](core/principles.md), [heuristics](core/heuristics-engine.md), [failure taxonomy](core/failure-taxonomy.md), and [output rules](../../rules/output.md). Resolve the context schema in [assets/context.schema.yaml](assets/context.schema.yaml) from routes, components, models, APIs, copy, screenshots, URLs, and project instructions. Products may have multiple domains; load `domains/<primary>.md` and each supported secondary domain, then `product-types/<type>.md`, `workflows/<chosen>.md`, and matching `engineering/*.md`. Use `domains/generic.md` only when evidence does not support a more specific model. These domain and product-type references are shared, not private to this loop: [domains.md](../loop-delivery/references/domains.md) selects them for non-UI work, and [architecture selection](../arch-design/references/selection.md) carries the structural consequence of the same framing.

State the framing in one line and proceed. Stop for confirmation only when the primary domain confidence is below 0.6 or a missing product rule changes a high-risk decision.

## Choose workflow and delegate

Use the signals in [workflows](workflows/): audit for diagnosis, refine for execution-quality fixes, extend for a bounded capability, redesign for a broken mental model, new-feature for a blank screen or flow, and implement for an approved design.

Run [context-resolver](agents/context-resolver.md) first. Then invoke the generic [auditor](agents/auditor.md) separately for flow and visual scopes, plus [domain expert](agents/domain-expert.md), [code auditor](agents/code-auditor.md), and [conversion auditor](agents/conversion-auditor.md) for storefronts. Every assignment includes the resolved context, narrow surface, read/write ownership, required finding schema, and check. Each worker returns evidence only; the coordinator deduplicates, assigns severity, sequences fixes, and owns user questions. Assign one [implementer](agents/implementer.md) per write boundary, then an independent verification pass before re-auditing affected work.

Use [ui-audit](../ui-audit/SKILL.md) for visual findings, [flow-design](../flow-design/SKILL.md) for user-journey findings, [code-implement](../code-implement/SKILL.md) for approved fixes, and [behavior-verify](../behavior-verify/SKILL.md) for regression checks. Load the matching [engineering guidance](engineering/) for frontend code.

## Deliver and repeat

Use the [audit report](assets/audit-report-template.md) for diagnosis and the [design spec](assets/design-spec-template.md) before material UI changes. Sequence fixes into Now, Next, and Later; explicitly state what is not changing and why. Each completed fix needs a check that could expose regression. Re-audit affected flows and states before finishing.

Actual deployment remains outside this loop. Report implemented changes, evidence, checks, unverified limits, and the next blocked decision if any.
