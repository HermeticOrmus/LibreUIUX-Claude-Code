#!/usr/bin/env bash
# LibreUIUX PreToolUse hook (Edit, Write, MultiEdit).
#
# Reads the hook input JSON on stdin. When the target file looks like a secrets
# file (.env, a .pem or .key file, or a name containing "credentials" or
# "secret"), it asks the user to confirm the edit. For every other file it exits
# 0 silently and the normal permission flow applies. Never writes files.

set -euo pipefail
IFS=$'\n\t'

command -v jq >/dev/null 2>&1 || exit 0

input=$(cat)
path=$(jq -r '.tool_input.file_path // .tool_input.path // empty' 2>/dev/null <<<"$input" || true)
[ -n "$path" ] || exit 0

base=$(basename -- "$path")
lower=$(tr '[:upper:]' '[:lower:]' <<<"$base")

sensitive=0
case "$lower" in
  .env.example|.env.sample|.env.template|.env.dist) sensitive=0 ;;
  .env|.env.*|*.env) sensitive=1 ;;
  *.pem|*.key|*.p12|*.pfx) sensitive=1 ;;
  *credentials*|*secret*) sensitive=1 ;;
esac

[ "$sensitive" -eq 1 ] || exit 0

jq -n --arg reason "LibreUIUX: $base looks like a secrets file (.env, key, certificate, or credentials). Confirm before Claude changes it." \
  '{hookSpecificOutput: {hookEventName: "PreToolUse", permissionDecision: "ask", permissionDecisionReason: $reason}}'
exit 0
