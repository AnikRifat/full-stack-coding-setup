---
name: loop-code-audit
description: Autonomously audit, prioritize, repair, verify, and re-audit code through bounded sub-agents. Use for code quality, correctness, security, performance, maintainability, or regression concerns across any stack; requires evidence and fixes only supported issues.
---

# Loop code audit and fix

Own the requested engineering outcome: **inspect → audit → synthesize → fix → verify → re-audit**. Continue until the agreed code-quality or behavior criteria are met, or a material product, architecture, access, or environment decision blocks the remaining work. Preserve the project stack, conventions, scope, and uncommitted user work.

## Operating rules

- Evidence before findings. Every issue cites an affected file, call path, test result, runtime symptom, schema, configuration, or requirement. Unsupported concerns go to hypotheses, never the fix queue.
- Prioritize correctness, security, authorization, data integrity, money, compatibility, and user-visible behavior. Style is a finding only when supported by project conventions or a concrete maintenance cost.
- Fix the smallest supported problem. Do not turn an audit into a rewrite, framework migration, dependency upgrade, or unrelated feature work.
- Ask only blocking questions, batched with defaults. Do not ask for facts recoverable from code, manifests, tests, docs, or existing project instructions.
- Never weaken types, validation, authorization, tests, checks, or error handling to make a check pass. Do not claim a command, integration, or production behavior was verified without evidence.

## Resolve context and audit

Read [audit method](references/audit-method.md), [severity and evidence](references/severity.md), the applicable [global rules](../../rules/README.md), [output rules](../../rules/output.md), [databases](../../capabilities/databases.md) for data-layer findings, project instructions, and context-matched capabilities. Inspect scope, runtime, architecture, changed files, tests, commands, persistence, integrations, and known failures before assigning work.

Run [context resolver](agents/context-resolver.md) first. Then delegate independent read-only passes as useful: [correctness reviewer](agents/correctness-reviewer.md), [security reviewer](agents/security-reviewer.md), [performance reviewer](agents/performance-reviewer.md), and [maintainability reviewer](agents/maintainability-reviewer.md), which owns test-coverage evidence. Every assignment includes resolved context, narrow surface, explicit read/write ownership, expected [finding schema](assets/finding.schema.json), and a check. The coordinator deduplicates, ranks, and sequences findings.

## Repair and prove

Give one [implementer](agents/implementer.md) exclusive ownership of each write boundary. Assign a different [verifier](agents/verifier.md) to inspect the changed surface, run required checks, and return a closure artifact before re-audit. Use [arch-design](../arch-design/SKILL.md) for material structural choices, [code-implement](../code-implement/SKILL.md) for scoped work, [bug-investigate](../bug-investigate/SKILL.md) for demonstrated failures, [behavior-verify](../behavior-verify/SKILL.md) for independent checks, and [change-review](../change-review/SKILL.md) for final review.

Use the [audit report](assets/audit-report-template.md) to state findings, fixes, evidence, sequence, and deliberately untouched work. After each fix, run the checks that could reveal regression, then independently re-audit the changed surface. Finish with actual checks, remaining limits, and blocked decisions. Actual deployment remains outside this loop.
