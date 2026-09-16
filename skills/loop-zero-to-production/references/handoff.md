# Shared context and agent handoff

Source: Anik requested connected micro-skills, separate coding ownership, and then sub-agent-driven goal execution with immediate interaction on 2026-09-17. The sibling skill folders form one installed bundle. A real transition or assignment uses this contract; a tiny task does not need a new document.

## Carry the context that changes execution

Reuse the active conversation, project brief, plan, and checkpoint. Include the goal and acceptance criteria, absolute project root and relevant skill path, current increment, journey and audience, established stack and architecture, scope boundaries, decisions and reasons, open questions, relevant artifact paths, and previous check evidence.

For delegated work, include dependencies, explicit write ownership, required guarantees, available raw inputs, expected artifact and verification, and known authorization limits. Use [delegation.md](delegation.md) for assignment and coordination. Do not include secrets or copy the whole transcript into every brief.

Separate user requirements, granted authorization, confirmed preferences, proposed assumptions, and absent inputs. Do not turn the shared context into permission to invent a requirement or perform deployment.

## Load the selected skill and preserve ownership

Resolve sibling paths from the loaded skill directory, not the application's current working directory. Read the assigned `SKILL.md` before its relevant resources and reconcile handoff context with project instructions and actual artifacts.

Skills supply methods; the coordinator explicitly dispatches agents using tools the host exposes. An assigned agent executes its bounded scope and reports to its coordinator. It does not restart the whole lifecycle, recursively spawn a team, modify files owned by another worker, or directly publish another user's question by default.

If a required companion is missing, identify it and repair authorized installation from known source when possible. Continue independent work without claiming missing instructions or tools were applied.

## Surface questions as they arise

Agents send consequential uncertainty to the coordinator immediately with the affected task, evidence, decision impact, and recommended next step. The coordinator asks Anik promptly, consolidates duplicate questions, records the answer, and notifies every affected worker.

Keep only dependent work pending. Reuse prior answers and authorization. If an answer invalidates an assignment, revise or interrupt that assignment before integration; preserve unaffected completed work.

## Return evidence and the next unmet outcome

A phase or agent result includes the delivered behavior, artifact paths, changed files, decisions made, checks actually executed and their outcomes, coverage limits, remaining dependency, and recommended next action as relevant. An agent's “done” means ready for coordinator review, not automatic acceptance of the goal.

The coordinator inspects artifacts, integrates compatible results, verifies relevant combined behavior, and updates its checkpoint. Under [loop-zero-to-production](../SKILL.md), continue the goal loop until all requested work is complete. A directly invoked micro-skill retains its narrow requested finish line and may use bounded delegation proportionally.

Product framing feeds architecture and planning. PC setup establishes an agent or scratch environment when explicitly requested; project initialization establishes application context. Coding may use debugging; review findings feed focused fixes. Verified outcomes feed deploy-ready handover. Dependency order controls execution, and engineering work applies Labour and relevant strict rules. Actual deployment remains outside the bundle.
