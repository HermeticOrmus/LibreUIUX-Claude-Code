---
description: Get comprehensive design feedback and improvement suggestions for UI components
---

# UI Design Critique

Analyze UI components and provide specific, actionable design feedback.

## Usage

```
/ui-critique
```

Run this command while viewing a component file to get detailed design feedback.

---

## Instructions for Claude

When the user runs `/ui-critique`, analyze the current component or page and provide comprehensive design feedback.

### 1. Analysis Framework

Review the component across these dimensions:

#### A. Design System Compliance

**Check:**
- Are colors from the design system/palette?
- Is typography following the scale?
- Is spacing consistent with the system?
- Are border radius values standard?
- Are shadows consistent?

**Report:**
```
✅ Design System: Compliant
   - Colors match palette
   - Typography uses scale

⚠️  Design System: Partial compliance
   - Spacing: Using custom values (17px) instead of scale
   - Shadows: Mix of shadow-md and custom values

❌ Design System: Non-compliant
   - Random hex colors used (#E8E8E8 not in palette)
   - Custom font sizes (19px) outside scale
```

#### B. Visual Hierarchy

**Check:**
- Is there clear visual hierarchy?
- Are headings appropriately sized?
- Is important content emphasized?
- Is the eye guided through the layout?

**Report:**
```
✅ Strong visual hierarchy
   - Clear heading sizes (H1 > H2 > H3)
   - Important CTA stands out

⚠️  Weak visual hierarchy
   - Similar sizes for heading and body text
   - CTA button blends into background

Suggestions:
   - Increase H1 from text-2xl to text-4xl
   - Make CTA button bg-blue-600 instead of bg-gray-600
```

#### C. Spacing & Rhythm

**Check:**
- Is whitespace used effectively?
- Is spacing consistent?
- Are elements properly separated?
- Is there breathing room?

**Report:**
```
❌ Spacing issues found:

   1. Inconsistent gaps:
      - Using gap-4, gap-6, and gap-5 in same component
      - Recommendation: Standardize to gap-6

   2. Cramped padding:
      - Card has p-4, feels tight
      - Recommendation: Increase to p-6 or p-8

   3. No section spacing:
      - Elements stack without margin
      - Recommendation: Add space-y-8 to container
```

#### D. Color & Contrast

**Check:**
- Sufficient color contrast (WCAG AA: 4.5:1)?
- Are colors used purposefully?
- Is the palette cohesive?
- Are semantic colors correct (red for errors, green for success)?

**Report:**
```
⚠️  Contrast violations:

   1. Text on background:
      - Current: #666 on #F0F0F0 = 3.2:1
      - Required: 4.5:1 minimum
      - Fix: Use #4B5563 (gray-600) instead

   2. Button text:
      - Current: #FFF on #60A5FA = 3.8:1
      - Fix: Use bg-blue-600 instead of blue-400
```

#### E. Typography

**Check:**
- Font sizes appropriate?
- Line heights comfortable?
- Font weights creating hierarchy?
- Text color has good contrast?

**Report:**
```
✅ Typography: Good
   - Sizes are appropriate
   - Line heights comfortable

⚠️  Minor issues:
   - Body text could be slightly larger (text-base → text-lg)
   - Heading could use font-bold instead of font-semibold
```

#### F. Responsive Design

**Check:**
- Mobile view usable?
- Breakpoints logical?
- Touch targets adequate (44x44px minimum)?
- Text readable at all sizes?

**Report:**
```
❌ Responsive issues:

   1. Mobile breakpoint missing:
      - Grid is 3 columns on all screens
      - Fix: grid-cols-1 md:grid-cols-2 lg:grid-cols-3

   2. Text too large on mobile:
      - H1 is text-6xl on mobile (too big)
      - Fix: text-4xl md:text-5xl lg:text-6xl

   3. Buttons too small on mobile:
      - py-2 gives only 32px height
      - Fix: py-3 md:py-2 (larger on mobile)
```

#### G. Interactions & States

**Check:**
- Hover states present?
- Focus indicators visible?
- Active states clear?
- Transitions smooth?
- Loading states handled?

**Report:**
```
❌ Missing interaction states:

   1. No hover effects:
      - Cards have no hover state
      - Add: hover:shadow-xl hover:-translate-y-1

   2. Poor focus indicators:
      - Button focus ring too subtle
      - Change: focus:ring-2 → focus:ring-4

   3. No transitions:
      - State changes are instant/jarring
      - Add: transition-all duration-200
```

#### H. Accessibility

**Check:**
- Semantic HTML used?
- ARIA labels where needed?
- Keyboard navigation works?
- Color not sole indicator?
- Alt text on images?

**Report:**
```
⚠️  Accessibility issues:

   1. Non-semantic elements:
      - Using <div> for button
      - Fix: Use <button> element

   2. Missing labels:
      - Icon-only button has no aria-label
      - Fix: Add aria-label="Close menu"

   3. Focus trap in modal:
      - Focus can leave modal
      - Fix: Implement focus lock
```

### 2. Modern Design Patterns Check

**Evaluate against current trends:**

```
Modern Design Patterns Assessment:

✅ Using modern patterns:
   - Generous whitespace
   - Subtle shadows
   - Smooth rounded corners

❌ Outdated patterns detected:
   - Heavy borders (3px solid)
   - Boxy design (no border radius)
   - Harsh shadows (large spread, no blur)
   - Gradients look 2010-era

Suggestions:
   - Replace borders with subtle shadows
   - Add rounded-lg or rounded-xl
   - Use softer shadow-lg instead
   - Update gradient to subtle modern style
```

### 3. Specific Improvement Suggestions

**Provide actionable fixes:**

```
## Recommended Changes (in priority order):

### High Priority (Do First):
1. Fix contrast violations:
   - Line 42: Change text-gray-400 to text-gray-600
   - Line 58: Change bg-blue-400 to bg-blue-600

2. Add mobile responsiveness:
   - Line 15: Add grid-cols-1 md:grid-cols-3
   - Line 28: Add text-3xl md:text-5xl

3. Include interaction states:
   - Line 35: Add hover:shadow-xl transition-all duration-300
   - Line 67: Add focus:ring-4 focus:ring-blue-100

### Medium Priority (Do Next):
1. Improve spacing:
   - Line 10: Change p-4 to p-6
   - Line 25: Add space-y-6 to container

2. Strengthen visual hierarchy:
   - Line 18: Increase heading from text-2xl to text-3xl
   - Line 22: Make CTA font-semibold

### Low Priority (Nice to Have):
1. Polish touches:
   - Add subtle hover:scale-105 to cards
   - Round corners more: rounded-lg → rounded-xl
   - Add backdrop-blur to modal
```

### 4. Before/After Examples

**Show specific improvements:**

```
## Example Improvements:

### Before:
```html
<button class="bg-blue-400 text-white px-4 py-2">
  Click me
</button>
```

### After:
```html
<button class="
  bg-blue-600 hover:bg-blue-700 active:bg-blue-800
  text-white font-semibold
  px-6 py-3
  rounded-lg
  shadow-md hover:shadow-lg
  transition-all duration-200
  focus:ring-4 focus:ring-blue-100 focus:outline-none
  active:scale-98
">
  Click me
</button>
```

**What improved:**
- Darker, more accessible blue
- Hover and active states
- Better padding (more comfortable)
- Rounded corners
- Shadow for depth
- Smooth transitions
- Proper focus indicator
- Tactile active state
```

### 5. Comparison to Best Practices

**Benchmark against standards:**

```
## Best Practices Scorecard:

Design System Compliance:  6/10 ⚠️
Visual Hierarchy:          8/10 ✅
Spacing & Rhythm:          5/10 ⚠️
Color & Contrast:          4/10 ❌
Typography:                7/10 ✅
Responsive Design:         3/10 ❌
Interactions & States:     5/10 ⚠️
Accessibility:             6/10 ⚠️

Overall Score: 5.5/10 (Needs improvement)

Top 3 priorities to improve score:
1. Fix responsive design (biggest impact)
2. Improve color contrast (accessibility)
3. Add interaction states (polish)
```

### 6. Positive Feedback

**Also highlight what's working well:**

```
## What's Working Well:

✅ Typography hierarchy is clear
✅ Layout structure is logical
✅ Color palette is cohesive
✅ Code is clean and readable
✅ Using modern rounded corners

Keep these strengths while addressing the issues above!
```

### 7. Resources & References

**Provide helpful links:**

```
## Helpful Resources:

For contrast checking:
- https://contrast-ratio.com
- Chrome DevTools contrast checker

For design inspiration:
- https://ui.shadcn.com
- https://tailwindui.com
- https://21st.dev

For accessibility:
- https://www.w3.org/WAI/WCAG21/quickref/
- https://wave.webaim.org/
```

---

## Output Format

Structure the critique like this:

```markdown
# UI Design Critique

## Summary
[Brief overview of overall quality and main issues]

## Detailed Analysis

### ✅ Strengths
[List what's working well]

### ⚠️  Issues Found
[Categorized list of issues with severity]

### ❌ Critical Problems
[Must-fix issues]

## Specific Recommendations

### High Priority
[Ordered list with line numbers and exact changes]

### Medium Priority
[Nice-to-have improvements]

### Low Priority
[Polish and refinements]

## Before/After Examples
[Show specific improvements with code]

## Best Practices Score
[Scorecard across dimensions]

## Resources
[Helpful links and tools]

---

**Next Steps:**
1. [First thing to do]
2. [Second thing to do]
3. [Third thing to do]
```

---

## Quality Standards

Critique should be:

- [ ] Specific (line numbers, exact values)
- [ ] Actionable (clear what to change)
- [ ] Prioritized (high/medium/low)
- [ ] Balanced (positives and negatives)
- [ ] Educational (explain why, not just what)
- [ ] Referenced (links to standards/tools)

---

**Get actionable design feedback to improve your UI!** 🎨
