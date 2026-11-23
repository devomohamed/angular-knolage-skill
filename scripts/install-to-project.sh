#!/usr/bin/env bash
set -euo pipefail
BUNDLE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-$PWD}"
mkdir -p "$TARGET/.agents" "$TARGET/.github" "$TARGET/.claude"
rm -rf "$TARGET/.agents/skills"
cp -R "$BUNDLE_ROOT/.agents/skills" "$TARGET/.agents/skills"
cp "$BUNDLE_ROOT/AGENTS.md" "$TARGET/AGENTS.md"
cp "$BUNDLE_ROOT/CLAUDE.md" "$TARGET/CLAUDE.md"
cp "$BUNDLE_ROOT/.github/copilot-instructions.md" "$TARGET/.github/copilot-instructions.md"
mkdir -p "$TARGET/.github/agents"
cp "$BUNDLE_ROOT"/.github/agents/* "$TARGET/.github/agents/"
for DEST in "$TARGET/.github/skills" "$TARGET/.claude/skills"; do
  mkdir -p "$DEST"
  for SKILL in "$TARGET/.agents/skills"/*; do
    NAME="$(basename "$SKILL")"
    rm -rf "$DEST/$NAME"
    cp -R "$SKILL" "$DEST/$NAME"
  done
done
echo "Installed AI Engineering System into $TARGET"
