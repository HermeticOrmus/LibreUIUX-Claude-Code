#!/usr/bin/env bash
# LibreUIUX installer.
#
# Registers this checkout as a Claude Code plugin marketplace and installs its
# plugins through the Claude Code CLI, so Claude Code actually loads them.
# It does the same thing as running, inside Claude Code:
#   /plugin marketplace add HermeticOrmus/LibreUIUX-Claude-Code
#   /plugin install <plugin>@libreuiux
#
# With --grok it registers the checkout as a Grok Build marketplace and
# installs through the grok CLI instead, the same as running:
#   grok plugin marketplace add HermeticOrmus/LibreUIUX-Claude-Code
#   grok plugin install <plugin>@libreuiux
#
# Usage:
#   ./setup.sh                      install every plugin
#   ./setup.sh --only p1,p2         install only the named plugins
#   ./setup.sh --list               list the plugins in this pack
#   ./setup.sh --scope project      install for this project only (user|project|local)
#   ./setup.sh --uninstall          remove this pack's plugins and marketplace
#   ./setup.sh --grok               install into Grok Build instead of Claude Code
#                                   (works with --only, --list, and --uninstall)
#
# --grok passes --trust to grok, so running it is your confirmation that you
# trust these plugins. --scope is Claude Code only.
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
GROK=0

usage() { awk 'NR==1{next} /^#/{sub(/^# ?/,""); print; next} {exit}' "${BASH_SOURCE[0]}"; }

while [[ $# -gt 0 ]]; do
  case "$1" in
    --only) ONLY="${2:?--only needs a comma-separated list}"; shift 2 ;;
    --list) LIST=1; shift ;;
    --scope) SCOPE="${2:?--scope needs user, project, or local}"; shift 2 ;;
    --uninstall) UNINSTALL=1; shift ;;
    --grok) GROK=1; shift ;;
    --plugins-dir)
      echo "note: --plugins-dir is no longer used; Claude Code manages plugin storage itself." >&2
      shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "unknown option: $1" >&2; usage >&2; exit 1 ;;
  esac
done

if (( GROK )); then
  command -v grok >/dev/null 2>&1 || { echo "error: the Grok Build CLI (grok) is not on PATH. Install it first: curl -fsSL https://x.ai/cli/install.sh | bash" >&2; exit 1; }
else
  command -v claude >/dev/null 2>&1 || { echo "error: the Claude Code CLI (claude) is not on PATH. Install it first: https://docs.claude.com/en/docs/claude-code" >&2; exit 1; }
fi
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

if (( GROK )); then
  [[ "$SCOPE" == "user" ]] || echo "note: --scope applies to Claude Code only; Grok Build installs for your user." >&2
  # Grok Build names a local marketplace after its directory, so find it by path.
  grok_source() { grok plugin marketplace list --json 2>/dev/null | jq -r --arg d "$REPO_DIR" 'first(.[] | select(.source.path == $d) | .name) // empty'; }
  src="$(grok_source)"
  if (( UNINSTALL )); then
    if [[ -z "$ONLY" ]]; then
      # Removing the marketplace removes exactly the plugins installed from it.
      if [[ -n "$src" ]]; then grok plugin marketplace remove "$src"; fi
    else
      # grok uninstalls by name only; leave a same-named plugin from another pack alone.
      for p in "${SELECTED[@]}"; do
        read -r all mine < <(grok plugin list --json 2>/dev/null | jq -r --arg p "$p" --arg d "$REPO_DIR" \
          '[.[] | select(.name == $p)] | "\(length) \(map(select(.source == $d or (.source | startswith($d + "/")))) | length)"')
        (( mine > 0 )) || continue
        if (( all > mine )); then
          echo "skipped $p: another plugin named $p is installed, and grok uninstalls by name only." >&2
          continue
        fi
        grok plugin uninstall "$p"
      done
    fi
    echo "Done. Restart Grok Build to unload what was removed."
    exit 0
  fi
  if [[ -z "$src" ]]; then
    grok plugin marketplace add "$REPO_DIR"
    src="$(grok_source)"
  fi
  for p in "${SELECTED[@]}"; do
    grok plugin install "$p@$src" --trust
  done
  echo
  echo "Installed ${#SELECTED[@]} plugin(s) from $src into Grok Build. Restart Grok Build to load them."
  echo "Tell us what worked and what is missing: https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/issues/new?template=feedback.yml"
  exit 0
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
