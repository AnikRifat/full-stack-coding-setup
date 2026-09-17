---
name: behavior-verify
description: Verify requested software behavior with the most meaningful checks available in the current project. Use for test design, focused validation, and release-readiness evidence; do not claim coverage or production success without evidence.
---

# Verify behavior

Inspect the acceptance criteria, affected paths, existing tests, project commands, and environment limits. Read [verification method](references/verify.md) and [coding rules](../../rules/coding.md).

Choose checks that exercise the changed behavior and its material guarantees. Prefer existing project tooling and narrow tests before broad suites when that provides sufficient confidence. Add or update tests only when they meaningfully protect the requested behavior.

Report executed commands, outcomes, unverified paths, and any blocked dependency. Route a demonstrated failure to [bug-investigate](../bug-investigate/SKILL.md); use the lifecycle handover method only for an overall deploy-ready outcome.
