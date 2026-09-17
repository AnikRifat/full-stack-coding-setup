# Agent roles

Agents are bounded workers, not skills. Assign a worker one outcome, relevant skill path, project context, file ownership, expected artifact, and verification.

| Role | Primary skill |
| --- | --- |
| Planner | `delivery-plan` |
| Architect | `arch-design` |
| Implementer | `code-implement` |
| Debugger | `bug-investigate` |
| Verifier | `behavior-verify` |
| Reviewer | `change-review` |
| UI or UX analyst | `ui-audit` or `flow-design` |
| UI/UX audit-and-fix coordinator | `loop-interface-audit` |
| Code audit-and-fix coordinator | `loop-code-audit` |
| Support responder | `support-resolve` |

The lifecycle coordinator owns user questions, dependency order, integration, and final acceptance. Do not give two workers overlapping write ownership.
