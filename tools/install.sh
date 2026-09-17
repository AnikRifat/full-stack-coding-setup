#!/usr/bin/env bash
# Install this library for both runtimes: Codex reads real folders, Claude Code reads symlinks.
# Re-run after any rename or edit. Removes installed skills this library no longer defines.
set -euo pipefail

src="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/skills"
codex="$HOME/.codex/skills"
claude="$HOME/.claude/skills"

mkdir -p "$codex" "$claude"
names=$(cd "$src" && ls -d */ | tr -d /)

# Drop installed copies whose source skill is gone (renames leave stale duplicates).
for d in "$codex"/*/; do
  n=$(basename "$d")
  [ "$n" = ".system" ] && continue
  grep -qx "$n" <<<"$names" || rm -rf "$d"
done
for l in "$claude"/*; do
  [ -L "$l" ] || continue
  [[ "$(readlink "$l")" == "$src"/* ]] || continue
  grep -qx "$(basename "$l")" <<<"$names" || rm -f "$l"
done

for n in $names; do
  rm -rf "${codex:?}/$n"
  cp -R "$src/$n" "$codex/$n"
  ln -sfn "$src/$n" "$claude/$n"
done

echo "installed $(wc -w <<<"$names") skills -> $codex (copy), $claude (symlink)"
