# Agent roles

Agents are bounded workers, not skills. Assign a worker one outcome, relevant skill path, project context, file ownership, expected artifact, and verification.

| Role | Primary skill |
| --- | --- |
| Planner | `plan-do` |
| Architect | `arch-design` |
| Implementer | `code-implement` |
| Debugger | `debug-investigate` |
| Verifier | `test-verify` |
| Reviewer | `review-code` |
| UI or UX analyst | `ui-audit` or `ux-flow` |
| UI/UX audit-and-fix coordinator | `loop-ui-ux-audit-and-fix` |
| Code audit-and-fix coordinator | `loop-code-audit-and-fix` |

The lifecycle coordinator owns user questions, dependency order, integration, and final acceptance. Do not give two workers overlapping write ownership.
