---
name: change-review
description: Review a code change against its requirements, project conventions, and material risks. Use for evidence-backed findings and follow-up verification; do not rewrite the change unless implementation is requested.
---

# Review code

Inspect the requested behavior, diff or affected files, relevant project context, and available checks. Read [review guidance](references/review.md), [coding rules](../../rules/coding.md), [output rules](../../rules/output.md), and relevant capabilities.

Prioritize correctness, security, data integrity, compatibility, maintainability, and user-visible behavior. Tie each finding to concrete evidence and impact. Do not treat personal style preferences or speculative concerns as defects.

Report findings by severity with precise file context, verification evidence, and remaining uncertainty. Route supported repairs to [code-implement](../code-implement/SKILL.md) or [bug-investigate](../bug-investigate/SKILL.md).
