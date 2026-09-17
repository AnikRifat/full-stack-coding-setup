---
name: project-init
description: Establish a working project in any folder — scaffold a blank one with native tools, or adopt an existing codebase by learning its real stack, conventions, and commands before changing anything. Use for application setup and for onboarding an unfamiliar repository; preserve project files and leave PC-wide Codex or Claude setup to machine-init.
---

# Establish this project

Use this skill to reach a locally verified, workable project in the current folder, whether it is empty or already an application. It owns native project setup and project adoption, not the global Codex or Claude environment. Read the user profile, [project initialization](references/initialize.md), [output rules](../../rules/output.md), and the coordinator's [deploy-ready handover method](../loop-delivery/references/delivery-handover.md) before choosing a path.

Inspect the target folder before deciding anything. It falls into one of three states, and the path differs:

| Folder state | Path |
| --- | --- |
| Genuinely empty | Scaffold with the stack's official initializer |
| Only instructions, planning notes, or `.git` | Scaffold into staging, then merge without overwriting what is there |
| An existing application | Adopt it — never run a generator over it |

Adoption is the common case and the one that goes wrong. Learn the project's real stack, versions, architecture, conventions, commands, data layer, and integrations from the code and its manifests, not from assumption. The project's own instructions and observed patterns override every global default in this library, including the Laravel preference. Record what was actually found, name what remains unknown, and change nothing beyond what was requested.

Preserve existing instructions, Git state, source, and configuration in all three paths. Use the project's native tooling with official documentation and project-local dependencies. If a required PC capability is missing, identify it and route the explicit environment work to [machine-init](../machine-init/SKILL.md); do not silently modify the machine-wide environment.

Ask the next material question immediately when stack, deployment constraints, core user journey, reference fidelity, credentials, or destructive overwrite risk is unclear. For a clear direct request, coordinate the needed work, verify locally, and leave a concise project record.

Under [loop-delivery](../loop-delivery/SKILL.md), this hands off to [code-implement](../code-implement/SKILL.md) for approved implementation, and to [arch-design](../arch-design/SKILL.md) when adoption surfaces a structural decision. A setup-only or onboarding-only request ends at a reviewable, verified state; a scaffold is not an MVP, and a written summary is not an adoption unless a check was actually run.
