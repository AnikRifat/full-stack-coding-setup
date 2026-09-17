---
name: project-init
description: Initialize a specific software project in a blank or instruction-only folder with native tools, project context, and official framework guidance. Use for application setup; preserve project files and leave PC-wide Codex or Claude setup to machine-init.
---

# Initialize this project

Use this skill to turn a blank or instruction-only folder into a locally verified software project. It owns native project setup, not the global Codex or Claude environment. Read the user profile, [project initialization](references/initialize.md), and the coordinator's [deploy-ready handover method](../loop-delivery/references/delivery-handover.md) before choosing a setup path.

Inspect the target folder first. Preserve existing instructions, Git state, source, and configuration. Use the project's native initializer with official documentation and project-local dependencies. If the required PC capability is missing, identify it and route the explicit environment work to [machine-init](../machine-init/SKILL.md); do not silently modify the machine-wide environment.

Ask the next material question immediately when stack, deployment constraints, core user journey, reference fidelity, credentials, or destructive overwrite risk is unclear. For a clear direct setup request, coordinate the needed work, verify local setup, and leave a concise project record.

Under [loop-delivery](../loop-delivery/SKILL.md), initialization moves into [code-implement](../code-implement/SKILL.md) for approved implementation. A setup-only request ends after a reviewable, verified project setup; a scaffold is not an MVP.
