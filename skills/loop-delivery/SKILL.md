---
name: loop-delivery
description: Run Anik's idea-to-MVP or software delivery as an interactive, goal-driven loop with connected micro-skills and bounded sub-agents. Coordinate project initialization, implementation, and verification; ask material questions immediately, and finish at verified deploy-ready handover. Use for end-to-end lifecycle ownership; actual deployment is excluded.
---

# Loop Zero to Production

Own the requested outcome through **goal → inspect → ask → delegate and execute → verify → reassess**. Keep looping until the acceptance criteria are satisfied or required input prevents further useful progress. Ask Anik about material uncertainty as soon as it is discovered; use evidence and project conventions for routine decisions.

Default substantive micro-skill work to bounded sub-agent tasks when the host exposes delegation and useful work can run independently alongside the coordinator. Parallelize independent tasks; respect dependencies and write ownership. The coordinator owns the overall goal, immediate user interaction, task assignments, integration, and final verification. Read [delegation.md](references/delegation.md) before dispatching work.

The full-delivery finish line is a verified project ready to deploy, with useful local setup and handover. Actual deployment, infrastructure provisioning, production migrations, and rollout operations remain excluded. Preserve the existing stack, requested scope, previous answers, and authorization.

## Run the goal loop

1. Establish the active goal, observable acceptance criteria, project root, current stage, and already granted authorization. Start from existing work rather than restarting discovery.
2. Inspect relevant artifacts and unresolved dependencies. Ask material questions immediately with a recommendation and the trade-off; do not wait for the end of a phase or for all agents to finish. Keep only dependent work pending.
3. Choose increments by contribution to the goal and dependencies. Read the selected micro-skill's entry point and provide its path and applicable context in each bounded agent brief.
4. Dispatch useful independent tasks within available capacity. Assign explicit write ownership and checks; keep dependent or overlapping writes serial. While agents work, handle questions, inspect independent evidence, prepare integration, or complete necessary coordinator work.
5. Receive concrete artifacts and verification evidence. Inspect the outcome, integrate compatible results, and run relevant combined checks. An agent's completion message alone is not acceptance.
6. Use results and Anik's new answers to update decisions and assignments, fix supported failures, and choose the next unmet increment. Reuse idle agents where appropriate; do not multiply agents for every tool call.
7. Finish only when the overall criteria and applicable checks are satisfied. A plan, scaffold, or delegated code edit is an intermediate result for a larger delivery request. If useful progress depends on missing input, report what is ready and the precise dependency.

For substantial work, read [operating-loop.md](references/operating-loop.md) for goal state, checkpoints, immediate questions, stage transitions, and completion. Small tasks use proportional state and execution. The loop is active-task orchestration, not a recurring scheduler or an automatically created persistent host goal.

## Select the next micro-skill

Read [profile.md](references/profile.md) for confirmed defaults and unknowns. Preserve context through [handoff.md](references/handoff.md); select by the next unmet outcome:

| Outcome | Micro-skill |
| --- | --- |
| PC, Codex, or Claude scratch-environment setup | [machine-init](../machine-init/SKILL.md) |
| Blank or instruction-only project setup | [project-init](../project-init/SKILL.md) |
| Client discovery, reference adaptation, MVP scope, iteration | This coordinator, using the [product method](references/product-method.md) |
| Goal-driven acceptance criteria, executable increments, dependencies | [delivery-plan](../delivery-plan/SKILL.md) |
| Architecture decisions | [arch-design](../arch-design/SKILL.md) |
| Scoped implementation | [code-implement](../code-implement/SKILL.md) |
| Bug investigation and repair | [bug-investigate](../bug-investigate/SKILL.md) |
| Behavior verification | [behavior-verify](../behavior-verify/SKILL.md) |
| Code review | [change-review](../change-review/SKILL.md) |
| Complete UI/UX audit, repair, and re-verification | [loop-interface-audit](../loop-interface-audit/SKILL.md) |
| Complete code audit, repair, and re-verification | [loop-code-audit](../loop-code-audit/SKILL.md) |
| Visual UI audit | [ui-audit](../ui-audit/SKILL.md) |
| User-flow and behavioral UX work | [flow-design](../flow-design/SKILL.md) |
| Verified deploy-ready handover | This coordinator, using the [delivery handover method](references/delivery-handover.md) |
| Customer-reported issue needing a client reply | [support-resolve](../support-resolve/SKILL.md) |
| Capture or refine Anik's own methods | [personalize.md](references/personalize.md) |

A skill defines the method; a sub-agent performs an assigned task using it. These sibling skills do not each require a permanent agent. When delegated, agents return their phase result to this coordinator rather than restarting the lifecycle or recursively dispatching agents. A directly invoked micro-skill retains its own requested finish line and uses the [delegation policy](references/delegation.md) proportionally.

## Apply engineering defaults

Engineering agents apply their task-specific skills with [coding rules](../../rules/coding.md), [simplicity](../../rules/simplicity.md), and [Karpathy-inspired principles](../../rules/engineering-principles.md). Task skills keep architecture, implementation, debugging, verification, review, UI, and UX responsibilities separate. Simplicity preserves requested behavior, security, money invariants, accessibility, and useful checks.

For a new business portfolio without a chosen stack, default to Laravel + Blade + Livewire using the [Laravel capability](../../capabilities/frameworks/laravel-livewire.md). Consider the [Next.js capability](../../capabilities/frameworks/nextjs.md) when demonstrated scalability and frontend requirements justify it; explain the relevant trade-off. Preserve existing stacks and explicit choices.

Give recommendations grounded in evidence. Distinguish confirmed preferences, situational requirements, and proposed methods. Read the actual project's instructions and code; use available specialist capabilities only when useful and after reading their instructions. Do not claim unavailable tools, agent capacity, or external verification.

Read [domains.md](references/domains.md) when business or technical constraints change the decision. Follow [personalize.md](references/personalize.md) for requested method improvements and [evaluation.md](references/evaluation.md) when validating routing or behavior changes. An invocation does not add unrelated external permissions or authorize deployment.
