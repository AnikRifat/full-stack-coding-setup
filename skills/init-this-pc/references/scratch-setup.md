# PC and Claude/Codex scratch setup

## Scope

Use this skill only for a requested computer-level agent environment or an isolated scratch workspace. Route application scaffolding, repository instructions, framework choice, and implementation to [init-this-project](../../init-this-project/SKILL.md) or the lifecycle loop.

Treat "Claude scratch setup" as a request to inspect the Claude tooling and local setup that actually exist on this computer. Do not invent configuration files, accounts, permissions, or credentials.

## Inspect before changing

1. Establish the requested outcome: tool readiness, a reusable scratch folder, local instructions, or a specific Codex/Claude integration.
2. Inspect only relevant installed commands, their local help or version output, existing user-owned instruction/config files, available workspace paths, and runtime availability.
3. Identify whether the change is isolated to a scratch folder or will affect other projects. Ask about a material shared-setting choice before making it.
4. Never print, copy, or store secrets. Authentication, account selection, and permission prompts remain user-owned when required by the tool.

## Set up safely

- Prefer an isolated scratch directory with its own notes and project-local state. Keep it distinct from client repositories and do not place experiments in a live product folder.
- Reuse existing configuration when compatible. Merge targeted changes and keep a recoverable copy before changing a user-managed configuration file.
- Install or update a machine-wide runtime, package manager, shell profile, or global AI configuration only when the direct request specifically calls for it. Otherwise, record the missing dependency and keep work inside the selected scratch directory.
- Select existing skills and instructions based on the work at hand. Do not make a project scaffold merely to prove that a coding agent is available.

## Verify and hand off

Verify the requested command or scratch workflow with a harmless local check. State the exact directories and configuration files touched, what the check proved, and what requires the user's account or a later project-specific step.
