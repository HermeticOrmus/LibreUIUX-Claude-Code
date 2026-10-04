#!/usr/bin/env bash
# The one check command for LibreUIUX-Claude-Code. CI runs it on every pull request and on every push to
# main (.github/workflows/check.yml), and the kitchen's Desk runs it before opening a PR.
# It validates the marketplace and every plugin with Claude Code and with Grok Build, then
# installs every plugin into a clean Claude Code config and a clean Grok Build home.
# Needs claude, grok, jq, git and python3 on PATH. Your own config is never touched: both
# installs go to a scratch folder that is removed on exit. Stops at the first failure.
set -euo pipefail
cd "$(dirname "$0")/.."
ROOT="$PWD"
for c in claude grok jq git python3; do
  command -v "$c" >/dev/null || { echo "check.sh: $c is not on PATH" >&2; exit 2; }
done
SCRATCH="$(mktemp -d)"
trap 'rm -rf "$SCRATCH"' EXIT
step() { printf '\n== %s\n' "$*"; }

step "Claude Code: the marketplace manifest validates"
claude plugin validate .

step "Claude Code: every plugin validates"
for p in $(jq -r '.plugins[].source | strings' .claude-plugin/marketplace.json); do
  echo "-- $p"
  claude plugin validate --strict "$p"
done

step "Claude Code: every plugin installs into a clean config"
export CLAUDE_CONFIG_DIR="$SCRATCH/claude-config"
claude plugin marketplace add "$ROOT"
mk=$(jq -r '.name' .claude-plugin/marketplace.json)
for p in $(jq -r '.plugins[].name' .claude-plugin/marketplace.json); do
  claude plugin install "$p@$mk"
done
claude plugin list

step "Grok Build: the Grok manifest matches the Claude manifest"
python3 scripts/sync-grok-manifest.py --check

step "Grok Build: every plugin validates"
for p in $(jq -r '.plugins[].source | strings' .claude-plugin/marketplace.json); do
  echo "-- $p"
  grok plugin validate "$p"
done

step "Grok Build: every plugin installs into a clean Grok home"
export GROK_HOME="$SCRATCH/grok-home"
mkdir -p "$GROK_HOME"
if [[ -f .grok-plugin/marketplace.json ]]; then
  grok plugin marketplace add "$ROOT"
  # Grok registers a local folder as a marketplace under the folder's name.
  mk="$(basename "$ROOT")"
  for p in $(jq -r '.plugins[].name' .grok-plugin/marketplace.json); do
    grok plugin install "$p@$mk" --trust
  done
else
  grok plugin install "$ROOT" --trust
fi
grok plugin list

printf '\ncheck.sh: every check passed\n'
