---
description: Iterate and refine UI components with structured feedback for rapid convergence
---

# UI Iteration Guide

A monadic approach to component refinement. Each iteration is a quality-improving morphism that converges toward the ideal implementation.

## Usage

```
/ui-iterate [target]
```

**Examples:**
```
/ui-iterate                    # General iteration guidance
/ui-iterate hero-section       # Iterate on specific component
/ui-iterate --from-screenshot  # Iterate from visual reference
```

---

## Categorical Framework

```
Iteration Monad M:

M = (Component, return, bind)

Where:
- return: Spec -> Component (initial generation)
- bind: Component -> (Feedback -> Component) -> Component

Quality Convergence:
Q(iterate(C)) >= Q(C)

The join operation (flatten) represents quality convergence:
iterate . iterate . iterate -> stable high-quality state
```

**Convergence Guarantee:**
Each iteration strictly improves quality score until Q >= 0.95

---

## Instructions for Claude

### THE ITERATION LOOP

```
          +------------------+
          |  1. OBSERVE     |
          |  View & Inspect  |
          +--------+---------+
                   |
                   v
          +--------+---------+
          |  2. REASON      |
          |  Identify Issues |
          +--------+---------+
                   |
                   v
          +--------+---------+
          |  3. CREATE      |
          |  Apply Fixes     |
          +--------+---------+
                   |
                   v
          +--------+---------+
          |  4. VERIFY      |
          |  Check Quality   |
          +--------+---------+
                   |
           Q >= 0.95? -----> Done!
                   |
                   No
                   |
                   v
            Loop back to 1
```

---

## OBSERVE: Structured Inspection

Guide the user through systematic observation:

### Spacing Audit
```
Check these spacing issues:

[ ] Padding inside containers
    Current: _____ Expected: _____

[ ] Margin between elements
    Current: _____ Expected: _____

[ ] Gap in flex/grid layouts
    Current: _____ Expected: _____

[ ] Section whitespace
    Current: _____ Expected: _____
```

### Typography Audit
```
Check these typography issues:

[ ] Font size
    Current: _____ Expected: _____

[ ] Font weight
    Current: _____ Expected: _____

[ ] Line height
    Current: _____ Expected: _____

[ ] Color/contrast
    Current: _____ Expected: _____
```

### Visual Audit
```
Check these visual issues:

[ ] Colors match design system?
    Issue: _____

[ ] Border radius consistent?
    Issue: _____

[ ] Shadows appropriate?
    Issue: _____

[ ] Borders correct?
    Issue: _____
```

### Interaction Audit
```
Check these interaction issues:

[ ] Hover effects present?
    Issue: _____

[ ] Transition smooth?
    Issue: _____

[ ] Focus visible?
    Issue: _____

[ ] Active state clear?
    Issue: _____
```

### Responsive Audit
```
Check at each breakpoint:

[ ] Mobile (320-639px)
    Issue: _____

[ ] Tablet (640-1023px)
    Issue: _____

[ ] Desktop (1024px+)
    Issue: _____
```

---

## REASON: Issue Specification

Transform vague feedback into precise specifications:

### The Change Pattern

```
CHANGE: [property]
FROM:   [current value]
TO:     [desired value]
REASON: [why this improves quality]
```

### Bad vs Good Feedback

| Bad (Vague)           | Good (Specific)                          |
|-----------------------|------------------------------------------|
| "looks off"           | Change padding from p-4 to p-6           |
| "spacing is weird"    | Change gap from gap-2 to gap-4           |
| "needs more pop"      | Change shadow from shadow-md to shadow-lg|
| "text is hard to read"| Change text-gray-400 to text-gray-600    |
| "button is boring"    | Add hover:scale-105 transition           |

### Feedback Template

When identifying issues, use this format:

```markdown
## Iteration [N] Feedback

### High Priority (Must Fix)
1. CHANGE: [property]
   FROM: [current]
   TO: [desired]

2. CHANGE: [property]
   FROM: [current]
   TO: [desired]

### Medium Priority (Should Fix)
3. CHANGE: [property]
   FROM: [current]
   TO: [desired]

### Low Priority (Nice to Have)
4. CHANGE: [property]
   FROM: [current]
   TO: [desired]
```

---

## CREATE: Applying Changes

### Batch by Category

Apply changes in logical groups:

**Round 1: Spacing**
```
Apply these spacing changes:
- Card padding: p-4 -> p-6
- Element gap: gap-2 -> gap-4
- Section margin: my-8 -> my-12
```

**Round 2: Typography**
```
Apply these typography changes:
- Heading size: text-2xl -> text-3xl
- Body weight: font-normal -> font-medium
- Line height: leading-normal -> leading-relaxed
```

**Round 3: Visual**
```
Apply these visual changes:
- Shadow: shadow-md -> shadow-lg
- Radius: rounded-lg -> rounded-xl
- Border: border-gray-200 -> border-gray-300
```

**Round 4: Interactions**
```
Apply these interaction changes:
- Add: hover:-translate-y-1
- Add: hover:shadow-xl
- Duration: duration-200 -> duration-300
```

### One Category Per Iteration

```
Iteration 1: Fix all spacing issues
     |
     v
Iteration 2: Fix all typography issues
     |
     v
Iteration 3: Fix all visual issues
     |
     v
Iteration 4: Fix all interaction issues
     |
     v
Iteration 5: Final polish
```

---

## VERIFY: Quality Scoring

After each iteration, compute quality score:

```
Q(Component) = weighted average of:

  Spacing      (0.20): ___/10
  Typography   (0.15): ___/10
  Colors       (0.15): ___/10
  Shadows      (0.10): ___/10
  Interactions (0.15): ___/10
  Responsive   (0.15): ___/10
  Accessibility(0.10): ___/10

  Total: ____/10 = ____%
```

### Quality Thresholds

| Score    | Status      | Action                    |
|----------|-------------|---------------------------|
| < 70%    | Needs Work  | Major iteration needed    |
| 70-84%   | Acceptable  | Polish iteration needed   |
| 85-94%   | Good        | Minor tweaks              |
| >= 95%   | Excellent   | Ready to ship             |

### Convergence Check

```
Iteration 1: Q = 65% (baseline)
Iteration 2: Q = 78% (+13%)
Iteration 3: Q = 88% (+10%)
Iteration 4: Q = 94% (+6%)
Iteration 5: Q = 97% (+3%) <- Converged!

If Q(n) - Q(n-1) < 2%, consider converged.
```

---

## ITERATION TEMPLATES

### Quick Iteration (5 min)

```markdown
## Quick Iteration Check

Looking at [component], I see:

**Spacing:** [ok/issue]
**Typography:** [ok/issue]
**Colors:** [ok/issue]
**Interactions:** [ok/issue]

Quick fixes:
1. Change [X] from [Y] to [Z]
2. Change [X] from [Y] to [Z]
3. Change [X] from [Y] to [Z]

Apply these changes.
```

### Deep Iteration (15 min)

```markdown
## Deep Iteration Analysis

### Current State Assessment
[Screenshot or description]

### Issue Analysis by Category

**Spacing Issues:**
- [ ] Issue 1: [specific]
- [ ] Issue 2: [specific]

**Typography Issues:**
- [ ] Issue 1: [specific]
- [ ] Issue 2: [specific]

**Visual Issues:**
- [ ] Issue 1: [specific]
- [ ] Issue 2: [specific]

**Interaction Issues:**
- [ ] Issue 1: [specific]
- [ ] Issue 2: [specific]

**Responsive Issues:**
- [ ] Issue 1: [specific]
- [ ] Issue 2: [specific]

### Prioritized Changes

**Must Fix:**
1. [Change specification]
2. [Change specification]

**Should Fix:**
3. [Change specification]
4. [Change specification]

**Nice to Have:**
5. [Change specification]

### Expected Quality Score After
Current: ___% -> Target: ___%
```

---

## ORCHESTRATE: Multi-Component Iteration

When iterating on multiple related components:

```
Iteration Strategy:

1. Identify shared patterns
   - Common spacing
   - Shared colors
   - Consistent typography

2. Fix shared patterns first
   - Update base styles
   - Apply to all components

3. Then fix component-specific issues
   - Individual adjustments
   - Context-specific tweaks

4. Verify consistency
   - All components coherent
   - Design system followed
```

---

## LEARN: Iteration Insights

After completing iterations, document learnings:

```markdown
## Iteration Log: [Component]

**Date:** [date]
**Iterations:** [count]
**Final Quality:** [score]%

### What Worked
- [Insight 1]
- [Insight 2]

### Common Issues Found
- [Pattern 1]
- [Pattern 2]

### For Next Time
- [Improvement 1]
- [Improvement 2]
```

---

## EXAMPLE SESSION

**User:** `/ui-iterate pricing-card`

**Claude:**

```markdown
## Iteration Analysis: Pricing Card

### OBSERVE
I'll analyze the pricing card across key dimensions:

**Current State:**
- Container: bg-white rounded-lg shadow-sm p-4
- Title: text-xl font-bold
- Price: text-3xl
- Features: list with checks
- CTA: basic button

### REASON: Issues Identified

**Spacing (Q: 6/10)**
1. CHANGE: padding
   FROM: p-4 (16px)
   TO: p-8 (32px)
   REASON: Cards need generous padding

2. CHANGE: feature list gap
   FROM: gap-2
   TO: gap-3
   REASON: Improve readability

**Visual (Q: 5/10)**
3. CHANGE: shadow
   FROM: shadow-sm
   TO: shadow-xl
   REASON: Pricing cards need prominence

4. CHANGE: border-radius
   FROM: rounded-lg
   TO: rounded-2xl
   REASON: Modern aesthetic

**Interactions (Q: 4/10)**
5. CHANGE: hover
   FROM: none
   TO: hover:-translate-y-2 hover:shadow-2xl
   REASON: Interactive feedback

### Current Quality: 60%

Shall I apply these changes? (yes/specific ones/adjust)
```

---

**Converge rapidly. Ship confidently.**
