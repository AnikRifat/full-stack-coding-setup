# Sub-agent execution for the goal loop

Source: Anik requested on 2026-09-17 that the goal-based loop and its connected lifecycle work use sub-agents for faster development, with prompt interaction and questions. This protocol implements that preference; it does not create a scheduler, additional permissions, or an unlimited agent pool.

## Keep one owner of the outcome

The coordinator owns the active goal, acceptance criteria, user interaction, decisions, task dependencies, integration, and final verification. Use the [shared handoff contract](handoff.md) and [operating loop](operating-loop.md) to carry context across assignments. An agent result is a bounded phase result, not completion of the overall delivery.

Use sub-agents for concrete lifecycle assignments that can proceed alongside useful coordinator work. Parallelize independent work when it shortens the route to the goal. Do not create an agent per skill, split a trivial edit into ceremonies, or dispatch work whose prerequisites are unresolved. Keep small or indivisible tasks with the coordinator when delegation provides no useful concurrency.

Inspect the active session's tools and capacity before dispatch. Use only exposed agent operations; reuse suitable idle agents where supported. Agent slots, models, tools, and context are not assumed. If agent tooling is unavailable or capacity is exhausted, continue useful local work or queue a dependency-aware assignment, and state the limitation when relevant. Do not simulate delegation by claiming a tool, agent, or background job ran.

## Give each agent a bounded brief

Provide enough direct evidence to execute without rediscovering the project:

- Active goal, assigned outcome, observable acceptance criteria, and the exact task boundary.
- Absolute project root and absolute paths to the selected micro-skill's `SKILL.md`, project instructions, applicable references, and relevant raw artifacts. Resolve skill paths from the loaded bundle, not the application's current directory.
- Relevant user requirements or excerpts, existing implementation or logs, established stack and architecture, decisions and reasons, prior answers, granted authorization, and unresolved questions. Label assumptions and omit secrets.
- Dependencies, explicit exclusions, assigned write ownership by file or directory, and the coordinator's integration plan. Shared files and contracts require one owner.
- Required deliverables: artifact paths or changed behavior, meaningful verification commands and results, supported findings, limits, remaining dependency, and recommended next action.

The agent reads its selected skill, applicable [global rules](../../../rules/README.md), project instructions, and context-matched capabilities before acting. Do not substitute a short assignment summary for necessary source evidence. Keep requested scope and existing stack intact.

Agents do not spawn further agents by default. Return a proposed split to the coordinator when useful; only an explicit nested assignment with available capacity and distinct ownership justifies further delegation.

## Match roles to the unmet outcome

These are useful assignment shapes, not a mandatory team or fixed stage sequence:

| Micro-skill | Suitable bounded agent work |
| --- | --- |
| Coordinator product method | Analyze a supplied client problem or reference and recommend journey, scope, and open business questions under the coordinator's ownership |
| `delivery-plan` | Turn established outcomes into goal-driven criteria, dependent increments, and a recommended work order |
| `arch-design` | Assess a material architecture decision and return a reviewable design |
| `code-implement` | Implement one scoped outcome with exclusive write ownership |
| `bug-investigate` | Reproduce, diagnose, and repair one supported failure |
| `behavior-verify` | Verify agreed behavior and report coverage limits |
| `change-review` | Return evidence-backed findings without overlapping implementation writes |
| `ui-audit` / `flow-design` | Assess visual interface or behavioral user-flow concerns with distinct outcomes |
| `machine-init` | Own a bounded global Codex/Claude scratch-environment task; serialize shared configuration writes and preserve unrelated settings |
| `project-init` | Own one approved native scaffold and project setup; serialize its writes before application implementation |
| Coordinator handover method | Assemble readiness and local operating notes from verified artifacts; report missing evidence under the coordinator's ownership |

Read-only reference analysis or review can run alongside independent implementation. Architecture and planning can explore established constraints concurrently, but dependent implementation waits for the decisions it needs. Review of changing files must identify the inspected state; rerun relevant checks after later changes.

## Control writes and dependencies

Parallel writers need disjoint file ownership and agreed interfaces. Serialize scaffolding, dependency manifests and lockfiles, shared schemas, generated outputs, shared configuration, contract changes, and other overlapping or dependent writes. Assign one writer or integrate those changes through the coordinator before releasing dependent work.

Agents share the workspace unless actual isolation has been established. Do not assume separate worktrees, branches, containers, or merge automation. Inspect the current state before editing; preserve user and other-agent changes. Do not reset, overwrite, delete, or revert shared work to make an assignment appear clean. If ownership overlaps or a dependency changes, pause the affected writes, report the exact conflict, and let the coordinator reassign or integrate.

## Route questions immediately

An agent sends a material uncertainty, recommendation, affected task, and exact decision needed to the coordinator as soon as it is discovered. Do not hide a blocking question until the final result. The coordinator promptly routes necessary questions to Anik through available interaction tools or the conversation; only the coordinator owns user questions.

Reuse known answers and group duplicate questions into one pending decision. Continue independent work while waiting; hold only the work that depends on a required answer. Silence or elapsed time is not an answer or approval. Routine reversible decisions supported by project evidence can proceed with a stated assumption where appropriate.

New answers steer the active goal. The coordinator updates the checkpoint and briefs affected agents, stops or revises stale assignments using available controls, and checks that dependent changes reflect the answer before integration. An agent reports any work already performed under a superseded assumption rather than silently discarding it.

## Integrate evidence and continue the loop

Require agents to return concrete artifacts and evidence: changed absolute paths, behavior delivered, decisions, commands actually run with results, checks not run and why, supported findings, and remaining questions. A claimed successful check is not a substitute for its relevant result.

The coordinator inspects the returned artifacts, reconciles them with the current goal and other changes, resolves conflicts, and runs the necessary integration or acceptance checks. Use independent review where it adds useful coverage. Do not blindly accept an agent's completion claim or rerun every check without a reason.

On failure, distinguish a code defect, conflict, missing dependency, and unavailable capability. Supply the new evidence for a bounded retry, revise the assignment, or perform the fix locally; do not repeat an unchanged failed approach indefinitely. Keep independent assignments moving and record the precise unresolved dependency when completion requires user input or access.

After each integrated result, reassess the next unmet criterion and dispatch or execute the next useful increment. Finish only when the requested scope and relevant checks are complete. Preserve the bundle's finish line: verified deploy-ready handover. Actual deployment, infrastructure provisioning, production migrations, publishing, and rollout operations are not delegated or performed through this loop. Agent assignment never expands authorization.
