# Anik's Personal Skill Library

This workspace contains reusable agent instructions for Anik's software and product work. It started empty, with no application, dependency manifest, or Git repository. There is no deployment target for this library.

## Layout

- `LIBRARY.md`: purpose map, scope, and expansion criteria.
- `skills/loop-delivery/`: goal-driven lifecycle loop, interaction, sub-agent coordination, and shared context contract. Invoke `/loop-delivery`; it replaces the former `zero-to-production` coordinator name.
- `skills/`: task-oriented skills for lifecycle, initialization, planning, architecture, implementation, debugging, verification, review, UI, UX, and autonomous audit-and-fix work.
- `rules/`: reusable global constraints, including `output.md`, which bounds how much a skill reads, carries, and reports. A project's own instructions and its observed code win over them where they conflict, so skills inspect project context before applying a global default.
- `capabilities/`: stack-specific guidance selected from project context.
- `commands/`, `agents/`, and `tools/`: command mappings, worker roles, and runtime capabilities.
- Installed discovery locations: symlinks under `~/.claude/skills/` (Claude Code), copied folders under `~/.codex/skills/` (Codex), and copied folders under `~/.gemini/config/skills/` (Antigravity — the one path its IDE, CLI, and agent all read). Run `tools/install.sh` after any edit; installing for one runtime leaves the bundle invisible to the other two. The Antigravity target is skipped when `~/.gemini` is absent.

The workspace copies are the editable source. Install the whole connected bundle and keep owned installed copies consistent after authorized edits. Keep one coordinator under its new name, without a duplicate old-name installation. Sibling links resolve from the skill folder, not the application working directory. Do not change unrelated installed skills, the installed Ponytail plugin, or global instructions as a side effect.

## Authoring rules

- Read the system `skill-creator` skill when creating or substantially changing a skill.
- Distinguish user-confirmed preferences from proposed methods and open questions.
- Preserve the confirmed goal-driven loop: define the requested outcome and acceptance criteria, advance through bounded execution, integrate and verify results, and reassess the next unmet outcome until the goal is achieved or genuinely blocked by a necessary answer. Intermediate plans, scaffolds, or worker completions do not finish a full delivery request.
- Use the requested sub-agent-driven execution model across connected workflows. Micro-skills are instructions, not agents: assign actual workers concrete bounded tasks with relevant skills, acceptance criteria, context, and file ownership. Parallelize independent work alongside useful coordinator work; serialize dependencies and overlapping writes. The coordinator owns integration and final verification. Follow `skills/loop-delivery/references/delegation.md`; do not spawn workers merely to satisfy a count or claim measured speed gains.
- Ask material questions as soon as discovered, including questions surfaced by workers. Coordinate user interaction through the supervising assistant, explain the consequence, reuse answers and authorization, and continue independent work while waiting. Do not repeat discovery at every delegation.
- Preserve skill boundaries: the coordinator owns the overall finish line; task-oriented skills own their named work. Carry decisions, artifacts, open questions, and evidence through the shared handoff; do not restart discovery at every transition.
- Keep direct micro-skill requests scoped to their stated outcome, including any delegated work. The loop runs in the active task and does not create scheduled background jobs.
- Full delivery ends with verified deploy-ready handover. Actual deployment, infrastructure provisioning, production migrations, and rollout operations are excluded from this bundle.
- Keep PC-level Codex/Claude scratch setup in `machine-init`; it must inspect existing tools and preserve unrelated global configuration. Keep application scaffolding in `project-init`; it must not mutate machine-wide tooling or shell configuration as a side effect.
- Apply task-specific engineering skills with the relevant global rules. Ponytail-derived simplicity and Karpathy-inspired guidance preserve requirements, security, money invariants, accessibility, and meaningful checks.
- Default a new business portfolio to Laravel + Blade + Livewire. Consider Next.js when actual scalability and frontend requirements justify it; preserve existing stacks and explicit choices.
- Use official version-matched framework guidance and available package-specific skills. Attribute the community Karpathy-inspired principles accurately.
- Capture a preference's source, context, and exceptions. A single example does not establish a universal rule.
- Organize around the outcome of a task. Add stack or industry guidance only when it changes decisions.
- Keep supporting references reachable from `SKILL.md` and load them only when applicable.
- Extend installed specialist capabilities instead of copying their manuals into this library.
- Do not turn a library improvement into permission to send messages, deploy, publish, or mutate production data.

## Validation

Run the system skill creator's `scripts/quick_validate.py` against each changed skill. Check local links across the complete bundle, UI metadata, and source/installed parity. For changes to routing or decisions, use realistic cases from `skills/loop-delivery/references/evaluation.md`; record the outcome in `skills/loop-delivery/references/validation-log.md`, stating whether the check was structural validation, author review, or independent execution. A valid Markdown link is not evidence of successful project execution.

## gstack

Relevant installed skills include `/browse`, `/office-hours`, `/spec`, `/plan-eng-review`, `/review`, and `/qa`. Select them when their workflow fits the request and read their instructions before use. Availability must be checked in the active session. Deployment and publishing workflows are outside this bundle and are not an automatic final stage.

Use `/browse` from gstack for all web browsing, never `mcp__claude-in-chrome__*`, subject to higher-priority tool instructions.
