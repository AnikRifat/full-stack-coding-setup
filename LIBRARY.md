# AI-assisted development skill library

This is a cross-stack, reusable library for AI-assisted developers. It is a workflow system, not a fixed project template. It separates reusable constraints, task methods, commands, worker roles, runtime tools, and project-specific context.

```mermaid
flowchart TD
    Rules[Rules: global constraints] --> Skills[Skills: task methods]
    Capabilities[Capabilities: stack knowledge] --> Skills
    Context[Project context] --> Skills
    Skills --> Commands[Commands: user-facing triggers]
    Skills --> Agents[Agents: bounded workers]
    Tools[Runtime tools] --> Agents
```

## Skills

| Skill | Responsibility |
| --- | --- |
| [loop-zero-to-production](skills/loop-zero-to-production/SKILL.md) | Iterative idea-to-deploy-ready lifecycle |
| [loop-ui-ux-audit-and-fix](skills/loop-ui-ux-audit-and-fix/SKILL.md) | Autonomous UI/UX audit, fix, and verification loop |
| [loop-code-audit-and-fix](skills/loop-code-audit-and-fix/SKILL.md) | Autonomous code audit, repair, and verification loop |
| [init-this-pc](skills/init-this-pc/SKILL.md) | Global Codex/Claude scratch environment |
| [init-this-project](skills/init-this-project/SKILL.md) | Specific project initialization |
| [plan-do](skills/plan-do/SKILL.md) | Goal-driven delivery planning |
| [arch-design](skills/arch-design/SKILL.md) | Architecture decisions |
| [code-implement](skills/code-implement/SKILL.md) | Scoped implementation |
| [debug-investigate](skills/debug-investigate/SKILL.md) | Evidence-based debugging and repair |
| [test-verify](skills/test-verify/SKILL.md) | Behavior verification |
| [review-code](skills/review-code/SKILL.md) | Evidence-backed code review |
| [ui-audit](skills/ui-audit/SKILL.md) | Visual interface audit |
| [ux-flow](skills/ux-flow/SKILL.md) | User-flow and usability decisions |

`loop-zero-to-production` is the only lifecycle loop. Its cycle is inspect, decide, delegate or act, verify, evaluate, then repeat until the requested finish line is met. It coordinates product framing and deploy-ready handover as internal methods. Actual deployment remains excluded.

## Supporting layers

- [Rules](rules/README.md) contain global constraints such as coding correctness, simplicity, and engineering principles.
- [Capabilities](capabilities/README.md) contain technology-specific knowledge. They are selected from the repository's actual stack and never define a universal workflow.
- [Commands](commands/README.md) map `$skill-name` triggers to task skills.
- [Agent roles](agents/README.md) define bounded workers. A skill is a method; an agent is a worker assigned to use one.
- [Tools](tools/README.md) are inspected at runtime rather than presumed in the library.
- [Context precedence](context/README.md) defines global defaults versus project facts.

## Defaults and boundaries

For a new business portfolio without an established stack, Laravel with Blade and Livewire is the starting recommendation. Existing stack and project instructions win. Next.js is considered when the actual workload and frontend needs justify it.

Use `$loop-ui-ux-audit-and-fix` when an interface needs a complete autonomous audit-and-fix cycle with bounded sub-agents. Use `$ui-audit` for a visual-only audit and `$ux-flow` for a journey-only analysis. They are intentionally separate.

Use `$loop-code-audit-and-fix` for a complete engineering audit-and-fix cycle. Use the individual architecture, implementation, debugging, verification, and review skills for a narrow outcome.

Use `$code-implement` for a clear scoped change, `$debug-investigate` for a supported failure, `$test-verify` for verification, and `$review-code` for assessment. Use `$arch-design` only when the boundary or structure is material.

The source library is this workspace. Its installed copies live under `~/.codex/skills/`. Synchronize the owned bundle after edits because task skills link to shared rules and capabilities. No application, deployment, or production operation is implied by this library.
