---
name: premium-saas-design
description: Professional framework for building premium $5k+ SaaS websites with AI - the Define, Build, Review, Refine loop used by real product teams
---

# Premium SaaS Design Framework

> "75% of users won't trust a company if the design doesn't look good."

This skill captures the professional design workflow used by senior product teams and UI/UX designers, adapted for AI-assisted development. The framework transforms AI from a "guessing machine" into a true design partner.

---

## The Core Loop

```
DEFINE → BUILD → REVIEW → REFINE
   ↑                        │
   └────────────────────────┘
```

This loop is everything. It's used by real product teams and works wonders with AI.

---

## The 7 Context Artifacts

AI needs context to produce premium results. These 7 documents form your "design contract" with AI:

### 1. Project Brief
**What**: Single document explaining what you're building, why, and for whom.
**Purpose**: Gives AI direction and understanding of the project.

```markdown
# Project Brief: [Product Name]

## What We're Building
[Description of the product/website]

## Primary Target Audience
- [Persona 1]: [Description]
- [Persona 2]: [Description]

## Goals
1. [Primary goal - e.g., drive signups]
2. [Secondary goal - e.g., build trust]
3. [Tertiary goal - e.g., explain the product]

## Requirements
- Fully responsive (mobile-first)
- Blazing fast performance
- Accessible (WCAG 2.1 AA)
- [Other requirements]

## Sections
1. Hero
2. Trust Logos
3. Features
4. [etc.]
```

**Key Insight**: Think of AI as a new team member. You wouldn't tell them "build me a website" without context.

---

### 2. Content Files (One Per Section)
**What**: Separate file for each section containing all copy/content.
**Purpose**: Focuses AI on content separately from design.

```markdown
# Hero Section Content

## Headline
[Main headline text]

## Subheadline
[Supporting text]

## CTA Primary
Text: [Button text]
Action: [What happens on click]

## CTA Secondary
Text: [Link text]
Action: [What happens on click]

## Social Proof (optional)
[Trust indicators, stats, etc.]
```

---

### 3. General Vibe Mood Board
**What**: Visual inspiration for the overall site aesthetic.
**Purpose**: Answers "What should the whole site FEEL like when we land on it?"

```markdown
# General Vibe

## Overall Aesthetic
- Theme: [Dark/Light/Mixed]
- Feel: [Modern, Professional, Playful, etc.]
- Color Direction: [Primary color family and why]

## Inspiration References

### Reference 1: [Site Name]
- URL: [link]
- What I Like:
  - [Specific element 1]
  - [Specific element 2]
- Screenshot: [embedded image]

### Reference 2: [Site Name]
- URL: [link]
- What I Like:
  - [Specific element 1]
  - [Specific element 2]
- Screenshot: [embedded image]

## Color Psychology
- Primary Color: [Color] - [Why this color for this audience]
  Example: Turquoise/blue evokes professionalism and trust (important for security products)

## Typography Direction
- Headlines: [Font family, weight, style]
- Body: [Font family, size range]
```

**Research Sources**:
- Dribbble (search "[industry] SaaS landing page")
- Awwwards
- SaaS Landing Page examples
- Competitor sites

---

### 4. Section-Specific Mood Boards
**What**: Detailed specs for each section - the "Frankenstein" approach.
**Purpose**: Gives AI precise visual direction for every section.

```markdown
# Hero Section Specs

## Layout Reference
- URL: [Reference site]
- Screenshot: [embedded]
- What to Copy:
  - Text alignment: [left/center/right]
  - Font hierarchy
  - Button placement

## Navigation Bar
### Components
- Logo: [Position, size]
- Menu Links: [Style, hover effects]
- CTA Button: [Shape, color, glow effects]

### Code Reference (from component library)
```tsx
// Include actual component code from shadcn/21st.dev
```

## Hero Content Area
### Layout
- [Left/Right/Center aligned]
- [Split layout description]

### 3D Element (if applicable)
- Source: [Three.js / Sketchfab link]
- Position: [Where in layout]
- Animation: [Type of movement]
- Code:
```tsx
// Include Three.js or animation code
```

## Components from Libraries
### Primary Button
- Source: 21st.dev
- Style: [pill shaped, glow outline, etc.]
- Code:
```tsx
// Component code
```

### Background Effects
- Type: [Gradient, particles, grid, etc.]
- Source: [Library link]
- Code:
```tsx
// Effect code
```

## Animations
- Scroll Effects: [Parallax, fade-in, etc.]
- Hover States: [What elements animate]
- Entrance Animations: [Staggered, sequential, etc.]
```

**Critical**: Be VERY granular. This is where premium separates from generic.

---

### 5. Style Guide (Living Document)
**What**: Single source of truth for all design specs.
**Purpose**: Ensures consistency across the entire project.

```markdown
# Style Guide

## Design Philosophy
[Brief statement about the visual approach]

## Target Audience
[Who this design serves]

## Color Palette

### Primary
- Main: #[hex] - [Usage: CTAs, key highlights]
- Light: #[hex] - [Usage: hover states]
- Dark: #[hex] - [Usage: pressed states]

### Neutral
- Background: #[hex]
- Surface: #[hex]
- Border: #[hex]
- Text Primary: #[hex]
- Text Secondary: #[hex]

### Accent
- Success: #[hex]
- Warning: #[hex]
- Error: #[hex]

### Do's and Don'ts
DO: [Guidance]
DON'T: [Anti-patterns]

## Typography

### Font Families
- Headlines: [Font name], [fallbacks]
- Body: [Font name], [fallbacks]
- Monospace: [Font name] (for code)

### Scale
- Display: [size]px / [line-height]
- H1: [size]px / [line-height]
- H2: [size]px / [line-height]
- H3: [size]px / [line-height]
- Body: [size]px / [line-height]
- Small: [size]px / [line-height]

## Spacing System
- xs: [value]
- sm: [value]
- md: [value]
- lg: [value]
- xl: [value]
- 2xl: [value]

## Border Radius
- sm: [value]
- md: [value]
- lg: [value]
- full: 9999px

## Shadows
[Shadow definitions]

## Animation
- Duration: [fast/medium/slow values]
- Easing: [easing functions]
- Motion Preferences: Respect prefers-reduced-motion

## Component Patterns
[Common patterns used across the site]
```

**Important**: This is a LIVING document. AI should update it as learnings emerge.

---

### 6. Project Requirements Document (PRD)
**What**: Technical specification for the entire project.
**Purpose**: Tells AI exactly what tech to use and how.

```markdown
# Project Requirements Document

## Project Overview
[Brief description]

## Tech Stack
- Framework: [Next.js / Remix / etc.]
- Styling: [Tailwind CSS / CSS Modules / etc.]
- UI Components: [shadcn/ui, Radix, etc.]
- Animation: [Framer Motion / GSAP / etc.]
- 3D: [Three.js / React Three Fiber]
- Icons: [Lucide / Heroicons / etc.]

## Dependencies
```json
{
  "dependencies": {
    // List all required packages
  }
}
```

## File Structure
```
src/
├── app/
│   └── page.tsx
├── components/
│   ├── ui/           # shadcn components
│   ├── sections/     # Page sections
│   └── 3d/           # Three.js components
├── lib/
│   └── utils.ts
└── styles/
    └── globals.css
```

## Design System
- See: style-guide.md

## Page Sections
| Section | Spec File | Priority |
|---------|-----------|----------|
| Hero | hero-section.md | P0 |
| Features | features-section.md | P1 |
| [etc.] | [etc.] | [etc.] |

## Responsiveness
- Mobile: 320px - 767px
- Tablet: 768px - 1023px
- Desktop: 1024px+

## Performance Requirements
- LCP: < 2.5s
- FID: < 100ms
- CLS: < 0.1

## Accessibility
- WCAG 2.1 AA compliance
- Keyboard navigation
- Screen reader support
```

---

### 7. Tasks Document
**What**: Step-by-step implementation plan.
**Purpose**: Gives AI a clear execution path.

```markdown
# Implementation Tasks

## Phase 1: Project Setup
- [ ] Initialize Next.js project
- [ ] Install dependencies
- [ ] Configure Tailwind CSS
- [ ] Set up shadcn/ui
- [ ] Create folder structure
- [ ] Configure fonts
- [ ] Set up color variables

## Phase 2: Core Components
- [ ] Build navigation bar
- [ ] Create button variants
- [ ] Set up typography components
- [ ] Create layout components

## Phase 3: Section Building
- [ ] Build Hero section
- [ ] Build Trust Logos section
- [ ] Build Features section
- [ ] [Continue for each section]

## Phase 4: Polish
- [ ] Add animations
- [ ] Optimize images
- [ ] Add loading states
- [ ] Mobile responsiveness pass
- [ ] Accessibility audit

## Phase 5: Launch
- [ ] Performance optimization
- [ ] SEO metadata
- [ ] Final review
```

---

## Component Resources

### shadcn/ui
The foundational component library. Copy-paste components with full customization.
- Website: https://ui.shadcn.com
- Usage: Base components (buttons, inputs, cards, etc.)

### 21st.dev
Premium components built on top of shadcn/ui.
- Website: https://21st.dev
- Usage: Advanced components with animations
- **Key Feature**: Each component includes:
  - Preview
  - Code to copy
  - AI prompt for installation

### Three.js / React Three Fiber
3D graphics in the browser.
- Three.js Examples: https://threejs.org/examples/
- Usage: Hero 3D elements, interactive backgrounds

### Sketchfab
Community 3D models and animations.
- Website: https://sketchfab.com
- Usage: Download 3D assets for your hero sections

---

## Best Practices

### 1. Section Isolation
Start a new chat for each section change:
- Cleaner context (no pollution from other sections)
- Cheaper (fewer tokens consumed)
- More focused results

### 2. Commit Per Section
After each section is complete:
```bash
git add .
git commit -m "feat(landing): add [section-name] section"
```
This allows easy rollback if iterations go wrong.

### 3. Include Reference Images
Always paste screenshots in your prompts:
- AI can see exactly what you want
- Reduces ambiguity
- Faster convergence on the right design

### 4. Include Component Code
When specifying a component from 21st.dev or shadcn:
- Copy the actual code
- Include it in your section spec
- AI can implement it exactly

### 5. Auto-Update Style Guide
Create a rule file:
```markdown
# .cursorrules or similar

When building a section and making design decisions that differ from
the style guide, automatically update the style guide to reflect the
new learnings.
```

### 6. Screenshot-to-Iteration
When requesting changes:
1. Take a screenshot of the current state
2. Paste it in the prompt
3. Describe what to change
4. Reference the original inspiration if needed

---

## The $500 vs $5000 Difference

| Generic AI Output | Premium Framework Output |
|-------------------|--------------------------|
| No context | Full context artifacts |
| Guessing what you want | Following precise specs |
| Inconsistent styling | Living style guide |
| Random components | Curated component library |
| No visual references | Mood boards + screenshots |
| Build everything at once | Section-by-section isolation |
| No iteration loop | Define → Build → Review → Refine |

---

## Prompt Templates

### Generate Style Guide
```
Based on my mood board and design preferences in [website-sections folder]
and in the [product-brief.md], create a style guide that includes:
- Color palette (with usage guidance)
- Typography scale
- Component styles
- Spacing system
- Animation guidelines

This will be our single source of truth for the entire project.
Do not duplicate content from the section specs.
```

### Generate PRD
```
Based on my [product-brief.md], [style-guide.md], and all section specs
in [website-sections], create a Project Requirements Document that includes:
- Project overview
- Tech stack (extract from component code in specs)
- Dependencies (extract from component libraries used)
- Design system reference
- Page sections with file references
- File structure
- Responsiveness requirements
- Performance requirements
```

### Generate Tasks
```
Based on the [style-guide.md] and [prd.md], create a tasks markdown file with:
- Phase 1: Project setup tasks
- Phase 2: Core component tasks
- Phase 3: Section building tasks (one per section)
- Phase 4: Polish tasks
- Phase 5: Launch tasks

Each task should be a checkbox item.
Reference the specific spec files for each section.
```

### Build a Section
```
Build the [Section Name] section.

Reference files:
- Style guide: @style-guide.md
- Section spec: @[section-name]-section.md
- PRD: @prd.md

Follow the design specs exactly.
Use the components specified.
Match the reference images.
```

### Iterate on a Section
```
[Paste screenshot of current state]

Changes needed:
1. [Specific change 1]
2. [Specific change 2]

Reference the original inspiration: [paste reference image]
```

---

## Attribution

This framework is derived from the video "How I Build Premium $5k SaaS Websites with AI"
by BuilderSpace (December 2025), which documents a 10-year professional design workflow
adapted for AI-assisted development.

Source: https://www.youtube.com/watch?v=WqSf0noa4hk

---

*"The prep work feels like work. You just want to start building. But that upfront context -
the brief, the mood boards, the style guide, the section specs - that's what separates
a $500 generic website from a $5,000 premium polished one."*
