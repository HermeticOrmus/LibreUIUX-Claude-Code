#!/bin/bash
# =============================================================================
# LibreUIUX Post Tool Use Hook
# =============================================================================
# Runs after Edit/Write/MultiEdit operations on UI-related files.
# Performs quick accessibility checks, color contrast validation, and logs
# UI modifications for review.
#
# What this hook does:
# 1. Detects if the edited file is UI-related (CSS, TSX, JSX, Vue, Svelte)
# 2. Runs quick accessibility checks on the changes
# 3. Validates color contrast ratios for WCAG compliance
# 4. Checks touch target sizes for mobile accessibility
# 5. Logs UI modifications for review
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

if [ -z "$FILE_PATH" ] || [ ! -f "$FILE_PATH" ]; then
    exit 0
fi

# Setup logging
HOOKS_LOG_DIR="${LIBREUIUX_HOOKS_DIR:-$(dirname "$0")}/logs"
mkdir -p "$HOOKS_LOG_DIR"

# Get file extension
FILE_EXT="${FILE_PATH##*.}"
FILE_NAME=$(basename "$FILE_PATH")

# Initialize warnings and suggestions arrays
WARNINGS=()
SUGGESTIONS=()
UI_ISSUES=()

# =============================================================================
# FILE TYPE DETECTION
# =============================================================================

IS_UI_FILE=false
FILE_TYPE=""

case "$FILE_EXT" in
    css|scss|sass|less)
        IS_UI_FILE=true
        FILE_TYPE="stylesheet"
        ;;
    tsx|jsx)
        IS_UI_FILE=true
        FILE_TYPE="component"
        ;;
    vue)
        IS_UI_FILE=true
        FILE_TYPE="vue-component"
        ;;
    svelte)
        IS_UI_FILE=true
        FILE_TYPE="svelte-component"
        ;;
    html|htm)
        IS_UI_FILE=true
        FILE_TYPE="html"
        ;;
    ts|js)
        # Check if it's a style-related file
        if echo "$FILE_NAME" | grep -qiE "style|theme|color|token"; then
            IS_UI_FILE=true
            FILE_TYPE="style-config"
        fi
        ;;
esac

# Exit if not a UI-related file
if [ "$IS_UI_FILE" = false ]; then
    exit 0
fi

# Log the UI file modification
echo "$(date '+%Y-%m-%d %H:%M:%S') - UI file modified: $FILE_PATH ($FILE_TYPE)" >> "$HOOKS_LOG_DIR/ui-modifications.log"

# =============================================================================
# COLOR CONTRAST VALIDATION
# =============================================================================
# Check for potentially problematic color combinations

check_color_contrast() {
    local file_content="$1"

    # Common low-contrast color patterns to flag
    # These are heuristic checks, not actual contrast calculations

    # Light gray on white (common mistake)
    if echo "$file_content" | grep -qiE "(#[def][def][def][def][def][def]|#[def]{3}|rgb\(2[0-3][0-9]|rgba\(2[0-3][0-9])" 2>/dev/null; then
        if echo "$file_content" | grep -qiE "(background.*white|bg-white|#fff|#ffffff)" 2>/dev/null; then
            UI_ISSUES+=("Potential low contrast: light gray text on white background detected")
        fi
    fi

    # Light text colors that might be problematic
    if echo "$file_content" | grep -qiE "text-(gray-[1-3]00|slate-[1-3]00|neutral-[1-3]00)" 2>/dev/null; then
        UI_ISSUES+=("Light text color detected - verify contrast ratio meets WCAG AA (4.5:1 for normal text)")
    fi

    # Yellow/lime text (often low contrast)
    if echo "$file_content" | grep -qiE "text-(yellow-[1-4]00|lime-[1-3]00)|color:\s*#[ef]{2}[ef]{2}[0-9a-f]{2}" 2>/dev/null; then
        UI_ISSUES+=("Yellow/lime text detected - ensure sufficient contrast with background")
    fi
}

# =============================================================================
# TOUCH TARGET SIZE VALIDATION
# =============================================================================
# Check for potentially too-small touch targets (mobile accessibility)

check_touch_targets() {
    local file_content="$1"

    # Check for small padding/sizing on interactive elements
    # WCAG 2.1 recommends minimum 44x44 CSS pixels for touch targets

    # Very small button/link padding
    if echo "$file_content" | grep -qiE "(button|<a|onClick|onPress).*p-[0-1]|padding:\s*[0-4]px" 2>/dev/null; then
        UI_ISSUES+=("Small padding on interactive element - consider min 44x44px touch target for mobile")
    fi

    # Very small explicit sizing
    if echo "$file_content" | grep -qiE "(button|<a).*w-[3-6]\s|width:\s*[12][0-9]px" 2>/dev/null; then
        UI_ISSUES+=("Small touch target size - WCAG recommends minimum 44x44px for touch targets")
    fi

    # Check for small height on buttons
    if echo "$file_content" | grep -qiE "button.*h-[4-6]\s|\.btn.*height:\s*[12][0-9]px" 2>/dev/null; then
        SUGGESTIONS+=("Consider increasing button height for better touch accessibility")
    fi
}

# =============================================================================
# ACCESSIBILITY ATTRIBUTE CHECKS
# =============================================================================

check_accessibility_attrs() {
    local file_content="$1"

    # Check for images without alt attributes
    if echo "$file_content" | grep -qiE "<img[^>]*(?!alt=)" 2>/dev/null; then
        # More specific check
        if echo "$file_content" | grep -qE "<img[^>]+src=" | grep -qvE "alt=" 2>/dev/null; then
            UI_ISSUES+=("Image may be missing alt attribute")
        fi
    fi

    # Check for icon-only buttons without aria-label
    if echo "$file_content" | grep -qiE "<button[^>]*>[^<]*<(svg|i|Icon)" 2>/dev/null; then
        if ! echo "$file_content" | grep -qiE "aria-label|aria-labelledby|title" 2>/dev/null; then
            UI_ISSUES+=("Icon-only button may need aria-label for screen readers")
        fi
    fi

    # Check for onclick on non-button elements
    if echo "$file_content" | grep -qiE "<(div|span)[^>]*onClick" 2>/dev/null; then
        if ! echo "$file_content" | grep -qiE 'role="button"' 2>/dev/null; then
            UI_ISSUES+=("Clickable div/span should have role=\"button\" and be keyboard accessible")
        fi
    fi

    # Check for form inputs without labels
    if echo "$file_content" | grep -qiE "<input[^>]+type=" 2>/dev/null; then
        if ! echo "$file_content" | grep -qiE "aria-label|aria-labelledby|<label" 2>/dev/null; then
            SUGGESTIONS+=("Ensure form inputs have associated labels (htmlFor) or aria-label")
        fi
    fi
}

# =============================================================================
# ANIMATION AND MOTION CHECKS
# =============================================================================

check_motion_preferences() {
    local file_content="$1"

    # Check for animations without prefers-reduced-motion consideration
    if echo "$file_content" | grep -qiE "animation:|@keyframes|transition:|framer-motion|motion\." 2>/dev/null; then
        if ! echo "$file_content" | grep -qiE "prefers-reduced-motion" 2>/dev/null; then
            SUGGESTIONS+=("Consider adding prefers-reduced-motion media query for animations")
        fi
    fi

    # Check for auto-playing content
    if echo "$file_content" | grep -qiE "autoPlay|autoplay" 2>/dev/null; then
        UI_ISSUES+=("Auto-playing content detected - ensure users can pause/stop it")
    fi
}

# =============================================================================
# RESPONSIVE DESIGN CHECKS
# =============================================================================

check_responsive_design() {
    local file_content="$1"

    # Check for fixed widths that might break on mobile
    if echo "$file_content" | grep -qiE "width:\s*[4-9][0-9]{2}px|width:\s*[1-9][0-9]{3}px" 2>/dev/null; then
        SUGGESTIONS+=("Fixed pixel widths detected - consider using responsive units (%, vw, rem)")
    fi

    # Check for small font sizes
    if echo "$file_content" | grep -qiE "font-size:\s*[1-9]px|font-size:\s*1[0-1]px|text-\[1[0-1]px\]" 2>/dev/null; then
        UI_ISSUES+=("Small font size detected - minimum 16px recommended for body text")
    fi

    # Check for text that might not be readable on mobile
    if echo "$file_content" | grep -qiE "text-xs|font-size:\s*0\.[0-7]" 2>/dev/null; then
        SUGGESTIONS+=("Very small text detected - verify readability on mobile devices")
    fi
}

# =============================================================================
# COLOR SCHEME CHECKS
# =============================================================================

check_color_scheme() {
    local file_content="$1"

    # Check if dark mode is considered
    if echo "$file_content" | grep -qiE "bg-white|background:\s*white|#fff{3,6}" 2>/dev/null; then
        if ! echo "$file_content" | grep -qiE "dark:|prefers-color-scheme:\s*dark|\.dark\s" 2>/dev/null; then
            SUGGESTIONS+=("Consider adding dark mode support for user preference")
        fi
    fi
}

# =============================================================================
# RUN CHECKS ON FILE CONTENT
# =============================================================================

if [ -f "$FILE_PATH" ]; then
    FILE_CONTENT=$(cat "$FILE_PATH")

    check_color_contrast "$FILE_CONTENT"
    check_touch_targets "$FILE_CONTENT"
    check_accessibility_attrs "$FILE_CONTENT"
    check_motion_preferences "$FILE_CONTENT"
    check_responsive_design "$FILE_CONTENT"
    check_color_scheme "$FILE_CONTENT"
fi

# =============================================================================
# LOG UI ISSUES FOR REVIEW
# =============================================================================

if [ ${#UI_ISSUES[@]} -gt 0 ]; then
    {
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Issues in $FILE_PATH:"
        for issue in "${UI_ISSUES[@]}"; do
            echo "  [!] $issue"
        done
    } >> "$HOOKS_LOG_DIR/ui-issues.log"
fi

if [ ${#SUGGESTIONS[@]} -gt 0 ]; then
    {
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Suggestions for $FILE_PATH:"
        for suggestion in "${SUGGESTIONS[@]}"; do
            echo "  [~] $suggestion"
        done
    } >> "$HOOKS_LOG_DIR/ui-suggestions.log"
fi

# =============================================================================
# OUTPUT STRUCTURED RESPONSE
# =============================================================================

# Only output if we have issues or suggestions to report
if [ ${#UI_ISSUES[@]} -gt 0 ] || [ ${#SUGGESTIONS[@]} -gt 0 ]; then
    OUTPUT="{"

    # Add issues as warnings
    if [ ${#UI_ISSUES[@]} -gt 0 ]; then
        OUTPUT="$OUTPUT\"systemMessage\":\"LibreUIUX Accessibility Check:\\n"
        for issue in "${UI_ISSUES[@]}"; do
            ESCAPED_ISSUE=$(echo "$issue" | sed 's/"/\\"/g')
            OUTPUT="$OUTPUT- $ESCAPED_ISSUE\\n"
        done
        OUTPUT="$OUTPUT\""
    fi

    # Add suggestions as additional context
    if [ ${#SUGGESTIONS[@]} -gt 0 ]; then
        if [ ${#UI_ISSUES[@]} -gt 0 ]; then
            OUTPUT="$OUTPUT,"
        fi
        OUTPUT="$OUTPUT\"additionalContext\":["
        FIRST=true
        for suggestion in "${SUGGESTIONS[@]}"; do
            if [ "$FIRST" = true ]; then
                FIRST=false
            else
                OUTPUT="$OUTPUT,"
            fi
            ESCAPED_SUGGESTION=$(echo "$suggestion" | sed 's/"/\\"/g')
            OUTPUT="$OUTPUT{\"type\":\"text\",\"text\":\"Suggestion: $ESCAPED_SUGGESTION\"}"
        done
        OUTPUT="$OUTPUT]"
    fi

    OUTPUT="$OUTPUT}"
    echo "$OUTPUT"
fi

exit 0
