# Tools

Tools are runtime capabilities exposed by the active host: filesystem, shell, browser, test runners, package managers, agent delegation, and project-specific integrations. Inspect availability when needed; do not encode a presumed tool, credential, or framework as a global rule.

`install.sh` is the one script kept here: it symlinks every skill into `~/.claude/skills/` (Claude Code) and copies it to `~/.codex/skills/` (Codex) and `~/.gemini/config/skills/` (Antigravity), then removes installed folders this library no longer defines. Run it after any rename or edit. A runtime whose home directory is absent is skipped.
