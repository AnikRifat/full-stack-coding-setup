#!/usr/bin/env bash
# Install this library for every runtime present on this machine.
#   Claude Code   ~/.claude/skills        symlink (it follows them)
#   Codex         ~/.codex/skills         copy
#   Antigravity   ~/.gemini/config/skills copy (only path all three AGY flavours read)
# Re-run after any rename or edit. Removes installed skills this library no longer defines.
# Antigravity is skipped when ~/.gemini is absent, so this stays safe on a machine without it.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
src="$root/skills"
# Skills link to ../../rules/ and ../../capabilities/. Claude follows the symlink back
# into this repo and resolves them there; the copies cannot, so those two directories
# are copied alongside or every such link dangles in Codex and Antigravity.
shared=(rules capabilities)
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

for dir in "${copies[@]}"; do
  base="$(dirname "$dir")"
  for d in "${shared[@]}"; do
    [ -d "$root/$d" ] || continue
    mkdir -p "$base/$d"
    # Copy contents, not the directory itself: ~/.codex/rules holds default.rules and
    # other runtime-owned files that are not ours to delete.
    cp -R "$root/$d/." "$base/$d/"
  done
done

echo "installed $(wc -w <<<"$names") skills -> $claude (symlink), ${copies[*]} (copy)"
echo "shared ${shared[*]} -> copied alongside each copy target"
