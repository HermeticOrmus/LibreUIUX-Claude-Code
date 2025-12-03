---
description: Scaffold a complete design system with colors, typography, spacing, and component standards
---

# Design System Generator

A categorical approach to design system creation. Your design system is a category where colors, typography, and spacing are objects, and their relationships are morphisms preserving visual harmony.

## Usage

```
/design-system [template] [options]
```

**Templates:** `web-app`, `saas`, `ecommerce`, `dashboard`, `marketing`, `minimal`

**Examples:**
```
/design-system
/design-system saas
/design-system ecommerce --primary=#FF6B35
/design-system dashboard --dark-mode
```

---

## Categorical Framework

```
Design System D = (Objects, Morphisms, Composition)

Objects:
- Colors (C): Primary, semantic, neutral palettes
- Typography (T): Scale, weights, line heights
- Spacing (S): Rhythm system based on base unit
- Radii (R): Corner radius scale
- Shadows (Sh): Elevation scale
- Transitions (Tr): Animation timing

Morphisms:
- apply: C x Component -> Styled Component
- scale: T x Context -> Sized Text
- space: S x Layout -> Spaced Layout

Functors:
- Theme: LightMode -> DarkMode (natural transformation)
- Responsive: Mobile -> Desktop (scaling functor)
```

---

## Instructions for Claude

### OBSERVE: Project Analysis

1. **Detect existing setup:**
   - `tailwind.config.js` - Extract current config
   - `CLAUDE.md` - Check for existing system
   - CSS variables in `:root`
   - Existing component patterns

2. **Detect project type:**
   - Package.json dependencies
   - File structure patterns
   - Existing color usage

3. **User preferences:**
   - Primary color (if specified)
   - Dark mode requirement
   - Specific framework needs

### REASON: System Derivation

Derive harmonious values using mathematical relationships:

**Color Harmony:**
```
Given primary color P:
- P-50:  lighten(P, 95%)   // Backgrounds
- P-100: lighten(P, 90%)   // Hover backgrounds
- P-200: lighten(P, 75%)   // Borders light
- P-300: lighten(P, 60%)   // Borders
- P-400: lighten(P, 40%)   // Icons muted
- P-500: P                  // Base
- P-600: darken(P, 10%)    // Primary (use)
- P-700: darken(P, 20%)    // Hover
- P-800: darken(P, 30%)    // Active
- P-900: darken(P, 40%)    // Text on light
```

**Typography Scale (Major Third 1.25):**
```
base = 16px
scale[n] = base * (1.25 ^ n)

xs:   12px (base * 0.75)
sm:   14px (base * 0.875)
base: 16px
lg:   18px (base * 1.125)
xl:   20px (base * 1.25)
2xl:  24px (base * 1.5)
3xl:  30px (base * 1.875)
4xl:  36px (base * 2.25)
5xl:  48px (base * 3)
6xl:  60px (base * 3.75)
```

**Spacing System (4px base):**
```
unit = 4px
space[n] = unit * n

0:  0px     5:  20px    12: 48px
1:  4px     6:  24px    16: 64px
2:  8px     8:  32px    20: 80px
3:  12px    10: 40px    24: 96px
4:  16px
```

### CREATE: System Templates

---

## Template: WEB-APP

Modern web application with balanced aesthetics and functionality.

```markdown
# Design System: Web App

## Colors

### Primary
| Token       | Value    | Usage                |
|-------------|----------|----------------------|
| primary-50  | #EFF6FF  | Backgrounds, badges  |
| primary-100 | #DBEAFE  | Hover backgrounds    |
| primary-200 | #BFDBFE  | Borders light        |
| primary-500 | #3B82F6  | Icons, links         |
| primary-600 | #2563EB  | Primary buttons      |
| primary-700 | #1D4ED8  | Hover states         |

### Neutrals
| Token     | Value    | Usage                |
|-----------|----------|----------------------|
| gray-50   | #F9FAFB  | Page background      |
| gray-100  | #F3F4F6  | Card backgrounds     |
| gray-200  | #E5E7EB  | Borders              |
| gray-400  | #9CA3AF  | Placeholder text     |
| gray-500  | #6B7280  | Secondary text       |
| gray-700  | #374151  | Body text            |
| gray-900  | #111827  | Headings             |

### Semantic
| Token        | Value    | Usage           |
|--------------|----------|-----------------|
| success-500  | #10B981  | Success states  |
| error-500    | #EF4444  | Error states    |
| warning-500  | #F59E0B  | Warning states  |

## Typography

**Font Family:** Inter, system-ui, sans-serif

| Style    | Size  | Weight | Line Height | Usage         |
|----------|-------|--------|-------------|---------------|
| h1       | 36px  | 700    | 1.2         | Page titles   |
| h2       | 30px  | 700    | 1.25        | Sections      |
| h3       | 24px  | 600    | 1.3         | Subsections   |
| h4       | 20px  | 600    | 1.4         | Card titles   |
| body     | 16px  | 400    | 1.5         | Body text     |
| body-sm  | 14px  | 400    | 1.5         | Secondary     |
| caption  | 12px  | 500    | 1.4         | Labels        |

## Spacing

Base unit: 4px

| Token | Value | Common Usage              |
|-------|-------|---------------------------|
| 1     | 4px   | Tight gaps                |
| 2     | 8px   | Icon gaps                 |
| 3     | 12px  | Small padding             |
| 4     | 16px  | Default gap               |
| 6     | 24px  | Card padding              |
| 8     | 32px  | Section padding           |
| 12    | 48px  | Large sections            |
| 16    | 64px  | Page sections             |

## Border Radius

| Token    | Value | Usage                |
|----------|-------|----------------------|
| sm       | 4px   | Small elements       |
| md       | 6px   | Inputs               |
| lg       | 8px   | Buttons              |
| xl       | 12px  | Cards                |
| 2xl      | 16px  | Modals               |
| full     | 9999px| Pills, avatars       |

## Shadows

| Token  | Value                                      | Usage         |
|--------|--------------------------------------------|--------------|
| sm     | 0 1px 2px rgba(0,0,0,0.05)                | Subtle       |
| md     | 0 4px 6px -1px rgba(0,0,0,0.1)            | Cards        |
| lg     | 0 10px 15px -3px rgba(0,0,0,0.1)          | Elevated     |
| xl     | 0 20px 25px -5px rgba(0,0,0,0.1)          | Modals       |

## Transitions

| Token   | Duration | Easing   | Usage              |
|---------|----------|----------|--------------------|
| fast    | 150ms    | ease-out | Micro-interactions |
| default | 200ms    | ease-out | Standard           |
| slow    | 300ms    | ease-out | Layout changes     |

## Component Tokens

### Buttons
- padding: 12px 24px (py-3 px-6)
- radius: 8px (rounded-lg)
- font-weight: 600
- shadow: shadow-md (primary)

### Cards
- padding: 24px (p-6)
- radius: 12px (rounded-xl)
- shadow: shadow-md
- hover-shadow: shadow-lg

### Inputs
- padding: 12px 16px (py-3 px-4)
- radius: 8px (rounded-lg)
- border: 2px solid gray-300
- focus-ring: 4px primary-100
```

---

## Template: SAAS

SaaS product with professional, trustworthy feel.

```markdown
# Design System: SaaS

## Brand Colors
- Primary: Indigo (#4F46E5) - Trust, professionalism
- Accent: Cyan (#06B6D4) - Innovation, freshness

## Key Differences from Web-App:
- Darker primary (indigo vs blue)
- More generous spacing
- Larger headings (authority)
- Prominent CTAs
- Dashboard-ready components

## Specific Tokens
| Token       | Value    | Purpose              |
|-------------|----------|----------------------|
| primary-600 | #4F46E5  | Main brand color     |
| accent-500  | #06B6D4  | Highlights, badges   |
| surface     | #FAFAFA  | Background           |
| card        | #FFFFFF  | Card surfaces        |
```

---

## Template: ECOMMERCE

E-commerce with conversion-focused design.

```markdown
# Design System: E-commerce

## Brand Colors
- Primary: Orange (#F97316) - Action, urgency
- Secondary: Slate (#475569) - Trust, stability

## Key Differences:
- Action-oriented primary (orange)
- High-contrast CTAs
- Price-focused typography
- Badge-heavy (sales, new, etc.)
- Trust indicators styled

## Specific Tokens
| Token         | Value    | Purpose             |
|---------------|----------|---------------------|
| primary-500   | #F97316  | Add to cart, buy    |
| sale-500      | #EF4444  | Sale badges         |
| price         | #111827  | Price display       |
| original-price| #9CA3AF  | Strikethrough price |
```

---

## Template: DASHBOARD

Data dashboard with information density.

```markdown
# Design System: Dashboard

## Brand Colors
- Primary: Blue (#3B82F6) - Data, analytics
- Accent: Emerald (#10B981) - Positive metrics

## Key Differences:
- Compact spacing (information density)
- Smaller base font (14px)
- Monospace for data
- Chart-friendly colors
- Dark mode emphasis

## Specific Tokens
| Token        | Value    | Purpose              |
|--------------|----------|----------------------|
| data-font    | mono     | Numbers, codes       |
| positive     | #10B981  | Up arrows, growth    |
| negative     | #EF4444  | Down arrows, decline |
| chart-1      | #3B82F6  | Primary data series  |
| chart-2      | #8B5CF6  | Secondary series     |
| chart-3      | #EC4899  | Tertiary series      |
```

---

## Template: MARKETING

Marketing/landing pages with high visual impact.

```markdown
# Design System: Marketing

## Brand Colors
- Primary: Gradient (Blue to Purple)
- Accent: Vibrant Pink (#EC4899)

## Key Differences:
- Hero-focused typography (larger)
- Gradient backgrounds
- High-impact CTAs
- Animation-ready
- Section-based spacing

## Specific Tokens
| Token          | Value                        |
|----------------|------------------------------|
| gradient-start | #3B82F6                      |
| gradient-end   | #8B5CF6                      |
| hero-heading   | 60px / font-extrabold        |
| section-gap    | 96px (py-24)                 |
```

---

## Template: MINIMAL

Clean, minimal aesthetic for portfolios and blogs.

```markdown
# Design System: Minimal

## Brand Colors
- Primary: Pure Black (#000000)
- Accent: Single accent color (user choice)

## Key Differences:
- Black/white base
- Generous whitespace
- Typography-focused
- Subtle interactions
- No heavy shadows

## Specific Tokens
| Token       | Value    | Purpose              |
|-------------|----------|----------------------|
| text        | #000000  | Primary text         |
| muted       | #71717A  | Secondary text       |
| background  | #FFFFFF  | Page background      |
| border      | #E4E4E7  | Subtle borders       |
| shadow      | none     | No shadows (flat)    |
```

---

## DEPLOY: Output Formats

### 1. CLAUDE.md Format
```markdown
# Project Design System
[Complete design system in markdown for Claude reference]
```

### 2. Tailwind Config
```javascript
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: { /* tokens */ },
      fontFamily: { /* fonts */ },
      spacing: { /* custom */ },
    }
  }
}
```

### 3. CSS Variables
```css
:root {
  --color-primary-600: #2563EB;
  --font-sans: 'Inter', system-ui, sans-serif;
  --spacing-unit: 4px;
}
```

### 4. Design Tokens JSON
```json
{
  "colors": { "primary": { "600": "#2563EB" } },
  "typography": { "fontFamily": { "sans": "Inter" } },
  "spacing": { "4": "16px" }
}
```

---

## VERIFY: Coherence Check

Before output, verify design system coherence:

- [ ] Color palette is harmonious (derived mathematically)
- [ ] Typography scale follows ratio (1.25 or 1.333)
- [ ] Spacing uses consistent base unit (4px)
- [ ] Shadows progress logically (sm < md < lg)
- [ ] Transitions are consistent across components
- [ ] All tokens have clear usage guidance
- [ ] Dark mode mappings (if applicable)

---

## Example

**Input:** `/design-system saas --primary=#6366F1`

**Output:** Complete design system with:
1. Color palette derived from #6366F1
2. SaaS-optimized typography
3. Component tokens
4. CLAUDE.md file content
5. Tailwind config snippet

---

**Build systems, not just components.**
