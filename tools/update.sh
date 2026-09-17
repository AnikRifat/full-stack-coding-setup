#!/usr/bin/env bash
# Update Anik's full-stack coding setup repository and refresh all runtime installations.
# Usage:
#   ./tools/update.sh              # Check, pull latest git changes, and refresh runtime installations
#   ./tools/update.sh --check      # Check if updates or new commits are available without pulling
#   ./tools/update.sh --force      # Re-install/refresh all runtimes even if git is up to date
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

check_only=false
force=false

for arg in "$@"; do
  case "$arg" in
    --check|--check-only) check_only=true ;;
    --force) force=true ;;
    *) echo "Unknown option: $arg" >&2; exit 1 ;;
  esac
done

echo "==> Inspecting repository status at $root"

# Ensure git repo
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: $root is not a valid git repository" >&2
  exit 1
fi

current_branch="$(git rev-parse --abbrev-ref HEAD)"
current_commit="$(git rev-parse --short HEAD)"
echo "Current branch: $current_branch (at $current_commit)"

# Check working tree cleanliness
if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "Warning: Working tree has uncommitted modifications."
  if [ "$check_only" = false ] && [ "$force" = false ]; then
    echo "Aborting update to prevent overwriting local uncommitted changes."
    echo "Commit or stash changes before running full update, or run with --force / --check."
    exit 1
  fi
fi

# Fetch upstream
echo "==> Checking upstream remote (origin)..."
git fetch origin

upstream="origin/$current_branch"
if ! git rev-parse --verify "$upstream" >/dev/null 2>&1; then
  echo "Notice: Upstream branch $upstream does not exist. Using current commit."
  remote_commit="$current_commit"
else
  remote_commit="$(git rev-parse --short "$upstream")"
fi

behind_count=$(git rev-list --count "HEAD..$upstream" 2>/dev/null || echo 0)
ahead_count=$(git rev-list --count "$upstream..HEAD" 2>/dev/null || echo 0)

echo "Local commit:    $current_commit"
echo "Upstream commit: $remote_commit"
echo "Behind upstream: $behind_count commit(s)"
echo "Ahead upstream:  $ahead_count commit(s)"

if [ "$check_only" = true ]; then
  if [ "$behind_count" -gt 0 ]; then
    echo "Update available! $behind_count new commit(s) on $upstream:"
    git log --oneline "HEAD..$upstream"
    exit 0
  else
    echo "Setup is already up to date with $upstream."
    exit 0
  fi
fi

updated=false
if [ "$behind_count" -gt 0 ]; then
  echo "==> Pulling $behind_count new commit(s) from $upstream..."
  git pull --ff-only origin "$current_branch"
  new_commit="$(git rev-parse --short HEAD)"
  echo "Updated repository: $current_commit -> $new_commit"
  updated=true
else
  echo "No new commits on upstream."
fi

if [ "$updated" = true ] || [ "$force" = true ]; then
  echo "==> Re-installing and refreshing skills across all installed runtimes..."
  "$root/tools/install.sh"
  echo "==> Update complete."
else
  echo "Installed skills are already up to date. (Use --force to reinstall without git changes)"
fi
