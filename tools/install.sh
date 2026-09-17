#!/usr/bin/env bash
# Install this library for every runtime present on this machine.
#   Claude Code   ~/.claude/skills        symlink (it follows them)
#   Codex         ~/.codex/skills         copy
#   Antigravity   ~/.gemini/config/skills copy (only path all three AGY flavours read)
# Re-run after any rename or edit. Removes installed skills this library no longer defines.
# Antigravity is skipped when ~/.gemini is absent, so this stays safe on a machine without it.
set -euo pipefail

src="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/skills"
claude="$HOME/.claude/skills"
copies=("$HOME/.codex/skills")
[ -d "$HOME/.gemini" ] && copies+=("$HOME/.gemini/config/skills")

mkdir -p "$claude" "${copies[@]}"
names=$(cd "$src" && ls -d */ | tr -d /)

# Drop installed copies whose source skill is gone (renames leave stale duplicates).
# Only touches directories this library owns — an unrelated installed skill is left alone.
for dir in "${copies[@]}"; do
  for d in "$dir"/*/; do
    n=$(basename "$d")
    [ -e "$src/$n" ] && continue
    [ -e "$d/.from-full-stack-coding-setup" ] && rm -rf "$d"
  done
done
for l in "$claude"/*; do
  [ -L "$l" ] || continue
  [[ "$(readlink "$l")" == "$src"/* ]] || continue
  grep -qx "$(basename "$l")" <<<"$names" || rm -f "$l"
done

for n in $names; do
  ln -sfn "$src/$n" "$claude/$n"
  for dir in "${copies[@]}"; do
    rm -rf "${dir:?}/$n"
    cp -R "$src/$n" "$dir/$n"
    : > "$dir/$n/.from-full-stack-coding-setup"
  done
done

echo "installed $(wc -w <<<"$names") skills -> $claude (symlink), ${copies[*]} (copy)"
