#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$ROOT/.agents/skills"
[[ -d "$SOURCE" ]] || { echo "Canonical skills folder not found: $SOURCE" >&2; exit 1; }

for TARGET in "$ROOT/.github/skills" "$ROOT/.claude/skills"; do
  mkdir -p "$TARGET"
  for SKILL in "$SOURCE"/*; do
    [[ -d "$SKILL" ]] || continue
    NAME="$(basename "$SKILL")"
    rm -rf "$TARGET/$NAME"
    cp -R "$SKILL" "$TARGET/$NAME"
    echo "Synced $NAME -> $TARGET"
  done
done
echo "Done. .agents/skills remains the source of truth."
