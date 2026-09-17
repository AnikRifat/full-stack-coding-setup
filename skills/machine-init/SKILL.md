---
name: machine-init
description: Inspect and prepare Anik's PC-level Codex or Claude scratch environment, reusable workspace guidance, and local agent tooling. Use for global AI coding setup or a fresh scratch workspace; do not initialize an application or overwrite unrelated global configuration.
---

# Initialize this PC

Use this skill for a direct request to prepare this computer's Codex or Claude working environment, or to make a clean scratch workspace for experiments. It is separate from [project-init](../project-init/SKILL.md), which initializes an actual software project.

Read the user profile and [scratch setup](references/scratch-setup.md). Inspect the requested environment before changing it. Work from evidence: discover the installed CLIs, their local help, existing instruction files, workspace locations, and project-independent dependencies. Never assume a Claude configuration format, an active login, or a secret's location.

Ask the next material question immediately when the requested outcome, target location, shared configuration impact, or authentication requirement is unclear. For a clear direct request, complete the bounded setup and verify the result.

Preserve unrelated global and project settings. Do not create an application scaffold, change a project's architecture, expose credentials, install machine-wide runtimes, or modify shell startup files as an incidental setup step. Changes that affect other projects must be directly requested and merged with the existing configuration rather than replacing it.

Report the verified tools and locations, the files changed, the scratch or environment check performed, and any remaining user-owned authentication step.
