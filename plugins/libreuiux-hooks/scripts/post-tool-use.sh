#!/usr/bin/env bash
# LibreUIUX PostToolUse hook (Edit, Write, MultiEdit).
#
# Reads the hook input JSON on stdin. After Claude edits a UI file (stylesheet,
# component, HTML, or a theme/token script), it runs quick heuristic checks and,
# only when something is worth a look, returns the findings to Claude as
# additionalContext:
#   - design-system files (tokens, global styles, Tailwind or shadcn/ui config)
#     and co-located style, test, and story files that may need the same change
#   - accessibility: light text classes, images without alt, icon-only buttons
#     without a label, clickable div/span, inputs without labels, small targets,
#     animation without a reduced-motion path, autoplay
#   - responsive: very small font sizes, large fixed widths
# These are pattern matches, not measurements. Prints nothing when the file is
# not a UI file or nothing matched. Never writes files.

set -euo pipefail
IFS=$'\n\t'

command -v jq >/dev/null 2>&1 || exit 0

input=$(cat)
path=$(jq -r '.tool_input.file_path // .tool_input.path // empty' 2>/dev/null <<<"$input" || true)
[ -n "$path" ] && [ -f "$path" ] || exit 0

base=$(basename -- "$path")
dir=$(dirname -- "$path")
ext=$(tr '[:upper:]' '[:lower:]' <<<"${base##*.}")
lower=$(tr '[:upper:]' '[:lower:]' <<<"$base")

case "$ext" in
  css|scss|sass|less|tsx|jsx|vue|svelte|html|htm|astro) ;;
  ts|js|mjs|cjs|json)
    grep -qE 'style|theme|color|token|tailwind\.config|^components\.json$' <<<"$lower" || exit 0 ;;
  *) exit 0 ;;
esac

notes=()
note() { notes+=("$1"); }

# --- Design-system impact ----------------------------------------------------
if grep -qE '^(tokens|theme|colors|spacing|typography|design-tokens|variables)([.-]|$)' <<<"$lower"; then
  note "Design token file: this change reaches every component that uses these tokens."
fi
if grep -qE '^(global|globals|base|reset|normalize|root|app|index)\.(css|scss|sass|less)$' <<<"$lower"; then
  note "Global stylesheet: this change applies to every page."
fi
if grep -qE '^tailwind\.config\.(js|ts|mjs|cjs)$' <<<"$lower"; then
  note "Tailwind config changed: check that the dev server picked it up, and that renamed theme keys are not still used in class names."
fi
if [ "$lower" = "components.json" ]; then
  note "shadcn/ui config changed: it controls where and how new components are generated."
fi
if grep -qiE '(components/(ui|common|shared)|lib/components|packages/ui)(/|$)' <<<"$dir"; then
  note "Shared component: other screens import this, so review their usage."
fi

stem="${base%.*}"
stem="${stem%.module}"
related=()
for cand in "$stem.css" "$stem.scss" "$stem.module.css" "$stem.module.scss" "$stem.styles.ts" \
            "$stem.test.tsx" "$stem.test.jsx" "$stem.test.ts" "$stem.test.js" "$stem.spec.tsx" "$stem.spec.ts" \
            "$stem.stories.tsx" "$stem.stories.jsx" "$stem.stories.ts" "$stem.stories.js" \
            "$stem.tsx" "$stem.jsx" "$stem.vue" "$stem.svelte"; do
  [ "$cand" = "$base" ] && continue
  [ -f "$dir/$cand" ] && related+=("$cand")
done
if [ ${#related[@]} -gt 0 ]; then
  list=$(printf '%s, ' "${related[@]}")
  note "Related files that may need the same change: ${list%, }."
fi

# --- Content checks (heuristics) ---------------------------------------------
content=$(head -c 400000 -- "$path" 2>/dev/null || true)
flat=$(tr '\n' ' ' <<<"$content")

if grep -qE 'text-(gray|slate|zinc|neutral|stone)-(100|200|300)\b' <<<"$content"; then
  note "Light text classes (for example text-gray-300): on a light background these usually fall below the 4.5:1 WCAG AA contrast for body text."
fi
if grep -qE 'text-(yellow|amber|lime)-(100|200|300|400)\b' <<<"$content"; then
  note "Yellow, amber, or lime text: these rarely reach 4.5:1 on white; check the contrast."
fi

imgs_without_alt=$({ grep -oiE '<img\b[^>]*>' <<<"$flat" || true; } | { grep -viE '\balt=' || true; } | wc -l | tr -d ' ')
if [ "$imgs_without_alt" -gt 0 ]; then
  note "$imgs_without_alt <img> tag(s) without an alt attribute (use alt=\"\" for decorative images)."
fi

if grep -qiE '<button\b[^>]*>[[:space:]]*<(svg|i|[A-Z][A-Za-z]*Icon)\b' <<<"$flat"; then
  if ! grep -qiE 'aria-label|aria-labelledby|sr-only|visually-hidden' <<<"$content"; then
    note "Icon-only button without an accessible name: add aria-label or visually hidden text."
  fi
fi

if grep -qE '<(div|span)\b[^>]*on[Cc]lick' <<<"$content"; then
  if ! grep -qE 'role="button"' <<<"$content"; then
    note "Clickable div or span: use a <button>, or add role=\"button\", tabindex=\"0\", and Enter/Space key handling."
  fi
fi

if grep -qiE '<input\b' <<<"$content"; then
  if ! grep -qiE '<label\b|aria-label|aria-labelledby' <<<"$content"; then
    note "Inputs without a <label> or aria-label: placeholders are not labels."
  fi
fi

if grep -qE '<(button|a)\b[^>]*class(Name)?="[^"]*\b(h|w|size)-(3|4|5)\b' <<<"$content"; then
  note "Very small interactive element (16 to 20px): WCAG 2.2 target size (2.5.8, AA) asks for at least 24x24 CSS px; 44x44 is the AAA level."
fi

if grep -qE '@keyframes|animation:|transition:|\banimate-|framer-motion|from "motion|<motion\.' <<<"$content"; then
  if ! grep -qE 'prefers-reduced-motion|motion-reduce:|motion-safe:|useReducedMotion' <<<"$content"; then
    note "Animation without a reduced-motion path: add a prefers-reduced-motion query (Tailwind: motion-safe: or motion-reduce:)."
  fi
fi

if grep -qiE '\bautoplay\b|autoPlay' <<<"$content"; then
  note "Autoplaying media: give users a way to pause or stop it (WCAG 2.2.2)."
fi

if grep -qE 'font-size:[[:space:]]*([0-9]|1[01])px|text-\[(1[01]|[0-9])px\]' <<<"$content"; then
  note "Font sizes under 12px: hard to read on phones; body text is usually 16px."
fi

if grep -qE '(^|[^-])width:[[:space:]]*([5-9][0-9]{2}|[1-9][0-9]{3})px' <<<"$content"; then
  note "Large fixed pixel width: prefer max-width with a fluid width so it fits small screens."
fi

[ ${#notes[@]} -gt 0 ] || exit 0

ctx="LibreUIUX checks for $base (pattern matches, verify before changing):"
for n in "${notes[@]}"; do ctx="$ctx
- $n"; done

jq -n --arg ctx "$ctx" '{hookSpecificOutput: {hookEventName: "PostToolUse", additionalContext: $ctx}}'
exit 0
