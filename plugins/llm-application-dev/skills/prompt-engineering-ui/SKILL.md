---
name: prompt-engineering-ui
description: Prompt patterns for consistent UI generation. Covers precise design intent communication, component specification formats, and iterative refinement patterns for LLM-driven UI development.
---

# Prompt Engineering for UI Generation

Master the art of communicating design intent to LLMs. This skill covers prompt patterns specifically optimized for generating consistent, high-quality user interfaces.

---

## When to Use This Skill

- Writing prompts that generate consistent UI components
- Describing design intent precisely to AI systems
- Building reusable prompt templates for design systems
- Iterating on UI generation with structured feedback
- Creating few-shot examples for UI patterns
- Debugging inconsistent UI generation outputs

---

## The UI Prompting Challenge

UI generation is uniquely challenging because it requires:

1. **Visual precision** - Exact spacing, colors, typography
2. **Behavioral specification** - Interactions, states, animations
3. **Contextual coherence** - Fitting within a design system
4. **Accessibility compliance** - WCAG, ARIA, keyboard navigation
5. **Responsive adaptation** - Multiple breakpoints, devices
6. **Code quality** - Clean, maintainable output

Standard prompting techniques often fail because UI is simultaneously visual, behavioral, and technical.

---

## Core Prompt Patterns

### Pattern 1: The Component Contract

Define components as contracts with explicit input/output specifications.

```markdown
## Component Contract: DataTable

### Purpose
Display tabular data with sorting, filtering, and pagination.

### Props (Inputs)
| Prop | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| data | T[] | Yes | - | Array of data objects |
| columns | ColumnDef[] | Yes | - | Column configuration |
| pageSize | number | No | 10 | Rows per page |
| sortable | boolean | No | true | Enable column sorting |
| filterable | boolean | No | false | Show filter inputs |

### Visual Specification
- **Container**: bg-white rounded-lg shadow-sm border border-gray-200
- **Header row**: bg-gray-50 text-gray-600 text-sm font-medium
- **Data rows**: hover:bg-gray-50 border-b border-gray-100
- **Typography**: Font-sans, body text 14px, headers 12px uppercase
- **Spacing**: Cell padding 12px horizontal, 8px vertical

### States
1. **Loading**: Skeleton rows with pulse animation
2. **Empty**: Centered message with icon
3. **Error**: Red border, error message below
4. **Selected**: bg-blue-50, left border accent

### Accessibility Requirements
- role="table" on container
- Sortable columns announce sort direction
- Focus visible on all interactive elements
- Keyboard navigation: Tab through headers, Enter to sort

### Output Format
React TypeScript component using Tailwind CSS.
Include JSDoc comments and prop types.
```

**Why This Works**:
- Explicit contract eliminates ambiguity
- Visual specs use actual CSS values
- States prevent incomplete implementations
- Accessibility is non-negotiable requirement

---

### Pattern 2: Design Token Injection

Embed design tokens directly in prompts for consistency.

```markdown
Generate a Card component following these design tokens:

## Tokens
```json
{
  "spacing": {
    "xs": "4px",
    "sm": "8px",
    "md": "16px",
    "lg": "24px",
    "xl": "32px"
  },
  "colors": {
    "surface": {
      "primary": "#FFFFFF",
      "secondary": "#F9FAFB",
      "elevated": "#FFFFFF"
    },
    "border": {
      "subtle": "#E5E7EB",
      "default": "#D1D5DB"
    },
    "shadow": {
      "sm": "0 1px 2px rgba(0,0,0,0.05)",
      "md": "0 4px 6px rgba(0,0,0,0.1)"
    }
  },
  "radius": {
    "sm": "4px",
    "md": "8px",
    "lg": "12px"
  }
}
```

## Requirements
- Card uses `surface.elevated` background
- Border uses `border.subtle`
- Padding uses `spacing.lg`
- Border radius uses `radius.lg`
- Shadow uses `shadow.md`

Map these tokens to Tailwind classes where possible.
```

**Token Mapping Strategy**:
```typescript
// Prompt can include this mapping guide
const tokenToTailwind = {
  "spacing.xs": "p-1",
  "spacing.sm": "p-2",
  "spacing.md": "p-4",
  "spacing.lg": "p-6",
  "spacing.xl": "p-8",
  "colors.surface.primary": "bg-white",
  "colors.surface.secondary": "bg-gray-50",
  "colors.border.subtle": "border-gray-200",
  "radius.lg": "rounded-xl",
  "shadow.md": "shadow-md",
};
```

---

### Pattern 3: Visual Reference Chain

Chain visual descriptions from abstract to concrete.

```markdown
## Component: Hero Section

### Mood (Abstract)
Confident, minimal, focused. The user should feel capable and unintimidated.

### Aesthetic (Semi-Abstract)
- Clean sans-serif typography
- Generous whitespace (40% of viewport)
- Single accent color for CTAs
- Photography: abstract, not literal

### Visual Details (Concrete)
- **Layout**: Centered, max-width 1200px, py-24
- **Headline**: text-5xl font-bold tracking-tight text-gray-900
- **Subheadline**: text-xl text-gray-600 max-w-2xl mx-auto mt-6
- **CTA Group**: mt-10 flex gap-4 justify-center
- **Primary CTA**: bg-indigo-600 hover:bg-indigo-700 text-white px-8 py-4 rounded-lg
- **Secondary CTA**: border border-gray-300 text-gray-700 px-8 py-4 rounded-lg

### Content
- Headline: "Build interfaces that inspire"
- Subheadline: "The design system that empowers creators to ship beautiful products faster."
- Primary CTA: "Get Started"
- Secondary CTA: "Learn More"
```

**The Chain**:
```
Mood → Aesthetic → Visual Details → Content
 ↓         ↓            ↓            ↓
Emotion   Style     CSS Values    Text
```

This pattern works because it builds from intention to implementation.

---

### Pattern 4: State Machine Specification

Define component states as a state machine.

```markdown
## Button Component States

### State Machine
```
idle → hover → pressed → idle
  ↓       ↓        ↓
focus  focus   focus
  ↓       ↓        ↓
disabled (terminal)
loading (blocks all transitions)
```

### State Definitions

| State | Visual Treatment | Tailwind Classes |
|-------|------------------|------------------|
| idle | Default appearance | bg-blue-600 text-white |
| hover | Slightly darker | hover:bg-blue-700 |
| focus | Ring indicator | focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 |
| pressed | Darker, slight scale | active:bg-blue-800 active:scale-[0.98] |
| disabled | Muted, no pointer | disabled:bg-gray-300 disabled:cursor-not-allowed |
| loading | Spinner, no text | Spinner SVG, opacity-50, pointer-events-none |

### Transitions
- All transitions: `transition-all duration-150 ease-in-out`
- Scale transitions: spring-like (use framer-motion if available)

### Implementation Notes
- Use `<button>` element, never `<div>`
- disabled state must be set via HTML attribute
- loading should set aria-busy="true"
```

---

### Pattern 5: Constraint-First Prompting

Lead with constraints to narrow the solution space.

```markdown
## Constraints (Non-Negotiable)

### Technical Constraints
- React 18+ with TypeScript strict mode
- Tailwind CSS only (no CSS-in-JS)
- No external component libraries
- Bundle size: component must be < 5KB gzipped

### Design Constraints
- Must pass WCAG 2.1 AA
- Must work without JavaScript (progressive enhancement)
- Must support RTL layouts
- Color contrast ratio >= 4.5:1

### Browser Support
- Chrome 90+, Firefox 88+, Safari 14+, Edge 90+
- No IE11 support required

### Performance Constraints
- First paint < 100ms
- No layout shift on load
- Images must be lazy-loaded

---

## Now, generate a Modal component that satisfies all constraints above.
```

**Why Constraints First**:
- Eliminates invalid solutions immediately
- Focuses generation on viable approaches
- Makes review easier (checklist validation)
- Prevents "creative" solutions that break requirements

---

## Iterative Refinement Patterns

### The Feedback Loop Protocol

Structure feedback for effective iteration:

```markdown
## Iteration 1 Feedback

### What Works
- Component structure is correct
- Props interface is well-typed
- Basic styling matches tokens

### What Needs Fixing

#### Critical (Must Fix)
1. **Missing keyboard navigation**
   - Current: Only mouse interaction works
   - Required: Arrow keys to navigate, Enter to select
   - Reference: WAI-ARIA Listbox pattern

2. **Color contrast failure**
   - Current: text-gray-400 on bg-white (ratio 2.5:1)
   - Required: Minimum 4.5:1 for body text
   - Fix: Use text-gray-600 (ratio 5.7:1)

#### Important (Should Fix)
3. **Animation too fast**
   - Current: duration-75
   - Recommended: duration-150 for better perception

#### Nice to Have
4. Consider adding subtle shadow on hover

### Revised Requirements
Regenerate the component addressing Critical and Important items.
```

---

### The Diff-Based Refinement

Request specific changes rather than full regeneration:

```markdown
## Current Component

```tsx
<button className="bg-blue-500 text-white px-4 py-2 rounded">
  Click me
</button>
```

## Requested Changes

1. **Add hover state**: bg-blue-600 on hover
2. **Add focus ring**: ring-2 ring-blue-500 ring-offset-2 on focus
3. **Add disabled state**: Prop + visual treatment
4. **Add loading state**: Spinner + loading prop

## Output Format
Show only the modified code with inline comments explaining each change.
```

---

### The A/B Variant Request

Request multiple options for comparison:

```markdown
Generate 3 variants of a Card component:

## Variant A: Minimal
- No shadow
- Hairline border only
- Maximum whitespace

## Variant B: Elevated
- Pronounced shadow
- No visible border
- Subtle hover lift effect

## Variant C: Outlined
- Thick left accent border
- Light background fill
- Category color coding

## Common Requirements (All Variants)
- Same prop interface
- Same content structure
- Same responsive behavior
- Same accessibility

## Output
Provide all three variants as separate components.
Include a brief rationale for when to use each.
```

---

## Few-Shot Examples for UI

### Example: Button Variants

```markdown
## Few-Shot Examples: Button Component

### Example 1: Primary Button
Input: Primary action button with "Submit" text
Output:
```tsx
<button className="bg-indigo-600 hover:bg-indigo-700 text-white font-medium py-2.5 px-5 rounded-lg transition-colors focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
  Submit
</button>
```

### Example 2: Secondary Button
Input: Secondary action button with "Cancel" text
Output:
```tsx
<button className="bg-white hover:bg-gray-50 text-gray-700 font-medium py-2.5 px-5 rounded-lg border border-gray-300 transition-colors focus:ring-2 focus:ring-gray-500 focus:ring-offset-2">
  Cancel
</button>
```

### Example 3: Danger Button
Input: Destructive action button with "Delete" text
Output:
```tsx
<button className="bg-red-600 hover:bg-red-700 text-white font-medium py-2.5 px-5 rounded-lg transition-colors focus:ring-2 focus:ring-red-500 focus:ring-offset-2">
  Delete
</button>
```

---

Now generate: Ghost button with "Learn More" text
```

**Pattern Recognition**:
- Consistent class structure across examples
- Clear input-output mapping
- Similar complexity level
- Demonstrates the pattern, not just the answer

---

## Prompt Templates

### Template: Component Generation

```markdown
# Generate: {ComponentName}

## Context
Project: {ProjectDescription}
Design System: {DesignSystemName}
Framework: React + TypeScript + Tailwind

## Design Tokens
{DesignTokensJSON}

## Component Specification
Purpose: {ComponentPurpose}
Props: {PropsTable}
States: {StatesList}
Variants: {VariantsList}

## Visual Requirements
Layout: {LayoutDescription}
Typography: {TypographySpecs}
Colors: {ColorSpecs}
Spacing: {SpacingSpecs}

## Behavior
Interactions: {InteractionList}
Animations: {AnimationSpecs}
Accessibility: {A11yRequirements}

## Constraints
{ConstraintsList}

## Output
Provide production-ready React TypeScript component.
Include prop types, JSDoc comments, and usage example.
```

### Template: Design Review

```markdown
# Review: {ComponentCode}

## Review Criteria

### Design Fidelity
- Does it match the design tokens?
- Is spacing consistent?
- Are colors correct?

### Accessibility
- Keyboard navigable?
- Screen reader friendly?
- Color contrast sufficient?

### Code Quality
- Types correct?
- Props well-named?
- Logic clear?

### Performance
- Unnecessary re-renders?
- Bundle size reasonable?
- Animations performant?

## Output Format
For each criterion, provide:
- Score (1-5)
- Issues found
- Specific fixes needed
```

---

## Anti-Patterns in UI Prompting

### 1. Vague Aesthetic Descriptions
**Bad**: "Make it look modern and clean"
**Good**: "Use Inter font, 16px base, 1.5 line-height, 24px vertical rhythm"

### 2. Missing State Coverage
**Bad**: "Create a button"
**Good**: "Create a button with idle, hover, focus, active, disabled, and loading states"

### 3. No Design System Context
**Bad**: "Use a nice blue"
**Good**: "Use the primary color from the design tokens: #4F46E5"

### 4. Implicit Accessibility
**Bad**: "Make it accessible"
**Good**: "Include ARIA labels, keyboard navigation per WAI-ARIA Listbox pattern, focus indicators"

### 5. One-Shot Expectation
**Bad**: Expecting perfect output on first try
**Good**: Plan for 2-3 refinement iterations with structured feedback

---

## Quick Reference

| Situation | Pattern to Use |
|-----------|----------------|
| New component | Component Contract |
| Ensure consistency | Design Token Injection |
| Explain visual intent | Visual Reference Chain |
| Complex interactions | State Machine Specification |
| Avoid rework | Constraint-First Prompting |
| Improving output | Feedback Loop Protocol |
| Minor adjustments | Diff-Based Refinement |
| Exploring options | A/B Variant Request |

---

## Integration with Other Skills

This skill pairs well with:
- `agent-orchestration/ui-agent-patterns` - Prompt patterns for agent delegation
- `context-management/design-system-context` - Loading tokens into prompts
- `llm-application-dev/prompt-engineering-patterns` - General prompting foundations
- `design-mastery/design-principles` - Visual vocabulary for descriptions

---

*"A precise prompt is a precise thought. The UI emerges from the clarity of intention."*
