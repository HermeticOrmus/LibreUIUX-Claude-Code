#!/bin/bash
# =============================================================================
# LibreUIUX Pre Tool Use Hook
# =============================================================================
# Runs BEFORE Edit/Write/MultiEdit operations on UI-related files.
# Validates context and provides early warnings before changes are made.
#
# What this hook does:
# 1. Checks if the file being modified is part of a design system
# 2. Warns about modifying shared component files
# 3. Validates that design token files aren't being overwritten carelessly
# 4. Provides context about related files that might need updates
# =============================================================================

# Read hook input from stdin (contains tool info as JSON)
HOOK_INPUT=$(cat)

# Extract tool name and file path from hook input
TOOL_NAME=$(echo "$HOOK_INPUT" | grep -oP '"tool_name"\s*:\s*"\K[^"]+' 2>/dev/null || echo "")
FILE_PATH=$(echo "$HOOK_INPUT" | grep -oP '"file_path"\s*:\s*"\K[^"]+' 2>/dev/null || echo "")

# Alternative extraction if grep -P not available
if [ -z "$TOOL_NAME" ]; then
    TOOL_NAME=$(echo "$HOOK_INPUT" | grep -o '"tool_name":"[^"]*"' | cut -d'"' -f4)
fi
if [ -z "$FILE_PATH" ]; then
    FILE_PATH=$(echo "$HOOK_INPUT" | grep -o '"file_path":"[^"]*"' | cut -d'"' -f4)
fi

# Exit early if not a file modification tool or no file path
if [ "$TOOL_NAME" != "Edit" ] && [ "$TOOL_NAME" != "Write" ] && [ "$TOOL_NAME" != "MultiEdit" ]; then
    exit 0
fi

if [ -z "$FILE_PATH" ]; then
    exit 0
fi

# Initialize context and warnings
CONTEXT_MESSAGES=()
WARNINGS=()

# Get file info
FILE_NAME=$(basename "$FILE_PATH")
FILE_DIR=$(dirname "$FILE_PATH")
FILE_EXT="${FILE_PATH##*.}"

# =============================================================================
# DESIGN SYSTEM FILE DETECTION
# =============================================================================

IS_DESIGN_SYSTEM_FILE=false
DESIGN_SYSTEM_TYPE=""

# Check if this is a design token file
if echo "$FILE_NAME" | grep -qiE "^(tokens|theme|colors|spacing|typography|design-tokens|variables)"; then
    IS_DESIGN_SYSTEM_FILE=true
    DESIGN_SYSTEM_TYPE="design-tokens"
    WARNINGS+=("Modifying design token file - changes may affect entire application")
fi

# Check if this is a global/base CSS file
if echo "$FILE_NAME" | grep -qiE "^(global|base|reset|normalize|root|app)\.(css|scss|sass)$"; then
    IS_DESIGN_SYSTEM_FILE=true
    DESIGN_SYSTEM_TYPE="global-styles"
    WARNINGS+=("Modifying global styles - changes will affect all components")
fi

# Check if this is a Tailwind config
if echo "$FILE_NAME" | grep -qiE "^tailwind\.config\.(js|ts|mjs|cjs)$"; then
    IS_DESIGN_SYSTEM_FILE=true
    DESIGN_SYSTEM_TYPE="tailwind-config"
    CONTEXT_MESSAGES+=("Tailwind config changes require a rebuild to take effect")
fi

# Check if this is a component library config (shadcn)
if [ "$FILE_NAME" = "components.json" ]; then
    IS_DESIGN_SYSTEM_FILE=true
    DESIGN_SYSTEM_TYPE="shadcn-config"
    WARNINGS+=("Modifying shadcn/ui configuration - may affect component generation")
fi

# =============================================================================
# SHARED COMPONENT DETECTION
# =============================================================================

IS_SHARED_COMPONENT=false

# Check if file is in a shared/common components directory
if echo "$FILE_DIR" | grep -qiE "(components/ui|components/common|components/shared|lib/components|packages/ui)"; then
    IS_SHARED_COMPONENT=true
    CONTEXT_MESSAGES+=("This appears to be a shared/reusable component")
fi

# Check if file is a primitive/base component
if echo "$FILE_NAME" | grep -qiE "^(button|input|select|checkbox|radio|modal|dialog|card|avatar|badge)\.(tsx|jsx|vue|svelte)$"; then
    IS_SHARED_COMPONENT=true
    CONTEXT_MESSAGES+=("Modifying a primitive UI component - may be used in multiple places")
fi

# =============================================================================
# RELATED FILES CHECK
# =============================================================================

RELATED_FILES=()

# For component files, check for related style/test files
if echo "$FILE_EXT" | grep -qiE "^(tsx|jsx|vue|svelte)$"; then
    # Check for co-located styles
    BASE_NAME="${FILE_NAME%.*}"

    for ext in "css" "scss" "module.css" "module.scss" "styles.ts"; do
        STYLE_FILE="$FILE_DIR/$BASE_NAME.$ext"
        if [ -f "$STYLE_FILE" ]; then
            RELATED_FILES+=("Style file: $BASE_NAME.$ext")
        fi
    done

    # Check for co-located tests
    for pattern in ".test.tsx" ".test.jsx" ".spec.tsx" ".spec.jsx" ".test.ts" ".test.js"; do
        TEST_FILE="$FILE_DIR/$BASE_NAME$pattern"
        if [ -f "$TEST_FILE" ]; then
            RELATED_FILES+=("Test file: $BASE_NAME$pattern")
        fi
    done

    # Check for stories (Storybook)
    for pattern in ".stories.tsx" ".stories.jsx" ".stories.ts" ".stories.js"; do
        STORY_FILE="$FILE_DIR/$BASE_NAME$pattern"
        if [ -f "$STORY_FILE" ]; then
            RELATED_FILES+=("Storybook: $BASE_NAME$pattern")
        fi
    done
fi

# For CSS files, check for related component files
if echo "$FILE_EXT" | grep -qiE "^(css|scss|sass)$"; then
    BASE_NAME="${FILE_NAME%.*}"
    # Remove .module if present
    BASE_NAME="${BASE_NAME%.module}"

    for ext in "tsx" "jsx" "vue" "svelte"; do
        COMPONENT_FILE="$FILE_DIR/$BASE_NAME.$ext"
        if [ -f "$COMPONENT_FILE" ]; then
            RELATED_FILES+=("Component: $BASE_NAME.$ext")
        fi
    done
fi

if [ ${#RELATED_FILES[@]} -gt 0 ]; then
    CONTEXT_MESSAGES+=("Related files that may need updates:")
    for file in "${RELATED_FILES[@]}"; do
        CONTEXT_MESSAGES+=("  - $file")
    done
fi

# =============================================================================
# ACCESSIBILITY CONTEXT
# =============================================================================

# For component files, remind about accessibility
if echo "$FILE_EXT" | grep -qiE "^(tsx|jsx|vue|svelte)$"; then
    # Check if this is an interactive component
    if echo "$FILE_NAME" | grep -qiE "(button|link|input|select|menu|modal|dialog|dropdown|form|nav)"; then
        CONTEXT_MESSAGES+=("Interactive component - ensure keyboard navigation and ARIA attributes")
    fi

    # Check if this is a visual component
    if echo "$FILE_NAME" | grep -qiE "(image|icon|avatar|badge|chart|graph)"; then
        CONTEXT_MESSAGES+=("Visual component - ensure alt text or aria-label for accessibility")
    fi
fi

# =============================================================================
# OUTPUT STRUCTURED RESPONSE
# =============================================================================

# Only output if we have context or warnings
if [ ${#CONTEXT_MESSAGES[@]} -gt 0 ] || [ ${#WARNINGS[@]} -gt 0 ]; then
    OUTPUT="{"
    FIRST_SECTION=true

    # Add context messages
    if [ ${#CONTEXT_MESSAGES[@]} -gt 0 ]; then
        OUTPUT="$OUTPUT\"additionalContext\":["
        FIRST=true
        for msg in "${CONTEXT_MESSAGES[@]}"; do
            if [ "$FIRST" = true ]; then
                FIRST=false
            else
                OUTPUT="$OUTPUT,"
            fi
            ESCAPED_MSG=$(echo "$msg" | sed 's/"/\\"/g')
            OUTPUT="$OUTPUT{\"type\":\"text\",\"text\":\"$ESCAPED_MSG\"}"
        done
        OUTPUT="$OUTPUT]"
        FIRST_SECTION=false
    fi

    # Add warnings as system message
    if [ ${#WARNINGS[@]} -gt 0 ]; then
        if [ "$FIRST_SECTION" = false ]; then
            OUTPUT="$OUTPUT,"
        fi
        OUTPUT="$OUTPUT\"systemMessage\":\"LibreUIUX Pre-Edit Check:\\n"
        for warn in "${WARNINGS[@]}"; do
            ESCAPED_WARN=$(echo "$warn" | sed 's/"/\\"/g')
            OUTPUT="$OUTPUT- $ESCAPED_WARN\\n"
        done
        OUTPUT="$OUTPUT\""
    fi

    OUTPUT="$OUTPUT}"
    echo "$OUTPUT"
fi

exit 0
