#!/bin/bash
# =============================================================================
# LibreUIUX Session Start Hook
# =============================================================================
# Runs when a Claude Code session starts in a UI/UX project.
# Detects design systems, loads relevant context, and prepares the environment.
#
# What this hook does:
# 1. Detects if the project has a design system (Tailwind, CSS vars, theme files)
# 2. Identifies the UI framework in use (React, Vue, Svelte, etc.)
# 3. Loads relevant LibreUIUX plugins based on project context
# 4. Provides design token context to Claude
# =============================================================================

# Read hook input from stdin (contains session info as JSON)
HOOK_INPUT=$(cat)

# Get current working directory
CURRENT_DIR=$(pwd)
PROJECT_NAME=$(basename "$CURRENT_DIR")

# Ensure log directory exists
HOOKS_LOG_DIR="${LIBREUIUX_HOOKS_DIR:-$(dirname "$0")}/logs"
mkdir -p "$HOOKS_LOG_DIR"

# Log session start
echo "$(date '+%Y-%m-%d %H:%M:%S') - LibreUIUX Session started in $CURRENT_DIR" >> "$HOOKS_LOG_DIR/sessions.log"

# Initialize output arrays
CONTEXT_MESSAGES=()
DESIGN_CONTEXT=()
WARNINGS=()

# =============================================================================
# DESIGN SYSTEM DETECTION
# =============================================================================

DESIGN_SYSTEM=""
UI_FRAMEWORK=""
CSS_APPROACH=""

# -----------------------------------------------------------------------------
# Detect UI Framework
# -----------------------------------------------------------------------------
if [ -f "$CURRENT_DIR/package.json" ]; then
    PACKAGE_JSON=$(cat "$CURRENT_DIR/package.json")

    # React detection
    if echo "$PACKAGE_JSON" | grep -q '"react"'; then
        UI_FRAMEWORK="React"

        # Check for specific React frameworks
        if echo "$PACKAGE_JSON" | grep -q '"next"'; then
            UI_FRAMEWORK="Next.js"
        elif echo "$PACKAGE_JSON" | grep -q '"gatsby"'; then
            UI_FRAMEWORK="Gatsby"
        elif echo "$PACKAGE_JSON" | grep -q '"remix"'; then
            UI_FRAMEWORK="Remix"
        fi
    # Vue detection
    elif echo "$PACKAGE_JSON" | grep -q '"vue"'; then
        UI_FRAMEWORK="Vue"
        if echo "$PACKAGE_JSON" | grep -q '"nuxt"'; then
            UI_FRAMEWORK="Nuxt"
        fi
    # Svelte detection
    elif echo "$PACKAGE_JSON" | grep -q '"svelte"'; then
        UI_FRAMEWORK="Svelte"
        if echo "$PACKAGE_JSON" | grep -q '"@sveltejs/kit"'; then
            UI_FRAMEWORK="SvelteKit"
        fi
    # Angular detection
    elif echo "$PACKAGE_JSON" | grep -q '"@angular/core"'; then
        UI_FRAMEWORK="Angular"
    # Solid detection
    elif echo "$PACKAGE_JSON" | grep -q '"solid-js"'; then
        UI_FRAMEWORK="Solid"
    fi
fi

if [ -n "$UI_FRAMEWORK" ]; then
    CONTEXT_MESSAGES+=("UI Framework: $UI_FRAMEWORK")
fi

# -----------------------------------------------------------------------------
# Detect CSS/Styling Approach
# -----------------------------------------------------------------------------

# Tailwind CSS
if [ -f "$CURRENT_DIR/tailwind.config.js" ] || [ -f "$CURRENT_DIR/tailwind.config.ts" ] || [ -f "$CURRENT_DIR/tailwind.config.mjs" ]; then
    CSS_APPROACH="Tailwind CSS"
    DESIGN_SYSTEM="Tailwind"

    # Check for Tailwind config details
    TAILWIND_CONFIG=$(find "$CURRENT_DIR" -maxdepth 1 -name "tailwind.config.*" | head -1)
    if [ -n "$TAILWIND_CONFIG" ]; then
        # Check for custom theme extensions
        if grep -q "extend" "$TAILWIND_CONFIG" 2>/dev/null; then
            DESIGN_CONTEXT+=("Custom Tailwind theme extensions detected")
        fi
        # Check for custom colors
        if grep -q "colors" "$TAILWIND_CONFIG" 2>/dev/null; then
            DESIGN_CONTEXT+=("Custom color palette defined in Tailwind config")
        fi
    fi
fi

# CSS-in-JS libraries
if [ -f "$CURRENT_DIR/package.json" ]; then
    if echo "$PACKAGE_JSON" | grep -q '"styled-components"'; then
        CSS_APPROACH="${CSS_APPROACH:+$CSS_APPROACH + }Styled Components"
    elif echo "$PACKAGE_JSON" | grep -q '"@emotion/react"'; then
        CSS_APPROACH="${CSS_APPROACH:+$CSS_APPROACH + }Emotion"
    elif echo "$PACKAGE_JSON" | grep -q '"@vanilla-extract"'; then
        CSS_APPROACH="${CSS_APPROACH:+$CSS_APPROACH + }Vanilla Extract"
    fi
fi

# CSS Variables / Custom Properties
if [ -d "$CURRENT_DIR/src" ]; then
    CSS_VAR_FILES=$(find "$CURRENT_DIR/src" -name "*.css" -exec grep -l ":root" {} \; 2>/dev/null | head -3)
    if [ -n "$CSS_VAR_FILES" ]; then
        DESIGN_CONTEXT+=("CSS custom properties (variables) detected")
        if [ -z "$CSS_APPROACH" ]; then
            CSS_APPROACH="CSS Variables"
        fi
    fi
fi

if [ -n "$CSS_APPROACH" ]; then
    CONTEXT_MESSAGES+=("Styling: $CSS_APPROACH")
fi

# -----------------------------------------------------------------------------
# Detect Component Libraries
# -----------------------------------------------------------------------------

COMPONENT_LIBS=()

if [ -f "$CURRENT_DIR/package.json" ]; then
    # shadcn/ui (check for components.json which is shadcn's config)
    if [ -f "$CURRENT_DIR/components.json" ]; then
        COMPONENT_LIBS+=("shadcn/ui")
    fi

    # Other component libraries
    if echo "$PACKAGE_JSON" | grep -q '"@radix-ui"'; then
        COMPONENT_LIBS+=("Radix UI")
    fi
    if echo "$PACKAGE_JSON" | grep -q '"@headlessui"'; then
        COMPONENT_LIBS+=("Headless UI")
    fi
    if echo "$PACKAGE_JSON" | grep -q '"@chakra-ui"'; then
        COMPONENT_LIBS+=("Chakra UI")
    fi
    if echo "$PACKAGE_JSON" | grep -q '"@mantine"'; then
        COMPONENT_LIBS+=("Mantine")
    fi
    if echo "$PACKAGE_JSON" | grep -q '"antd"'; then
        COMPONENT_LIBS+=("Ant Design")
    fi
    if echo "$PACKAGE_JSON" | grep -q '"@mui/material"'; then
        COMPONENT_LIBS+=("Material UI")
    fi
    if echo "$PACKAGE_JSON" | grep -q '"framer-motion"'; then
        COMPONENT_LIBS+=("Framer Motion")
    fi
fi

if [ ${#COMPONENT_LIBS[@]} -gt 0 ]; then
    CONTEXT_MESSAGES+=("Component Libraries: ${COMPONENT_LIBS[*]}")
fi

# -----------------------------------------------------------------------------
# Detect Design Tokens / Theme Files
# -----------------------------------------------------------------------------

# Check for common design token file patterns
TOKEN_FILES=""
for pattern in "tokens" "theme" "design-tokens" "design-system"; do
    FOUND=$(find "$CURRENT_DIR" -maxdepth 3 -type f \( -name "*${pattern}*.json" -o -name "*${pattern}*.ts" -o -name "*${pattern}*.js" \) 2>/dev/null | head -3)
    if [ -n "$FOUND" ]; then
        TOKEN_FILES="$TOKEN_FILES $FOUND"
    fi
done

if [ -n "$TOKEN_FILES" ]; then
    DESIGN_CONTEXT+=("Design token files detected")
    for file in $TOKEN_FILES; do
        DESIGN_CONTEXT+=("  - $(basename "$file")")
    done
fi

# -----------------------------------------------------------------------------
# Check for Global Styles / Base CSS
# -----------------------------------------------------------------------------

GLOBAL_STYLES=$(find "$CURRENT_DIR/src" -maxdepth 2 -name "global*.css" -o -name "base*.css" -o -name "app.css" -o -name "index.css" 2>/dev/null | head -1)
if [ -n "$GLOBAL_STYLES" ]; then
    DESIGN_CONTEXT+=("Global styles: $(basename "$GLOBAL_STYLES")")
fi

# -----------------------------------------------------------------------------
# Check for Accessibility Configuration
# -----------------------------------------------------------------------------

A11Y_CONFIGURED=false

# Check for axe-core or other a11y testing tools
if [ -f "$CURRENT_DIR/package.json" ]; then
    if echo "$PACKAGE_JSON" | grep -qE '"@axe-core|"jest-axe|"pa11y|"cypress-axe"'; then
        A11Y_CONFIGURED=true
        DESIGN_CONTEXT+=("Accessibility testing configured")
    fi
fi

# Check for ESLint a11y plugin
if [ -f "$CURRENT_DIR/.eslintrc"* ] || [ -f "$CURRENT_DIR/eslint.config."* ]; then
    ESLINT_CONFIG=$(cat "$CURRENT_DIR/.eslintrc"* "$CURRENT_DIR/eslint.config."* 2>/dev/null || true)
    if echo "$ESLINT_CONFIG" | grep -q "jsx-a11y"; then
        A11Y_CONFIGURED=true
        DESIGN_CONTEXT+=("ESLint jsx-a11y plugin configured")
    fi
fi

if [ "$A11Y_CONFIGURED" = false ]; then
    WARNINGS+=("No accessibility testing tools detected - consider adding axe-core or pa11y")
fi

# -----------------------------------------------------------------------------
# Check for Responsive Design Configuration
# -----------------------------------------------------------------------------

# Check if Tailwind has custom breakpoints
if [ -f "$CURRENT_DIR/tailwind.config."* ]; then
    if grep -q "screens" "$CURRENT_DIR/tailwind.config."* 2>/dev/null; then
        DESIGN_CONTEXT+=("Custom responsive breakpoints defined")
    fi
fi

# Check for container queries
if [ -d "$CURRENT_DIR/src" ]; then
    if grep -rq "@container" "$CURRENT_DIR/src" --include="*.css" 2>/dev/null; then
        DESIGN_CONTEXT+=("Container queries in use")
    fi
fi

# =============================================================================
# LIBREUIUX PLUGIN RECOMMENDATIONS
# =============================================================================

RECOMMENDED_PLUGINS=()
LIBREUIUX_DIR=$(dirname "$0")/../plugins

# Recommend plugins based on detected stack
if [ -n "$UI_FRAMEWORK" ]; then
    case "$UI_FRAMEWORK" in
        "React"|"Next.js"|"Gatsby"|"Remix")
            RECOMMENDED_PLUGINS+=("frontend-mobile-development")
            RECOMMENDED_PLUGINS+=("accessibility-compliance")
            ;;
        "Vue"|"Nuxt")
            RECOMMENDED_PLUGINS+=("frontend-mobile-development")
            ;;
        "Svelte"|"SvelteKit")
            RECOMMENDED_PLUGINS+=("frontend-mobile-development")
            ;;
    esac
fi

# Always recommend design mastery for UI projects
if [ -n "$UI_FRAMEWORK" ] || [ -n "$CSS_APPROACH" ]; then
    RECOMMENDED_PLUGINS+=("design-mastery")
fi

# Add accessibility plugin if no a11y testing detected
if [ "$A11Y_CONFIGURED" = false ]; then
    RECOMMENDED_PLUGINS+=("accessibility-compliance")
fi

if [ ${#RECOMMENDED_PLUGINS[@]} -gt 0 ]; then
    DESIGN_CONTEXT+=("Recommended LibreUIUX plugins: ${RECOMMENDED_PLUGINS[*]}")
fi

# =============================================================================
# OUTPUT STRUCTURED RESPONSE
# =============================================================================

# Build JSON output for Claude
OUTPUT="{"

# Add context about the UI/UX environment
if [ ${#CONTEXT_MESSAGES[@]} -gt 0 ] || [ ${#DESIGN_CONTEXT[@]} -gt 0 ]; then
    OUTPUT="$OUTPUT\"additionalContext\":["
    FIRST=true

    # Add main context messages
    for msg in "${CONTEXT_MESSAGES[@]}"; do
        if [ "$FIRST" = true ]; then
            FIRST=false
        else
            OUTPUT="$OUTPUT,"
        fi
        # Escape special characters in the message
        ESCAPED_MSG=$(echo "$msg" | sed 's/"/\\"/g')
        OUTPUT="$OUTPUT{\"type\":\"text\",\"text\":\"$ESCAPED_MSG\"}"
    done

    # Add design context details
    for msg in "${DESIGN_CONTEXT[@]}"; do
        if [ "$FIRST" = true ]; then
            FIRST=false
        else
            OUTPUT="$OUTPUT,"
        fi
        ESCAPED_MSG=$(echo "$msg" | sed 's/"/\\"/g')
        OUTPUT="$OUTPUT{\"type\":\"text\",\"text\":\"$ESCAPED_MSG\"}"
    done

    OUTPUT="$OUTPUT]"
fi

# Add warnings as system messages
if [ ${#WARNINGS[@]} -gt 0 ]; then
    if [ ${#CONTEXT_MESSAGES[@]} -gt 0 ] || [ ${#DESIGN_CONTEXT[@]} -gt 0 ]; then
        OUTPUT="$OUTPUT,"
    fi
    OUTPUT="$OUTPUT\"systemMessage\":\""
    for warn in "${WARNINGS[@]}"; do
        ESCAPED_WARN=$(echo "$warn" | sed 's/"/\\"/g')
        OUTPUT="$OUTPUT$ESCAPED_WARN\\n"
    done
    OUTPUT="$OUTPUT\""
fi

OUTPUT="$OUTPUT}"

# Output JSON only if we have content
if [ ${#CONTEXT_MESSAGES[@]} -gt 0 ] || [ ${#DESIGN_CONTEXT[@]} -gt 0 ] || [ ${#WARNINGS[@]} -gt 0 ]; then
    echo "$OUTPUT"
fi

# Log the detection summary
{
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Detection Summary for $PROJECT_NAME"
    echo "  UI Framework: ${UI_FRAMEWORK:-none}"
    echo "  CSS Approach: ${CSS_APPROACH:-none}"
    echo "  Component Libraries: ${COMPONENT_LIBS[*]:-none}"
    echo "  A11y Configured: $A11Y_CONFIGURED"
    echo "---"
} >> "$HOOKS_LOG_DIR/sessions.log"

exit 0
