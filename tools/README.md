# Tools

Tools are runtime capabilities exposed by the active host: filesystem, shell, browser, test runners, package managers, agent delegation, and project-specific integrations. Inspect availability when needed; do not encode a presumed tool, credential, or framework as a global rule.

`install.sh` is the one script kept here: it copies every skill to `~/.codex/skills/`, symlinks each into `~/.claude/skills/`, and removes installed folders this library no longer defines. Run it after any rename or edit.
