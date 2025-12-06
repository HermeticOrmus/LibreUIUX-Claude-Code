---
name: style-guide
description: Generate comprehensive design system documentation including colors, typography, spacing, components, and usage guidelines. Outputs production-ready Tailwind/CSS configuration.
---

# Style Guide Generator

You are generating a comprehensive design system and style guide.

## Input Collection

Before generating, gather:

1. **Brand Identity** (if exists)
   - Existing colors, fonts, guidelines
   - Or reference to /brand-identity output

2. **Technical Context**
   - Framework: React, Vue, Svelte, vanilla
   - Styling: Tailwind, CSS modules, styled-components
   - Existing design tokens

3. **Scope**
   - Full system vs. specific components
   - Light mode, dark mode, or both
   - Mobile considerations

## Output Structure

### 1. Design Tokens

```javascript
// design-tokens.js
export const tokens = {
  colors: {
    // Brand
    primary: {
      50: '#eff6ff',
      100: '#dbeafe',
      200: '#bfdbfe',
      300: '#93c5fd',
      400: '#60a5fa',
      500: '#3b82f6',
      600: '#2563eb',
      700: '#1d4ed8',
      800: '#1e40af',
      900: '#1e3a8a',
      950: '#172554',
    },
    // Generate secondary, accent following same pattern

    // Semantic
    success: {
      light: '#dcfce7',
      DEFAULT: '#22c55e',
      dark: '#166534',
    },
    warning: {
      light: '#fef3c7',
      DEFAULT: '#f59e0b',
      dark: '#b45309',
    },
    error: {
      light: '#fee2e2',
      DEFAULT: '#ef4444',
      dark: '#b91c1c',
    },
    info: {
      light: '#dbeafe',
      DEFAULT: '#3b82f6',
      dark: '#1e40af',
    },

    // Neutrals
    gray: {
      50: '#f9fafb',
      100: '#f3f4f6',
      200: '#e5e7eb',
      300: '#d1d5db',
      400: '#9ca3af',
      500: '#6b7280',
      600: '#4b5563',
      700: '#374151',
      800: '#1f2937',
      900: '#111827',
      950: '#030712',
    },
  },

  typography: {
    fontFamily: {
      sans: ['Inter', 'system-ui', 'sans-serif'],
      display: ['Outfit', 'system-ui', 'sans-serif'],
      mono: ['JetBrains Mono', 'monospace'],
    },
    fontSize: {
      xs: ['0.75rem', { lineHeight: '1rem' }],
      sm: ['0.875rem', { lineHeight: '1.25rem' }],
      base: ['1rem', { lineHeight: '1.5rem' }],
      lg: ['1.125rem', { lineHeight: '1.75rem' }],
      xl: ['1.25rem', { lineHeight: '1.75rem' }],
      '2xl': ['1.5rem', { lineHeight: '2rem' }],
      '3xl': ['1.875rem', { lineHeight: '2.25rem' }],
      '4xl': ['2.25rem', { lineHeight: '2.5rem' }],
      '5xl': ['3rem', { lineHeight: '1.1' }],
      '6xl': ['3.75rem', { lineHeight: '1.1' }],
    },
    fontWeight: {
      light: '300',
      normal: '400',
      medium: '500',
      semibold: '600',
      bold: '700',
    },
  },

  spacing: {
    px: '1px',
    0: '0px',
    0.5: '0.125rem',
    1: '0.25rem',
    1.5: '0.375rem',
    2: '0.5rem',
    2.5: '0.625rem',
    3: '0.75rem',
    3.5: '0.875rem',
    4: '1rem',
    5: '1.25rem',
    6: '1.5rem',
    7: '1.75rem',
    8: '2rem',
    9: '2.25rem',
    10: '2.5rem',
    11: '2.75rem',
    12: '3rem',
    14: '3.5rem',
    16: '4rem',
    20: '5rem',
    24: '6rem',
    28: '7rem',
    32: '8rem',
    36: '9rem',
    40: '10rem',
    44: '11rem',
    48: '12rem',
    52: '13rem',
    56: '14rem',
    60: '15rem',
    64: '16rem',
    72: '18rem',
    80: '20rem',
    96: '24rem',
  },

  borderRadius: {
    none: '0',
    sm: '0.125rem',
    DEFAULT: '0.25rem',
    md: '0.375rem',
    lg: '0.5rem',
    xl: '0.75rem',
    '2xl': '1rem',
    '3xl': '1.5rem',
    full: '9999px',
  },

  boxShadow: {
    sm: '0 1px 2px 0 rgb(0 0 0 / 0.05)',
    DEFAULT: '0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)',
    md: '0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)',
    lg: '0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)',
    xl: '0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1)',
    '2xl': '0 25px 50px -12px rgb(0 0 0 / 0.25)',
    inner: 'inset 0 2px 4px 0 rgb(0 0 0 / 0.05)',
    none: 'none',
  },
};
```

### 2. Tailwind Configuration

```javascript
// tailwind.config.js
const { tokens } = require('./design-tokens');

module.exports = {
  content: ['./src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    colors: tokens.colors,
    fontFamily: tokens.typography.fontFamily,
    fontSize: tokens.typography.fontSize,
    fontWeight: tokens.typography.fontWeight,
    spacing: tokens.spacing,
    borderRadius: tokens.borderRadius,
    boxShadow: tokens.boxShadow,
    extend: {
      // Extensions for this specific brand
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],
};
```

### 3. CSS Custom Properties

```css
/* globals.css */
:root {
  /* Colors */
  --color-primary: 37 99 235; /* blue-600 in RGB for opacity support */
  --color-primary-hover: 29 78 216;
  --color-secondary: 107 114 128;
  --color-accent: 249 115 22;

  /* Typography */
  --font-sans: 'Inter', system-ui, sans-serif;
  --font-display: 'Outfit', system-ui, sans-serif;
  --font-mono: 'JetBrains Mono', monospace;

  /* Spacing */
  --space-unit: 0.25rem;

  /* Transitions */
  --transition-fast: 150ms ease-out;
  --transition-normal: 200ms ease-out;
  --transition-slow: 300ms ease-out;

  /* Z-Index Scale */
  --z-dropdown: 1000;
  --z-sticky: 1020;
  --z-fixed: 1030;
  --z-modal-backdrop: 1040;
  --z-modal: 1050;
  --z-popover: 1060;
  --z-tooltip: 1070;
}

/* Dark mode */
.dark {
  --color-primary: 96 165 250; /* blue-400 */
  --color-primary-hover: 147 197 253;
  /* Invert neutral scale */
}
```

### 4. Component Specifications

```markdown
## Buttons

### Primary Button
```html
<button class="
  px-6 py-3
  bg-primary-600 hover:bg-primary-700
  text-white font-semibold
  rounded-lg
  shadow-sm hover:shadow-md
  transition-all duration-200
  focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2
  disabled:opacity-50 disabled:cursor-not-allowed
">
  Button Text
</button>
```

### Secondary Button
[Similar pattern]

### Ghost Button
[Similar pattern]

## Cards

### Standard Card
```html
<div class="
  bg-white dark:bg-gray-800
  rounded-xl
  border border-gray-200 dark:border-gray-700
  shadow-sm hover:shadow-md
  transition-shadow duration-200
  p-6
">
  <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
    Card Title
  </h3>
  <p class="mt-2 text-gray-600 dark:text-gray-400">
    Card description text here.
  </p>
</div>
```

## Form Elements

### Text Input
```html
<input
  type="text"
  class="
    w-full px-4 py-3
    bg-white dark:bg-gray-800
    border border-gray-300 dark:border-gray-600
    rounded-lg
    text-gray-900 dark:text-white
    placeholder:text-gray-400
    focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent
    transition-colors duration-200
  "
  placeholder="Enter text..."
/>
```

[Continue for all component types]
```

### 5. Usage Guidelines

```markdown
## Typography Usage

### Headings
| Element | Size | Weight | Use Case |
|---------|------|--------|----------|
| h1 | text-4xl/5xl | font-bold | Page titles |
| h2 | text-3xl | font-semibold | Section headers |
| h3 | text-2xl | font-semibold | Subsection headers |
| h4 | text-xl | font-medium | Card titles |
| h5 | text-lg | font-medium | Minor headings |
| h6 | text-base | font-medium | Label headings |

### Body Text
- `text-base leading-relaxed` for comfortable reading
- `text-sm` for secondary information
- `text-xs` for captions and metadata

## Spacing Guidelines

### Component Internal Spacing
| Use | Size | Tailwind |
|-----|------|----------|
| Tight | 8px | p-2 |
| Standard | 16px | p-4 |
| Comfortable | 24px | p-6 |
| Spacious | 32px | p-8 |

### Section Spacing
| Use | Size | Tailwind |
|-----|------|----------|
| Related sections | 48px | py-12 |
| Distinct sections | 80px | py-20 |
| Hero to content | 64px | py-16 |

## Color Application

### When to Use Primary
- CTAs and primary actions
- Active navigation states
- Important highlights
- Links

### When to Use Neutrals
- Body text: gray-600 (light) / gray-400 (dark)
- Headings: gray-900 (light) / white (dark)
- Borders: gray-200 (light) / gray-700 (dark)
- Backgrounds: white/gray-50 (light) / gray-900/gray-800 (dark)

### Semantic Colors
- Success (green): Confirmations, completed states
- Warning (amber): Caution, non-critical issues
- Error (red): Errors, destructive actions
- Info (blue): Informational, neutral highlights
```

## Output Checklist

Before delivering, verify:

- [ ] All tokens are internally consistent
- [ ] Color contrast meets WCAG AA
- [ ] Typography scale is harmonious
- [ ] Spacing follows consistent system
- [ ] Dark mode is complete
- [ ] Components are production-ready
- [ ] Guidelines explain rationale

## Starting Prompt

"I'll generate a complete style guide for your project. First, let me understand your needs:

1. **Existing Brand**: Do you have brand guidelines, or are we starting fresh?
2. **Framework**: What's your tech stack? (Tailwind, CSS-in-JS, etc.)
3. **Scope**: Full system or specific components?
4. **Modes**: Light only, dark only, or both?

Share what you have, and I'll build a comprehensive style guide."
