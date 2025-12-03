---
description: Comprehensive UI audit combining design, accessibility, responsiveness, and performance analysis
---

# UI Audit

A complete quality functor that maps components to multi-dimensional quality assessments. Combines design critique, accessibility, responsiveness, and performance into a unified audit framework.

## Usage

```
/ui-audit [target] [--focus=area]
```

**Targets:** component name, file path, or `--all` for full project

**Focus Areas:** `design`, `a11y`, `responsive`, `performance`, `all`

**Examples:**
```
/ui-audit
/ui-audit Button
/ui-audit src/components/Card.tsx
/ui-audit --focus=a11y
/ui-audit --all --focus=responsive
```

---

## Categorical Framework

```
Audit Functor A: Component -> Quality Report

A = Product of Sub-Functors:
  A(C) = (Design(C), A11y(C), Responsive(C), Performance(C))

Where each sub-functor produces a score in [0, 1]:
  Design:      Visual quality, consistency, aesthetics
  A11y:        Accessibility compliance (WCAG)
  Responsive:  Breakpoint behavior, mobile-first
  Performance: Bundle size, render efficiency

Total Quality:
  Q(C) = w_d * Design(C) + w_a * A11y(C) +
         w_r * Responsive(C) + w_p * Performance(C)

Default weights: w_d=0.30, w_a=0.25, w_r=0.25, w_p=0.20
```

---

## Instructions for Claude

### OBSERVE: Analysis Phase

Analyze the target across all dimensions:

```
1. Read component code
2. Identify framework (React/Vue/Svelte/HTML)
3. Detect design system usage
4. Map all styles and classes
5. List all interactive elements
6. Identify responsive patterns
```

---

## AUDIT DIMENSIONS

### 1. DESIGN AUDIT (30%)

#### Visual Hierarchy
```
Check:
[ ] Clear heading hierarchy (h1 > h2 > h3)
[ ] Primary action stands out
[ ] Secondary elements support primary
[ ] Whitespace creates structure
[ ] Eye flow is logical

Score: ___/10
```

#### Color & Contrast
```
Check:
[ ] Text contrast >= 4.5:1 (WCAG AA)
[ ] Large text contrast >= 3:1
[ ] UI elements contrast >= 3:1
[ ] Color not only indicator
[ ] Palette is harmonious

Score: ___/10
```

#### Typography
```
Check:
[ ] Font scale is consistent
[ ] Line heights appropriate
[ ] Line lengths (45-75 chars)
[ ] Font weights balanced
[ ] Text is readable

Score: ___/10
```

#### Spacing & Layout
```
Check:
[ ] Consistent spacing scale
[ ] Related items grouped
[ ] Adequate breathing room
[ ] Grid/flex properly used
[ ] Alignment is precise

Score: ___/10
```

#### Visual Polish
```
Check:
[ ] Shadows are appropriate
[ ] Borders are consistent
[ ] Radius matches system
[ ] Icons are aligned
[ ] No visual artifacts

Score: ___/10
```

**Design Score:** Sum/50 * 10 = ___/10

---

### 2. ACCESSIBILITY AUDIT (25%)

#### Semantic HTML
```
Check:
[ ] Correct heading order
[ ] Lists use ul/ol/li
[ ] Buttons are <button>
[ ] Links are <a>
[ ] Forms have <form>
[ ] Tables for tabular data

Score: ___/10
```

#### ARIA & Labels
```
Check:
[ ] All inputs have labels
[ ] Icons have aria-label
[ ] Regions labeled
[ ] Live regions where needed
[ ] Role attributes correct

Score: ___/10
```

#### Keyboard Navigation
```
Check:
[ ] All interactive focusable
[ ] Tab order logical
[ ] Focus visible
[ ] No keyboard traps
[ ] Escape closes modals

Score: ___/10
```

#### Screen Reader
```
Check:
[ ] Alt text on images
[ ] Form errors announced
[ ] State changes announced
[ ] Loading states indicated
[ ] Skip links present

Score: ___/10
```

#### Motor Accessibility
```
Check:
[ ] Touch targets >= 44x44px
[ ] Click areas generous
[ ] Drag has alternatives
[ ] Timeouts adequate
[ ] No precision required

Score: ___/10
```

**Accessibility Score:** Sum/50 * 10 = ___/10

---

### 3. RESPONSIVE AUDIT (25%)

#### Mobile (320-639px)
```
Check:
[ ] Content readable
[ ] Touch targets sized
[ ] No horizontal scroll
[ ] Navigation accessible
[ ] Forms usable

Score: ___/10
```

#### Tablet (640-1023px)
```
Check:
[ ] Layout adapts well
[ ] Spacing appropriate
[ ] Images resize
[ ] Grids adjust
[ ] Modals fit

Score: ___/10
```

#### Desktop (1024px+)
```
Check:
[ ] Uses space well
[ ] Not too wide
[ ] Multi-column works
[ ] Hover states present
[ ] Whitespace balanced

Score: ___/10
```

#### Breakpoint Transitions
```
Check:
[ ] No layout breaking
[ ] Content reflows smoothly
[ ] No element overlap
[ ] Images don't distort
[ ] Typography scales

Score: ___/10
```

#### Responsive Patterns
```
Check:
[ ] Mobile-first CSS
[ ] Flexible containers
[ ] Relative units used
[ ] Media queries logical
[ ] Viewport meta tag

Score: ___/10
```

**Responsive Score:** Sum/50 * 10 = ___/10

---

### 4. PERFORMANCE AUDIT (20%)

#### CSS Efficiency
```
Check:
[ ] No unused styles
[ ] Specificity controlled
[ ] No excessive nesting
[ ] Classes reused
[ ] Minimal inline styles

Score: ___/10
```

#### Render Performance
```
Check:
[ ] No layout thrashing
[ ] Animations use transform
[ ] Images optimized
[ ] Lazy loading used
[ ] No heavy shadows

Score: ___/10
```

#### Bundle Impact
```
Check:
[ ] Component tree-shakeable
[ ] No large dependencies
[ ] Code split if needed
[ ] Icons optimized
[ ] Fonts subset

Score: ___/10
```

**Performance Score:** Sum/30 * 10 = ___/10

---

## REASON: Issue Classification

### Severity Levels

| Level    | Description                    | Action     |
|----------|--------------------------------|------------|
| Critical | Breaks functionality/a11y      | Must fix   |
| Major    | Significant UX impact          | Should fix |
| Minor    | Polish issues                  | Nice to fix|
| Info     | Suggestions                    | Consider   |

### Issue Format

```markdown
### [SEVERITY] Issue Title

**Category:** Design | A11y | Responsive | Performance
**Location:** [file:line or selector]
**Current:** [what it is now]
**Expected:** [what it should be]
**Impact:** [why this matters]
**Fix:** [how to fix]
```

---

## DEPLOY: Audit Report Format

```markdown
# UI Audit Report

**Target:** [component/file]
**Date:** [date]
**Auditor:** Claude

---

## Executive Summary

**Overall Score: [X]/10 ([percentage]%)**

| Dimension     | Score | Grade |
|---------------|-------|-------|
| Design        | X/10  | A-F   |
| Accessibility | X/10  | A-F   |
| Responsiveness| X/10  | A-F   |
| Performance   | X/10  | A-F   |

**Status:** [Pass/Needs Work/Critical Issues]

---

## Critical Issues (X)

[List critical issues with full details]

---

## Major Issues (X)

[List major issues with full details]

---

## Minor Issues (X)

[List minor issues with full details]

---

## Detailed Scores

### Design Breakdown
- Visual Hierarchy: X/10
- Color & Contrast: X/10
- Typography: X/10
- Spacing & Layout: X/10
- Visual Polish: X/10

### Accessibility Breakdown
- Semantic HTML: X/10
- ARIA & Labels: X/10
- Keyboard Nav: X/10
- Screen Reader: X/10
- Motor Access: X/10

### Responsive Breakdown
- Mobile: X/10
- Tablet: X/10
- Desktop: X/10
- Transitions: X/10
- Patterns: X/10

### Performance Breakdown
- CSS Efficiency: X/10
- Render Perf: X/10
- Bundle Impact: X/10

---

## Recommended Actions

### Immediate (Critical)
1. [Action 1]
2. [Action 2]

### Short-term (Major)
3. [Action 3]
4. [Action 4]

### When Possible (Minor)
5. [Action 5]

---

## Before/After Comparison

### Issue: [Title]

**Before:**
```[code or description]```

**After:**
```[suggested fix]```

---

## Conclusion

[Summary of findings and recommended next steps]

**Re-audit recommended after:** [addressing critical/major issues]
```

---

## QUICK AUDIT MODE

For rapid assessment, use simplified scoring:

```
/ui-audit --quick

Quick Audit: [Component]

Design:       [##########] 8/10
Accessibility:[########--] 7/10
Responsive:   [#########-] 9/10
Performance:  [########--] 8/10

Overall: 8.0/10 (B+)

Top 3 Issues:
1. [Issue] - [Fix]
2. [Issue] - [Fix]
3. [Issue] - [Fix]
```

---

## VERIFY: Grading Scale

| Score   | Grade | Description              |
|---------|-------|--------------------------|
| 9.5-10  | A+    | Exceptional              |
| 9.0-9.4 | A     | Excellent                |
| 8.5-8.9 | A-    | Very Good                |
| 8.0-8.4 | B+    | Good                     |
| 7.5-7.9 | B     | Above Average            |
| 7.0-7.4 | B-    | Acceptable               |
| 6.0-6.9 | C     | Needs Improvement        |
| 5.0-5.9 | D     | Significant Issues       |
| < 5.0   | F     | Critical Issues          |

**Shipping Threshold:** B- (7.0) minimum
**Quality Target:** A- (8.5) or higher

---

## COMPOSITION WITH OTHER COMMANDS

The audit integrates with the command ecosystem:

```
/ui-audit -> identifies issues
     |
     v
/ui-iterate -> fixes issues
     |
     v
/ui-audit -> verifies fixes (Q improved)
     |
     v
/ui-component -> generates replacements if needed
```

---

## EXAMPLE

**Input:** `/ui-audit LoginForm --focus=a11y`

**Output:**

```markdown
# Accessibility Audit: LoginForm

**Score: 6.5/10 (C+)**

## Critical Issues (2)

### [CRITICAL] Missing form labels
**Location:** LoginForm.tsx:24-36
**Current:** Inputs use placeholder only
**Expected:** Proper <label> elements
**Fix:**
```jsx
<label htmlFor="email" className="sr-only">Email</label>
<input id="email" ... />
```

### [CRITICAL] No focus indicator on submit
**Location:** LoginForm.tsx:45
**Current:** `focus:outline-none` with no replacement
**Expected:** Visible focus ring
**Fix:** Add `focus:ring-2 focus:ring-blue-500`

## Major Issues (1)

### [MAJOR] Error messages not linked
**Location:** LoginForm.tsx:28
**Impact:** Screen readers can't associate errors
**Fix:** Use `aria-describedby` linking to error div

## Recommended Priority

1. Add labels (critical a11y)
2. Add focus indicators (critical a11y)
3. Link error messages (WCAG compliance)

**Re-audit after fixes to target 8.5+**
```

---

**Measure quality. Ship with confidence.**
