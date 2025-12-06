# Design Principles Checklist

Use this checklist to evaluate any design against fundamental principles.

## Quick Scan (30 seconds)

- [ ] **Clear focal point** - Eye knows where to go first
- [ ] **Readable hierarchy** - Importance is obvious
- [ ] **Sufficient contrast** - Text is legible
- [ ] **Breathing room** - Elements aren't cramped
- [ ] **Consistent patterns** - Similar things look similar

## Visual Hierarchy

- [ ] Primary element is unmistakably prominent
- [ ] Secondary elements support without competing
- [ ] Scale differences are meaningful (not random)
- [ ] Color usage guides attention appropriately
- [ ] Position reflects importance (top-left most important in LTR)

## Gestalt Principles

### Proximity
- [ ] Related items are grouped together
- [ ] Unrelated groups have clear separation
- [ ] Spacing is intentional, not arbitrary

### Similarity
- [ ] Same types of elements share visual treatment
- [ ] Differences between types are obvious
- [ ] No accidental visual confusion

### Continuity
- [ ] Eye can follow logical reading paths
- [ ] No unexpected breaks in visual flow
- [ ] Navigation feels natural

### Closure
- [ ] Incomplete shapes still read correctly
- [ ] Groupings are understood without explicit boxes
- [ ] Implied lines function as intended

### Figure/Ground
- [ ] Clear distinction between content and background
- [ ] No ambiguity about what's interactive
- [ ] Layers are understood at a glance

## Typography

- [ ] Maximum 2-3 typeface families
- [ ] Clear size hierarchy (title → heading → body → caption)
- [ ] Line length is comfortable (45-75 characters)
- [ ] Line height supports readability
- [ ] Font choices match brand personality

## Color

- [ ] Limited, intentional palette (not rainbow)
- [ ] 60-30-10 proportions (or deliberate variation)
- [ ] Same colors mean same things throughout
- [ ] All text passes WCAG AA contrast (4.5:1)
- [ ] UI elements have 3:1 contrast minimum
- [ ] Works for colorblind users (check with simulator)

## Spacing & Layout

- [ ] Consistent spacing scale (multiples of 4px or 8px)
- [ ] Generous white space around important elements
- [ ] Grid system creates predictable rhythm
- [ ] Responsive behavior is considered
- [ ] Touch targets are at least 44x44px

## Alignment

- [ ] Elements share common edges/axes
- [ ] No "almost aligned" situations
- [ ] Grid discipline is maintained
- [ ] Intentional breaks from grid are obvious

## Balance

- [ ] Visual weight is distributed appropriately
- [ ] Nothing feels like it's "falling off"
- [ ] Symmetry or asymmetry is intentional
- [ ] White space balances content density

## Contrast

- [ ] Size contrast creates hierarchy
- [ ] Color contrast guides attention
- [ ] Weight contrast (bold/light) is used purposefully
- [ ] Enough variety to prevent monotony

## Consistency

- [ ] Same components look the same everywhere
- [ ] Patterns are predictable
- [ ] Variations have clear purpose
- [ ] Nothing looks like a mistake

## Accessibility

- [ ] Color contrast passes WCAG AA
- [ ] Interactive elements have focus states
- [ ] No information conveyed by color alone
- [ ] Touch targets are large enough
- [ ] Motion can be reduced if needed
- [ ] Screen reader order makes sense

## Unity

- [ ] Everything feels like part of the same system
- [ ] No orphan elements that don't belong
- [ ] Brand personality is consistent
- [ ] Design tokens are applied systematically

---

## Scoring Guide

### How to Use
Rate each section 1-5:
- 1 = Major issues
- 2 = Significant problems
- 3 = Adequate
- 4 = Good
- 5 = Excellent

### Priority Matrix

| Score Range | Action |
|-------------|--------|
| 1-2 | Must fix before shipping |
| 3 | Should fix if time allows |
| 4-5 | Acceptable |

### Section Weights

| Section | Weight |
|---------|--------|
| Visual Hierarchy | High |
| Typography | High |
| Color | High |
| Accessibility | High |
| Gestalt | Medium |
| Spacing & Layout | Medium |
| Consistency | Medium |
| Alignment | Low |
| Balance | Low |
| Contrast | Low |
| Unity | Low |

---

## Common Failures & Fixes

| Issue | Principle Violated | Quick Fix |
|-------|-------------------|-----------|
| "It feels cluttered" | White Space | Increase padding by 50% |
| "I don't know where to look" | Hierarchy | Make one thing 2x larger |
| "It feels disconnected" | Unity | Apply consistent border-radius |
| "It's hard to read" | Contrast | Increase to 4.5:1 ratio |
| "Things seem random" | Alignment | Snap to 8-column grid |
| "Groups are confusing" | Proximity | Add 2x space between groups |
| "It feels amateur" | Consistency | Audit and unify similar elements |
