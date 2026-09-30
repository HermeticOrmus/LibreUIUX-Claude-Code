#!/usr/bin/env bash
# LibreUIUX installer.
#
# Registers this checkout as a Claude Code plugin marketplace and installs its
# plugins through the Claude Code CLI, so Claude Code actually loads them.
# It does the same thing as running, inside Claude Code:
#   /plugin marketplace add HermeticOrmus/LibreUIUX-Claude-Code
#   /plugin install <plugin>@libreuiux
#
# Usage:
#   ./setup.sh                      install every plugin
#   ./setup.sh --only p1,p2         install only the named plugins
#   ./setup.sh --list               list the plugins in this pack
#   ./setup.sh --scope project      install for this project only (user|project|local)
#   ./setup.sh --uninstall          remove this pack's plugins and marketplace
#
# To set up a project with a LibreUIUX CLAUDE.md template and config instead,
# run ./bootstrap.sh from inside that project.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MANIFEST="$REPO_DIR/.claude-plugin/marketplace.json"
ONLY=""
LIST=0
UNINSTALL=0
SCOPE="user"

usage() { sed -n '2,18p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; }

while [[ $# -gt 0 ]]; do
  case "$1" in
    --only) ONLY="${2:?--only needs a comma-separated list}"; shift 2 ;;
    --list) LIST=1; shift ;;
    --scope) SCOPE="${2:?--scope needs user, project, or local}"; shift 2 ;;
    --uninstall) UNINSTALL=1; shift ;;
    --plugins-dir)
      echo "note: --plugins-dir is no longer used; Claude Code manages plugin storage itself." >&2
      shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "unknown option: $1" >&2; usage >&2; exit 1 ;;
  esac
done

command -v claude >/dev/null 2>&1 || { echo "error: the Claude Code CLI (claude) is not on PATH. Install it first: https://docs.claude.com/en/docs/claude-code" >&2; exit 1; }
command -v jq >/dev/null 2>&1 || { echo "error: jq is required (sudo apt install jq / brew install jq)." >&2; exit 1; }

MARKETPLACE="$(jq -r '.name' "$MANIFEST")"
mapfile -t ALL < <(jq -r '.plugins[].name' "$MANIFEST")

if (( LIST )); then
  jq -r '.plugins[] | "\(.name)\t\(.description)"' "$MANIFEST" | column -t -s $'\t'
  exit 0
fi

SELECTED=("${ALL[@]}")
if [[ -n "$ONLY" ]]; then
  IFS=',' read -r -a SELECTED <<< "$ONLY"
  for p in "${SELECTED[@]}"; do
    printf '%s\n' "${ALL[@]}" | grep -qx "$p" || { echo "error: '$p' is not a plugin in this pack (see --list)" >&2; exit 1; }
  done
fi

if (( UNINSTALL )); then
  # Only uninstall what is installed, so a partial install does not print a
  # "not found" error for every other plugin in the pack.
  installed=$(claude plugin list 2>/dev/null | grep -o "[^ ]*@$MARKETPLACE" || true)
  for p in "${SELECTED[@]}"; do
    if grep -qx -- "$p@$MARKETPLACE" <<<"$installed"; then
      claude plugin uninstall "$p@$MARKETPLACE" || true
    fi
  done
  [[ -z "$ONLY" ]] && claude plugin marketplace remove "$MARKETPLACE" || true
  echo "Removed. Restart Claude Code to unload the plugins."
  exit 0
fi

if claude plugin marketplace list 2>/dev/null | grep -q "$MARKETPLACE"; then
  claude plugin marketplace update "$MARKETPLACE"
else
  claude plugin marketplace add "$REPO_DIR"
fi

for p in "${SELECTED[@]}"; do
  claude plugin install "$p@$MARKETPLACE" --scope "$SCOPE"
done

echo
echo "Installed ${#SELECTED[@]} plugin(s) from $MARKETPLACE. Restart Claude Code to load them."
echo "Tell us what worked and what is missing: https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/issues/new?template=feedback.yml"
