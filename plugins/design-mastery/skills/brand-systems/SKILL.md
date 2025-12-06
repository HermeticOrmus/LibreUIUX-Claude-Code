---
name: brand-systems
description: Building comprehensive brand identity systems from strategy to implementation. Covers logo design, color palettes, typography pairing, voice guidelines, and system documentation. Use when creating new brands, rebranding, or systematizing existing identities.
---

# Brand Systems

A brand is a promise made visible. Brand systems are the rules that ensure that promise is kept consistently.

## When to Use This Skill

- Creating a new brand identity
- Rebranding or refreshing an existing identity
- Building brand guidelines documentation
- Systematizing ad-hoc brand elements
- Training others on brand application

## Brand System Components

### 1. Strategy Layer (Foundation)

#### Positioning Statement
```
For [target audience]
Who [statement of need]
[Brand] is a [category]
That [key benefit]
Unlike [competitors]
We [key differentiator]
```

#### Brand Pillars
1. **Purpose**: Why we exist beyond profit
2. **Vision**: The future we're creating
3. **Mission**: How we'll get there
4. **Values**: What we believe (3-5 core values)

#### Brand Personality
Define 3-5 adjectives with behavioral examples:

| Trait | What It Means | What It Doesn't Mean |
|-------|---------------|----------------------|
| Bold | Take clear positions | Aggressive/reckless |
| Approachable | Warm and welcoming | Unprofessional |
| Innovative | Forward-thinking | Gimmicky |

#### Brand Archetype
Choose primary (and optional secondary) from:

| Archetype | Core Desire | Voice Character |
|-----------|-------------|-----------------|
| Sage | Truth | Knowledgeable, analytical |
| Innocent | Safety | Optimistic, simple |
| Explorer | Freedom | Adventurous, authentic |
| Ruler | Control | Authoritative, refined |
| Creator | Innovation | Imaginative, visionary |
| Caregiver | Service | Nurturing, supportive |
| Magician | Transformation | Visionary, charismatic |
| Hero | Mastery | Courageous, determined |
| Outlaw | Liberation | Rebellious, disruptive |
| Lover | Intimacy | Passionate, sensual |
| Jester | Enjoyment | Playful, irreverent |
| Everyman | Belonging | Friendly, humble |

---

### 2. Visual Identity Layer

#### Logo System

**Logo Types**:
| Type | Description | Example |
|------|-------------|---------|
| Wordmark | Name as logo | Google, Coca-Cola |
| Lettermark | Initials | IBM, HBO |
| Symbol | Abstract mark | Nike, Apple |
| Combination | Symbol + wordmark | Adidas, Lacoste |
| Emblem | Text inside symbol | Starbucks, NFL |

**Logo Requirements**:
- Works at 16px favicon size
- Works on dark and light backgrounds
- Recognizable in B&W
- No gradients that break in print
- Clear space rules defined

**Logo Lockups**:
```
[Symbol]        [Symbol][Wordmark]       [Wordmark]
                                          [Symbol]
  Symbol          Horizontal              Stacked
  Only            Lockup                  Lockup
```

**Clear Space**:
Define minimum space around logo (typically height of a logo element):
```
   ┌──────────────────────────────┐
   │                              │
   │    ┌──────────────────┐      │
   │    │                  │      │
   │    │      LOGO        │      │  ← Clear space = 'X'
   │    │                  │      │    (defined by logo element)
   │    └──────────────────┘      │
   │                              │
   └──────────────────────────────┘
```

#### Color Palette

**Primary Palette**:
```
Primary:
  Name: [Descriptive name, e.g., "Trust Blue"]
  Hex: #2563eb
  RGB: 37, 99, 235
  HSL: 221, 83%, 53%
  Tailwind: blue-600

  Usage: CTAs, links, primary actions
  Accessible on: white (4.5:1), gray-50 (4.2:1)
```

**Extended Palette**:
- Primary shades (50-950 scale)
- Secondary color (with shades)
- Accent color (high contrast)
- Neutral scale (gray tones)
- Semantic colors (success, warning, error, info)

**Color Proportions**:
```
60% - Dominant (backgrounds, large areas)
30% - Secondary (supporting elements)
10% - Accent (highlights, CTAs)
```

**Dark Mode Considerations**:
```
Light Mode          Dark Mode
white           →   gray-900
gray-50         →   gray-800
gray-900        →   white
blue-600        →   blue-400
```

#### Typography System

**Type Scale**:
```javascript
const typeScale = {
  xs:     '0.75rem',    // 12px - captions
  sm:     '0.875rem',   // 14px - secondary text
  base:   '1rem',       // 16px - body
  lg:     '1.125rem',   // 18px - lead text
  xl:     '1.25rem',    // 20px - h4
  '2xl':  '1.5rem',     // 24px - h3
  '3xl':  '1.875rem',   // 30px - h2
  '4xl':  '2.25rem',    // 36px - h1
  '5xl':  '3rem',       // 48px - display
  '6xl':  '3.75rem',    // 60px - hero
};
```

**Font Pairing Principles**:
| Approach | Example | Effect |
|----------|---------|--------|
| Contrast | Serif heading + sans body | Classic, editorial |
| Complement | Geometric heading + humanist body | Modern, friendly |
| Superfamily | Same family, different weights | Unified, systematic |

**Recommended Pairs**:
- **Editorial**: Playfair Display + Source Sans Pro
- **Modern**: Outfit + Inter
- **Technical**: Space Grotesk + IBM Plex Sans
- **Elegant**: Cormorant Garamond + Lato
- **Startup**: Cal Sans + Geist

#### Imagery & Iconography

**Photography Style**:
- Subject matter guidelines
- Color treatment (natural, saturated, muted)
- Composition preferences
- Mood and lighting
- What to avoid

**Icon System**:
```
Style: [Outlined | Filled | Duotone]
Stroke weight: [1.5px | 2px | 2.5px]
Corner radius: [0 | 2px | rounded]
Grid: [24x24 | 16x16]
Source: [Lucide | Heroicons | Phosphor | Custom]
```

**Illustration Style** (if applicable):
- Style references
- Color usage
- Line weight
- Level of detail
- Character guidelines

---

### 3. Voice Layer

#### Voice Attributes
Define 3-4 constant personality traits:

```
We are:
1. [Trait 1] - [What this means in practice]
2. [Trait 2] - [What this means in practice]
3. [Trait 3] - [What this means in practice]

We are NOT:
1. [Anti-trait 1]
2. [Anti-trait 2]
3. [Anti-trait 3]
```

#### Tone Variations
Voice is constant; tone adapts to context:

| Context | Tone Adjustment | Example |
|---------|-----------------|---------|
| Welcome | Warm, enthusiastic | "Welcome! We're excited to have you." |
| Error | Calm, helpful | "Something went wrong. Here's how to fix it." |
| Success | Celebratory, brief | "Done! Your changes are live." |
| Tutorial | Patient, encouraging | "Let's walk through this together." |
| Legal | Clear, direct | "By continuing, you agree to our terms." |

#### Writing Guidelines
- Sentence length preferences
- Active vs. passive voice
- Punctuation style
- Capitalization rules
- Words to use/avoid
- Jargon policy

---

### 4. System Layer

#### Design Tokens
```javascript
// tokens.js
export const tokens = {
  colors: { /* color definitions */ },
  typography: { /* font definitions */ },
  spacing: {
    xs: '0.25rem',   // 4px
    sm: '0.5rem',    // 8px
    md: '1rem',      // 16px
    lg: '1.5rem',    // 24px
    xl: '2rem',      // 32px
    '2xl': '3rem',   // 48px
    '3xl': '4rem',   // 64px
  },
  radii: {
    sm: '0.25rem',
    md: '0.5rem',
    lg: '0.75rem',
    xl: '1rem',
    full: '9999px',
  },
  shadows: { /* shadow definitions */ },
  transitions: {
    fast: '150ms ease-out',
    normal: '200ms ease-out',
    slow: '300ms ease-out',
  },
};
```

#### Component Patterns
Document common component patterns:

```markdown
## Button

### Variants
- Primary: Main actions
- Secondary: Alternative actions
- Ghost: Tertiary actions
- Destructive: Dangerous actions

### Sizes
- sm: Compact contexts
- md: Default
- lg: Prominent placement

### States
- Default
- Hover
- Active/Pressed
- Focus (keyboard)
- Disabled
- Loading
```

#### Layout Patterns
- Grid system (12-column, gutters)
- Breakpoints
- Container widths
- Section spacing

---

### 5. Application Layer

#### Touchpoint Guidelines
Document brand application for:
- Website
- Mobile app
- Email templates
- Social media profiles
- Presentation templates
- Print materials
- Packaging (if applicable)
- Environmental/signage

#### Do's and Don'ts
Visual examples of correct and incorrect usage:

```
✓ DO                         ✗ DON'T
─────────────────────────────────────────
Logo on white background     Logo on busy photo
Logo with clear space        Logo crowded by elements
Primary button for CTA       Multiple primary buttons
Consistent icon style        Mixed icon styles
```

---

## Brand Canvas (Quick Reference)

```markdown
# [Brand Name] Brand Canvas

## Who We Are
Purpose: [Why we exist]
Vision: [Future we're creating]
Mission: [How we'll get there]

## Who We Serve
[Target audience description]

## What Makes Us Different
[Key differentiators]

## How We Sound
Voice: [3-4 adjectives]
Archetype: [Primary archetype]

## How We Look
Colors: [Primary, Secondary, Accent]
Typography: [Display font + Body font]
Style: [Visual approach in 2-3 words]

## Our Promise
[The one thing we deliver]
```

---

## Resources

- **assets/brand-canvas-template.md**: Fillable brand canvas
- **references/logo-design.md**: Logo creation principles
- **references/color-palettes.md**: Color theory for branding
- **references/typography-pairing.md**: Font combination guide
- **references/brand-voice.md**: Voice development framework
