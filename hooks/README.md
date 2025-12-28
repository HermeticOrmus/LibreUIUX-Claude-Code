# LibreUIUX Hooks System

> Automated UI/UX quality checks for Claude Code sessions

## Overview

This hooks system provides automated assistance for UI/UX development workflows. It detects design systems, validates accessibility, checks color contrast, and provides contextual guidance when editing UI-related files.

## Installation

### Option 1: Copy to Claude Settings (Recommended)

1. Copy the contents of `settings.json` to your Claude Code settings
2. Set the environment variable to point to this hooks directory:

```bash
# Add to your ~/.bashrc or ~/.zshrc
export LIBREUIUX_HOOKS_DIR="$HOME/path/to/LibreUIUX-Claude-Code/hooks"
```

3. Make the scripts executable:

```bash
chmod +x ~/.../LibreUIUX-Claude-Code/hooks/*.sh
```

### Option 2: Merge with Existing Hooks

If you already have hooks configured, merge the settings:

```json
{
  "hooks": {
    "SessionStart": [
      // Your existing session hooks...
      {
        "matcher": "startup|resume",
        "hooks": [
          {
            "type": "command",
            "command": "bash /path/to/LibreUIUX-Claude-Code/hooks/session-start.sh",
            "timeout": 5000
          }
        ]
      }
    ],
    "PreToolUse": [
      {
        "matcher": "Edit|Write|MultiEdit",
        "hooks": [
          {
            "type": "command",
            "command": "bash /path/to/LibreUIUX-Claude-Code/hooks/pre-tool-use.sh",
            "timeout": 2000
          }
        ]
      }
    ],
    "PostToolUse": [
      {
        "matcher": "Edit|Write|MultiEdit",
        "hooks": [
          {
            "type": "command",
            "command": "bash /path/to/LibreUIUX-Claude-Code/hooks/post-tool-use.sh",
            "timeout": 5000
          }
        ]
      }
    ]
  }
}
```

## Hooks Reference

### SessionStart Hook (`session-start.sh`)

**When it runs**: At the start of each Claude Code session

**What it does**:
- Detects UI framework (React, Vue, Svelte, Angular, Next.js, Nuxt, etc.)
- Identifies styling approach (Tailwind, Styled Components, Emotion, CSS Variables)
- Detects component libraries (shadcn/ui, Radix, Headless UI, Chakra, etc.)
- Finds design token files (theme, tokens, colors, spacing)
- Checks for accessibility testing configuration
- Recommends relevant LibreUIUX plugins

**Example output**:
```
UI Framework: Next.js
Styling: Tailwind CSS
Component Libraries: shadcn/ui Radix UI
Design token files detected:
  - tokens.ts
  - theme.ts
Accessibility testing configured
```

### PreToolUse Hook (`pre-tool-use.sh`)

**When it runs**: Before Edit/Write/MultiEdit operations

**What it does**:
- Warns when modifying design system files (tokens, global styles, configs)
- Identifies shared/reusable components
- Lists related files that may need updates (styles, tests, stories)
- Provides accessibility reminders for interactive components

**Example output**:
```
Modifying design token file - changes may affect entire application
Related files that may need updates:
  - Button.module.css
  - Button.test.tsx
  - Button.stories.tsx
```

### PostToolUse Hook (`post-tool-use.sh`)

**When it runs**: After Edit/Write/MultiEdit operations on UI files

**What it does**:
- Validates color contrast ratios
- Checks touch target sizes (minimum 44x44px for mobile)
- Verifies accessibility attributes (alt text, aria-labels, roles)
- Validates animation motion preferences
- Checks responsive design patterns
- Logs all UI modifications for review

**Example output**:
```
LibreUIUX Accessibility Check:
- Light text color detected - verify contrast ratio meets WCAG AA (4.5:1)
- Icon-only button may need aria-label for screen readers

Suggestion: Consider adding prefers-reduced-motion media query for animations
```

## Files Checked

The hooks automatically analyze these UI-related file types:

| Extension | Type | Checks Applied |
|-----------|------|----------------|
| `.css`, `.scss`, `.sass` | Stylesheets | Contrast, sizing, responsive |
| `.tsx`, `.jsx` | React components | A11y attributes, touch targets |
| `.vue` | Vue components | A11y attributes, touch targets |
| `.svelte` | Svelte components | A11y attributes, touch targets |
| `.html` | HTML templates | A11y attributes, semantic markup |
| `theme.ts`, `tokens.js` | Design tokens | System-wide impact warnings |

## Accessibility Checks

The post-tool-use hook performs these accessibility validations:

### Color Contrast
- Detects light gray text on white backgrounds
- Flags very light Tailwind text colors (gray-100 to gray-300)
- Warns about yellow/lime text that often fails contrast

### Touch Targets
- Checks for minimum 44x44px on interactive elements
- Flags small padding on buttons and links
- Validates explicit width/height values

### ARIA and Semantic HTML
- Images without alt attributes
- Icon-only buttons without aria-label
- Clickable divs/spans without proper roles
- Form inputs without labels

### Motion and Animation
- Animations without prefers-reduced-motion
- Auto-playing content warnings

### Responsive Design
- Fixed pixel widths that may break mobile
- Small font sizes (below 16px for body text)
- Very small text classes

## Logs

The hooks create logs in `hooks/logs/`:

| Log File | Contents |
|----------|----------|
| `sessions.log` | Session starts with detected stack |
| `ui-modifications.log` | All UI file changes |
| `ui-issues.log` | Accessibility issues found |
| `ui-suggestions.log` | Improvement suggestions |

## Customization

### Disable Specific Checks

Edit the post-tool-use.sh script and comment out unwanted check functions:

```bash
# RUN CHECKS ON FILE CONTENT
if [ -f "$FILE_PATH" ]; then
    FILE_CONTENT=$(cat "$FILE_PATH")

    check_color_contrast "$FILE_CONTENT"
    # check_touch_targets "$FILE_CONTENT"  # Disabled
    check_accessibility_attrs "$FILE_CONTENT"
    # check_motion_preferences "$FILE_CONTENT"  # Disabled
    check_responsive_design "$FILE_CONTENT"
    check_color_scheme "$FILE_CONTENT"
fi
```

### Add Custom Design System Detection

Add patterns to session-start.sh in the design system detection section:

```bash
# Detect your custom design system
if [ -f "$CURRENT_DIR/my-design-tokens.json" ]; then
    DESIGN_SYSTEM="Custom"
    DESIGN_CONTEXT+=("Custom design system detected")
fi
```

### Adjust Timeout Values

In settings.json, modify the timeout values (in milliseconds):

```json
{
  "type": "command",
  "command": "bash $LIBREUIUX_HOOKS_DIR/post-tool-use.sh",
  "timeout": 10000  // Increase for slower systems
}
```

## Troubleshooting

### Hooks Not Running

1. Verify the environment variable is set:
   ```bash
   echo $LIBREUIUX_HOOKS_DIR
   ```

2. Check scripts are executable:
   ```bash
   ls -la /path/to/hooks/*.sh
   ```

3. Test hooks manually:
   ```bash
   echo '{"tool_name":"Edit","file_path":"./test.tsx"}' | bash /path/to/hooks/post-tool-use.sh
   ```

### Slow Hook Execution

- Reduce the scope of file searches in session-start.sh
- Increase timeout values in settings.json
- Comment out expensive checks in post-tool-use.sh

### False Positives

The accessibility checks use heuristic pattern matching. For false positives:
- Add specific patterns to exclude in the check functions
- Use the logs to identify patterns causing issues
- Adjust regex patterns as needed

## Integration with LibreUIUX Plugins

The hooks integrate with these LibreUIUX plugins:

- **accessibility-compliance**: Full WCAG auditing
- **design-mastery**: Design system best practices
- **frontend-mobile-development**: React/Vue/Svelte patterns

The session-start hook automatically recommends plugins based on your project stack.

## Philosophy

These hooks embody the LibreUIUX principle: **precision over aesthetics**.

Rather than asking Claude to "make it look better," we provide systematic checks that catch common accessibility and usability issues. This enables more specific, actionable feedback:

- Instead of "improve contrast" -> "Color contrast 3.2:1 fails WCAG AA (need 4.5:1)"
- Instead of "make buttons bigger" -> "Button 32px height below 44px touch target"
- Instead of "add accessibility" -> "Missing aria-label on icon button"

Quality UI/UX emerges from attention to these details.

---

**Built for developers who care about accessible, usable interfaces.**
