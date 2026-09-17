# Interactive goal loop

Source: Anik requested autonomous looping and questions on 2026-09-17, then requested a `loop-` prefix, immediate interaction, goal-based execution, and sub-agent-driven connected workflows for faster development. This implements that request without inventing business rules or measuring a speed improvement.

## Establish the goal and finish line

Reuse the conversation, project instructions, and actual artifacts. State the requested outcome, observable acceptance criteria, scope boundaries, and current stage. A plan, setup, isolated fix, and full deploy-ready MVP have different finish lines. Full delivery excludes actual deployment, provisioning, production migrations, and rollout operations.

Use this coordinator's [product method](product-method.md) for an actual missing product decision, [delivery-plan](../../delivery-plan/SKILL.md) for goal-driven delivery planning, [project-init](../../project-init/SKILL.md) for a new project setup, and the task-specific architecture, implementation, debugging, verification, review, UI, or UX skill for the next concrete outcome. Use [machine-init](../../machine-init/SKILL.md) only when global Codex/Claude scratch-environment work is explicitly requested or a verified environment blocker needs bounded attention. Apply [global rules](../../../rules/README.md) and actual project context; read the selected entry point before its resources.

If criteria are absent, propose observable ones grounded in the request and ask about ambiguity that changes the goal. Do not fabricate client approval, requirements, metrics, deadlines, or a hosting choice. Goal-based execution uses the active task and project checkpoint; do not create a separate persistent host goal unless the user explicitly requests one.

## Preserve proportional state

For small tasks, retain state in the active conversation. For substantial work, reuse a project-local plan or checkpoint; if absent, create a concise record in a suitable location without overwriting unrelated documents. Track:

- Goal, scope, finish line, acceptance criteria, project root, and current stage.
- Established decisions, reasons, assumptions, answers, and unresolved questions.
- Bounded tasks, dependency order, assigned agent, write ownership, and status.
- Completed artifacts and verification evidence, including failures and coverage limits.
- The next useful action and the exact dependency preventing it, if any.

An agent result moves a task into review; the coordinator accepts it only after relevant evidence and integration checks. Do not mark the whole goal complete while another required task is pending, running, failed, or unverified. Keep secrets out of checkpoint notes.

On resumption or compaction, reconcile the checkpoint with artifacts and actual agent status. Do not invent live agents or restart completed work. Reuse Anik's earlier answers.

## Ask material questions immediately

The coordinator is the user-facing question owner. Ask when the uncertainty is discovered and before committing dependent work, rather than saving questions for the final report or waiting for all agents. Agents promptly send material ambiguities to the coordinator with evidence, impact, and a recommendation.

| Situation | Action |
| --- | --- |
| Routine reversible choice supported by conventions | Decide and execute |
| Optional preference | Ask when useful; continue independent work and eventually use a stated reasonable assumption when safe and no required answer is pending |
| Scope, architecture, domain rule, cost, or delivery ambiguity that changes the result | Recommend an approach, explain the trade-off, and ask immediately; keep dependent assignments pending |
| Unknown hosting capability that affects readiness or architecture | Ask at the first target-dependent decision; reuse a known target |
| Required credential, access, or actual approval boundary | Complete reviewable preparation, then request only the missing input or authorization and explain its source |
| Question already answered or action already authorized | Reuse it; ask again only when the material context changed |

Use an available asynchronous clarification tool when appropriate. Keep questions self-contained, avoid duplicate agent questions, and provide useful recommendations. If no asynchronous mechanism exists, use the available conversation mechanism and pause only the work requiring that answer. Do not invent interaction tooling.

Waiting, a preselected option, or silence is never approval. Optional assumptions are not confirmed preferences or fabricated user answers. Keep required answers pending.

## Delegate, execute, and verify

Read [delegation.md](delegation.md) and use [handoff.md](handoff.md). Default substantive phase work to bounded agents when tools are available and independent coordinator work can proceed alongside it. Group useful work rather than delegating every command. Parallelize independent tasks within actual capacity; serialize tasks with unresolved dependencies or overlapping write ownership.

The coordinator handles user interaction, shared decisions, integration, and final acceptance. Agents read assigned skill instructions, execute only their scope, verify the assigned outcome, and return artifacts, evidence, and unresolved dependencies. A task requiring serial edits can remain with one assigned agent while the coordinator performs useful independent preparation.

Inspect returned artifacts and checks. Run relevant combined checks after integrating changed behavior. A successful agent report, scaffold, or build is not proof that the requested journey works. Repair evidence-supported failures with focused assignments; change the hypothesis when unchanged retries yield the same failure. Do not weaken checks to manufacture completion.

If delegation is unavailable or the work has no useful independent split, say so when material and continue locally within scope. Do not claim agents ran, launch a background workaround, or leave an otherwise actionable task unfinished merely because delegation would be preferred.

## Reassess after results and user answers

Each result or new answer updates the active goal state. Check whether it changes scope, criteria, architecture, dependencies, or current assignments. Notify affected agents immediately; interrupt or revise stale work before its results are integrated. Keep unaffected work and completed artifacts.

When relevant checks pass, proceed to the next unmet outcome without asking whether to do work already requested. When review reveals a supported issue, return it to focused coding or debugging and reverify affected behavior. Broaden or repeat checks only when changes, failures, or unresolved concerns justify them.

Stages may include discovery, scope, planning, architecture, initialization, implementation, debugging, review, and deploy-ready handover. Their order follows dependencies, not a fixed ceremony. Direct micro-skill and planning-only requests preserve narrow scope.

## Finish or identify the dependency

Finish when the requested criteria and relevant checks are satisfied, all required assigned work is accounted for, and no required work remains. Report the delivered behavior or artifact, executed verification, and material limits. Local checks are not production verification.

If further useful progress needs user input or an unavailable resource, provide completed preparation, the precise dependency, and the next action. Keep pending questions visible, and resume from the checkpoint when resolved. Do not use a generic “Should I continue?” for already requested work.

Full delivery uses this coordinator's [delivery handover method](delivery-handover.md). Do not automatically invoke deployment skills, provision infrastructure, mutate production, or monitor a rollout. A later explicit deployment request belongs to a separate workflow.

This loop operates during the active task. Scheduling, background monitoring, reminders, or future wakeups require a separate user request and supported mechanism.
