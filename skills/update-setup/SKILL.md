---
name: update-setup
description: Inspect Anik's full-stack coding setup repository for git updates, pull new releases or commits, and erase stale copies to refresh skills, rules, and capabilities across all installed runtimes. Use for updating, checking, or refreshing the personal skill library; do not modify application code.
---

# Update Full-Stack Coding Setup

Use this skill to inspect Anik's skill library repository (`full-stack-coding-setup`), pull new Git commits or releases, erase removed or stale skills, and re-install or refresh the complete setup across all local AI coding tool runtimes.

Read the user profile, [update flow](references/update-flow.md), and [output rules](../../rules/output.md).

## What it manages

This skill maintains the three runtime discovery locations defined by this library:
- **Claude Code**: `~/.claude/skills/` (symlinks directly into `skills/`)
- **Codex**: `~/.codex/skills/` (copied skill folders and shared rules/capabilities)
- **Antigravity**: `~/.gemini/config/skills/` (copied skill folders and shared rules/capabilities)

It isolates library skills using the `.from-full-stack-coding-setup` marker. Unrelated user skills, third-party plugins, and independent configuration in those directories are left untouched.

## Execution paths

Inspect the workspace state before modifying anything:

| Requested outcome | Action | Command |
| --- | --- | --- |
| Check for new version/commits only | Fetch remote and compare HEAD against `origin/main` | `./tools/update.sh --check` |
| Pull updates and refresh runtimes | Pull upstream changes with fast-forward, erase stale files, and update runtimes | `./tools/update.sh` |
| Force refresh / reinstall current setup | Re-run installer without Git changes to ensure all runtimes are synchronized | `./tools/update.sh --force` or `./tools/install.sh` |

## Safety and invariants

1. **Protect uncommitted changes**: If the local repository has uncommitted modifications, halt and notify Anik before pulling. Do not risk clobbering in-progress skill adjustments without explicit consent.
2. **Fast-forward only**: Use fast-forward (`git pull --ff-only`) to avoid creating accidental merge commits in the skills library.
3. **Clean stale skills**: When skills are renamed or deleted in source, the installer erases the old installed directories in Codex and Antigravity and clears orphaned symlinks in Claude Code.
4. **Preserve unrelated skills**: Only skill directories marked with `.from-full-stack-coding-setup` or symlinked to this repository are removed or replaced.
5. **Report real evidence**: Always report the previous commit hash, the new commit hash, the list of updated/added skills, and the target runtime paths verified.
