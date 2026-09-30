#!/usr/bin/env bash
# LibreUIUX SessionStart hook.
#
# Claude Code sends the hook input as JSON on stdin; plain stdout from a
# SessionStart hook is added to Claude's context. When the project looks like a
# UI project (a front-end framework or styling library in package.json, a
# Tailwind config, or a shadcn/ui components.json), print one line describing
# the stack and the LibreUIUX plugins that fit it. Print nothing otherwise.
# Never writes files.

set -euo pipefail
IFS=$'\n\t'

command -v jq >/dev/null 2>&1 || exit 0

input=$(cat)
dir=$(jq -r '.cwd // empty' 2>/dev/null <<<"$input" || true)
[ -n "$dir" ] && [ -d "$dir" ] || dir=$PWD

deps=""
if [ -f "$dir/package.json" ]; then
  deps=$(jq -r '[(.dependencies // {}), (.devDependencies // {}), (.peerDependencies // {})] | add | keys[]' "$dir/package.json" 2>/dev/null || true)
fi
has() { grep -qx -- "$1" <<<"$deps"; }
has_prefix() { grep -q -- "^$1" <<<"$deps"; }

framework=""
if has next; then framework="Next.js"
elif has gatsby; then framework="Gatsby"
elif has_prefix "@remix-run/"; then framework="Remix"
elif has react; then framework="React"
elif has nuxt; then framework="Nuxt"
elif has vue; then framework="Vue"
elif has "@sveltejs/kit"; then framework="SvelteKit"
elif has svelte; then framework="Svelte"
elif has "@angular/core"; then framework="Angular"
elif has solid-js; then framework="Solid"
fi

stack=()
[ -n "$framework" ] && stack+=("$framework")
if has tailwindcss || compgen -G "$dir/tailwind.config.*" >/dev/null; then stack+=("Tailwind CSS"); fi
has styled-components && stack+=("styled-components")
has "@emotion/react" && stack+=("Emotion")
has_prefix "@vanilla-extract/" && stack+=("vanilla-extract")
[ -f "$dir/components.json" ] && stack+=("shadcn/ui")
has_prefix "@radix-ui/" && stack+=("Radix UI")
has "@headlessui/react" && stack+=("Headless UI")
has "@chakra-ui/react" && stack+=("Chakra UI")
has_prefix "@mantine/" && stack+=("Mantine")
has antd && stack+=("Ant Design")
has "@mui/material" && stack+=("MUI")
{ has framer-motion || has motion; } && stack+=("Motion")

[ ${#stack[@]} -gt 0 ] || exit 0

a11y="no accessibility test tooling found (axe-core, jest-axe, pa11y, eslint-plugin-jsx-a11y)"
if has_prefix "@axe-core/" || has axe-core || has jest-axe || has pa11y || has cypress-axe || has eslint-plugin-jsx-a11y || has eslint-plugin-vuejs-accessibility; then
  a11y="accessibility tooling present"
fi

plugins="design-mastery, accessibility-compliance"
[ -n "$framework" ] && plugins="$plugins, frontend-mobile-development"

joined=$(printf '%s, ' "${stack[@]}")
echo "LibreUIUX: ${joined%, } detected; ${a11y}. Relevant LibreUIUX plugins: ${plugins}."
exit 0
