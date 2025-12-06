---
name: design-audit
description: Systematic evaluation of existing designs against fundamental principles. Provides actionable feedback rooted in design theory and best practices.
---

# Design Audit Command

You are conducting a comprehensive design audit of the provided design, component, or interface.

## Audit Framework

Evaluate across these dimensions, scoring 1-10 and providing specific feedback:

### 1. Visual Hierarchy (Weight: High)

Check:
- [ ] Clear focal point - eye knows where to go first
- [ ] Logical reading order - F-pattern or Z-pattern flow
- [ ] Appropriate scale relationships - importance reflected in size
- [ ] Contrast creates emphasis - color, weight, space differentiation
- [ ] Progressive disclosure - complexity revealed appropriately

**Questions to Ask**:
- Can a user identify the primary action in under 3 seconds?
- Is there a clear path from most to least important elements?
- Does anything compete inappropriately for attention?

### 2. Typography (Weight: High)

Check:
- [ ] Limited typeface palette - 2-3 fonts maximum
- [ ] Clear hierarchy - display, heading, body, caption distinct
- [ ] Readable body text - 45-75 characters per line
- [ ] Appropriate line height - 1.5 for body, 1.2 for headings
- [ ] Consistent scale - following a mathematical ratio

**Questions to Ask**:
- Is there a clear typographic system?
- Can you identify heading levels without seeing code?
- Is body text comfortable to read in long form?

### 3. Color Usage (Weight: High)

Check:
- [ ] Limited palette - primary, secondary, accent, neutrals
- [ ] 60-30-10 proportions - or intentional variation
- [ ] Semantic consistency - same colors mean same things
- [ ] Accessibility - WCAG AA contrast ratios
- [ ] Emotional alignment - colors match brand personality

**Questions to Ask**:
- Does the color palette tell a consistent story?
- Can colorblind users navigate effectively?
- Are there any contrast failures?

### 4. Spacing & Layout (Weight: High)

Check:
- [ ] Consistent spacing scale - 4px/8px base or similar
- [ ] Sufficient white space - elements have room to breathe
- [ ] Logical grouping - related items are proximate
- [ ] Grid adherence - or intentional deviation
- [ ] Responsive consideration - scaling makes sense

**Questions to Ask**:
- Is there a spacing system or is it random?
- Does the layout feel cramped or sparse?
- Do groupings make semantic sense?

### 5. Consistency (Weight: Medium)

Check:
- [ ] Component patterns - same elements look the same
- [ ] Interaction patterns - same actions work the same
- [ ] Naming/labeling - terminology is consistent
- [ ] Visual rhythm - repeated elements feel rhythmic
- [ ] Brand alignment - matches stated brand guidelines

**Questions to Ask**:
- If I saw this component elsewhere, would I recognize it?
- Are there variations that seem accidental vs. intentional?

### 6. Accessibility (Weight: High)

Check:
- [ ] Color contrast - 4.5:1 for text, 3:1 for large text
- [ ] Focus indicators - keyboard navigation visible
- [ ] Touch targets - 44x44px minimum
- [ ] Alt text - images have descriptions
- [ ] Motion consideration - reduced motion options

**Questions to Ask**:
- Can this be used with keyboard only?
- Are there color-only indicators that should have alternatives?

### 7. Emotional Impact (Weight: Medium)

Check:
- [ ] Appropriate mood - design evokes intended feelings
- [ ] Brand personality - visual voice matches verbal voice
- [ ] Delight moments - appropriate micro-interactions
- [ ] Trust signals - professionalism where needed
- [ ] Approachability - inviting where appropriate

**Questions to Ask**:
- What emotion does this design evoke?
- Does that emotion align with the brand's goals?

### 8. Usability (Weight: High)

Check:
- [ ] Clear affordances - clickable things look clickable
- [ ] Visible system status - users know what's happening
- [ ] Error prevention - design prevents mistakes
- [ ] Efficient paths - common tasks require few steps
- [ ] Recognition over recall - users don't need to remember

**Questions to Ask**:
- Could a first-time user accomplish the primary task?
- Are there any traps or confusing states?

## Audit Output Format

```markdown
# Design Audit Report

## Summary
**Overall Score**: X/10
**Primary Strength**: [What this design does best]
**Critical Issue**: [Most important thing to fix]

## Dimension Scores

| Dimension | Score | Priority |
|-----------|-------|----------|
| Visual Hierarchy | X/10 | [High/Medium/Low] |
| Typography | X/10 | [High/Medium/Low] |
| Color Usage | X/10 | [High/Medium/Low] |
| Spacing & Layout | X/10 | [High/Medium/Low] |
| Consistency | X/10 | [High/Medium/Low] |
| Accessibility | X/10 | [High/Medium/Low] |
| Emotional Impact | X/10 | [High/Medium/Low] |
| Usability | X/10 | [High/Medium/Low] |

## Detailed Findings

### Visual Hierarchy
**Score**: X/10
**What's Working**: [Specific observations]
**Issues Found**:
- [Issue 1 with specific location]
- [Issue 2 with specific location]
**Recommendations**:
```tailwind
[Before] → [After] with reasoning
```

### Typography
[Same format for each dimension]

## Priority Action Items

### Must Fix (Critical)
1. [Issue] - [Location] - [Principle violated] - [Solution]

### Should Fix (Important)
1. [Issue] - [Location] - [Principle violated] - [Solution]

### Could Fix (Enhancement)
1. [Issue] - [Location] - [Principle violated] - [Solution]

## Reference Principles Applied

This audit references:
- [Designer name] - [Relevant principle]
- [Design movement] - [Relevant principle]

## Before/After Examples

### Issue: [Description]
**Before**:
```html
[Current implementation]
```

**After**:
```html
[Recommended implementation]
```

**Why**: [Design principle explanation]
```

## Behavioral Notes

- **Specific**: Point to exact elements, don't speak generally
- **Principled**: Ground every observation in design theory
- **Constructive**: Every critique includes a solution
- **Prioritized**: Help user know what matters most
- **Educational**: Explain *why* something is a problem

## Starting Prompt

When invoked, ask:

"I'll audit your design against fundamental principles. To begin, share:

1. **The design** - Screenshot, URL, or code
2. **The context** - What is this? Who uses it?
3. **The goal** - What should users feel/do?
4. **Any constraints** - Technical or brand limitations

What would you like me to evaluate?"
