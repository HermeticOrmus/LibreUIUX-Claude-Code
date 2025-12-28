# Troubleshooting Guide

> Solutions to common issues when using LibreUIUX with Claude Code.

---

## Quick Diagnostics

Before diving into specific issues, run this checklist:

1. **Is CLAUDE.md in project root?**
   ```bash
   ls -la CLAUDE.md
   ```

2. **Is Claude Code finding it?**
   ```
   # In Claude Code session
   Can you see my CLAUDE.md file?
   ```

3. **Is the file readable?**
   ```bash
   cat CLAUDE.md | head -20
   ```

---

## Common Issues

### 1. Claude Ignores Design System

**Symptom:** Claude generates components that don't match your CLAUDE.md specifications.

**Solutions:**

**A. Explicitly reference the file**
```
Using the design system in CLAUDE.md, create a button component
```

**B. Remind Claude of specifics**
```
Remember: We use rounded-lg for buttons, shadow-md, and blue-500 as primary color
```

**C. Check file location**
- CLAUDE.md must be in the project root (same directory you run `claude` from)
- Not in a subdirectory

**D. Reduce file size**
If CLAUDE.md is very long (>500 lines), Claude may not retain all details. Create a focused version:
```markdown
# Key Design Tokens (Quick Reference)

Primary: blue-500
Radius: rounded-lg
Shadow: shadow-md
Spacing: p-4 default
```

---

### 2. Output Looks Outdated (Bootstrap-era)

**Symptom:** Components have old-fashioned styling despite design system.

**Solutions:**

**A. Use specific modern terms**
```
❌ "Create a card"
✅ "Create a card with glassmorphism, backdrop-blur-md, subtle shadow, and hover lift effect"
```

**B. Reference modern libraries**
```
Create a button like the ones on ui.shadcn.com
```

**C. Specify anti-patterns**
```
Create a modern button. NO Bootstrap styles, NO rounded-pill, NO btn-primary class
```

**D. Use the /ui-modern command**
```
/ui-modern button
```

---

### 3. Inconsistent Results Across Sessions

**Symptom:** Same prompt gives different quality results.

**Solutions:**

**A. Create repeatable templates**
Save working prompts:
```markdown
## Button Template
Create a primary button with:
- bg-blue-500 hover:bg-blue-600
- text-white font-semibold
- px-6 py-3 rounded-lg
- shadow-md hover:shadow-lg
- transition-all duration-200
- active:scale-[0.98]
```

**B. Use command files**
Create `.claude/commands/my-button.md`:
```markdown
# My Button

Create a button with these exact specs:
[paste your working button code]
```

**C. Include example output**
```
Create a card component. Here's an example of what I want:

[paste code of a card you liked]

Make a similar card for [your use case]
```

---

### 4. Missing Hover/Focus States

**Symptom:** Components look static, no interactivity.

**Solutions:**

**A. Explicitly request states**
```
Create a button with all interactive states:
- Hover (color change, shadow lift)
- Focus (ring indicator)
- Active (scale down)
- Disabled (opacity, no pointer)
```

**B. Use the checklist**
```
Create a card. Use the LibreUIUX checklist to ensure all states are included.
```

---

### 5. Not Responsive

**Symptom:** Components break on mobile or different screen sizes.

**Solutions:**

**A. Request mobile-first**
```
Create a responsive card grid:
- 1 column on mobile
- 2 columns on tablet (md)
- 3 columns on desktop (lg)
```

**B. Specify breakpoints**
```
Create a hero section with:
- Mobile: text-3xl, px-4, py-12
- Tablet: text-4xl, px-6, py-16
- Desktop: text-5xl, px-8, py-24
```

**C. Use /ui-responsive command**
```
/ui-responsive [component]
```

---

### 6. Wrong Component Library

**Symptom:** Claude uses Material UI when you wanted Shadcn, or vice versa.

**Solutions:**

**A. Specify in CLAUDE.md**
```markdown
## Component Library
Primary: Shadcn UI (NOT Material UI, NOT Chakra)
```

**B. Specify per-request**
```
Create a dropdown using Shadcn UI patterns (Radix primitives, Tailwind styling)
```

---

### 7. TypeScript Errors

**Symptom:** Generated code has type errors.

**Solutions:**

**A. Request typed output**
```
Create a Button component with full TypeScript types including:
- Props interface
- Correct event handler types
- Proper ref forwarding
```

**B. Specify framework**
```
Create a React component using TypeScript with proper typing. Target React 18+
```

---

### 8. Accessibility Issues

**Symptom:** Missing ARIA labels, poor keyboard navigation.

**Solutions:**

**A. Request a11y explicitly**
```
Create an accessible dropdown:
- ARIA labels
- Keyboard navigation (arrow keys)
- Focus trapping
- Screen reader announcements
```

**B. Reference standards**
```
Create a form following WCAG 2.1 AA guidelines
```

---

### 9. Code Organization Issues

**Symptom:** All code in one file, no separation.

**Solutions:**

**A. Specify structure**
```
Create a Card component with:
- Main component in Card.tsx
- Types in Card.types.ts
- Variants using CVA
```

**B. Request patterns**
```
Create this component following the Shadcn UI file structure
```

---

### 10. Animation Problems

**Symptom:** Animations are choppy, missing, or too aggressive.

**Solutions:**

**A. Specify timing**
```
Add hover animation with:
- duration-200 (200ms)
- ease-out easing
- transform and opacity only (for performance)
```

**B. Request reduced motion**
```
Include @media (prefers-reduced-motion: reduce) fallback
```

---

## Debug Mode

When nothing else works, use debug mode:

```
I'm having issues with component generation. Let's debug:

1. What CLAUDE.md file do you see in my project?
2. What design system colors/spacing are you using?
3. What component library patterns are you following?

Then create a button component explaining each decision.
```

---

## Getting Help

### Check These First
1. [Beginner Guide](./beginner/README.md) - Fundamentals
2. [Design Vocabulary](./beginner/design-vocabulary.md) - Correct terms
3. [Examples](./intermediate/examples/) - Working code

### Still Stuck?
- Open an issue: https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/issues
- Include:
  - Your CLAUDE.md contents
  - The prompt you used
  - What you expected
  - What you got

---

## FAQ

### Q: Does Claude always read CLAUDE.md?
A: Claude Code reads it when starting a session in that directory. For long sessions, you may need to remind it.

### Q: Can I have multiple CLAUDE.md files?
A: Claude reads the one in the directory where you run `claude`. Different projects can have different configs.

### Q: How big can CLAUDE.md be?
A: Aim for under 500 lines. If longer, Claude may not retain all details. Create a "quick reference" section at the top.

### Q: Do the custom commands work immediately?
A: Commands in `.claude/commands/` are available after placing them there. Restart Claude Code if needed.

### Q: Why does Claude sometimes ignore my design system?
A: Context window limits. Remind Claude of key specs in your prompt, or reference the CLAUDE.md explicitly.

---

*Can't find your issue? Open a GitHub issue and we'll help.*
