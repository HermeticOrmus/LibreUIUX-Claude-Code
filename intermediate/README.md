# 🟡 Intermediate Guide: Systematic UI/UX Workflows

Welcome to the intermediate level! Here you'll learn to build **consistent, scalable design systems** and establish **repeatable workflows** for Claude Code.

---

## 🎯 Your Goal

Move from ad-hoc component requests to systematic design thinking:

**Before (Beginner)**:
- Request components one-by-one
- Different styles across project
- Reinvent the wheel each time

**After (Intermediate)**:
- Establish a design system
- Consistent components automatically
- Efficient iteration workflows
- Component library integration

---

## 📚 What You'll Learn

### 1. Design Systems
Create comprehensive design systems that Claude can reference:
- [Modern Web App Design System](./design-systems/modern-web-app.md)
- [SaaS Platform Design System](./design-systems/saas-platform.md)
- [Mobile-First Design System](./design-systems/mobile-first.md)

### 2. CLAUDE.md Templates
Set up project-specific instructions:
- [What is CLAUDE.md?](./claude-md-templates/README.md)
- [Web App Template](./claude-md-templates/web-app.md)
- [E-commerce Template](./claude-md-templates/ecommerce.md)
- [Dashboard Template](./claude-md-templates/dashboard.md)

### 3. Component Library Integration
Leverage existing component libraries:
- [Shadcn UI Guide](./component-libraries/shadcn-ui.md)
- [Aceternity UI Guide](./component-libraries/aceternity.md)
- [Motion Primitives Guide](./component-libraries/motion-primitives.md)
- [Library Comparison](./component-libraries/comparison.md)

### 4. Iteration Workflows
Efficient processes for refining components:
- [The Iteration Workflow](./workflows/iteration-workflow.md)
- [Browser Inspection Method](./workflows/browser-inspection.md)

### 5. Real-World Examples
Learn from production projects:
- [SaaS Dashboard Example](./examples/saas-dashboard/)
- [E-commerce Product Page](./examples/ecommerce-product/)
- [Marketing Landing Page](./examples/landing-page/)

---

## 🚀 Quick Start: Your First Design System

### Step 1: Choose a Template

Pick a design system template that matches your project:

```bash
# Modern web app
cat intermediate/design-systems/modern-web-app.md

# SaaS product
cat intermediate/design-systems/saas-platform.md

# Mobile app
cat intermediate/design-systems/mobile-first.md
```

### Step 2: Create CLAUDE.md

Copy a template to your project root:

```bash
cp intermediate/claude-md-templates/web-app.md ./CLAUDE.md
```

Edit it with your:
- Color palette
- Typography scale
- Spacing system
- Component preferences

### Step 3: Test It

Request a component from Claude:
```
Following the design system in CLAUDE.md, create a hero section
```

Claude will automatically reference your design system!

---

## 🎨 Design System Fundamentals

### What is a Design System?

A design system is a **single source of truth** for your UI:

1. **Design Tokens**: Colors, spacing, typography
2. **Components**: Reusable UI elements
3. **Patterns**: Common layouts and interactions
4. **Guidelines**: When and how to use each element

### Why Use a Design System?

✅ **Consistency**: Every component looks cohesive
✅ **Efficiency**: Faster development
✅ **Scalability**: Easy to maintain and extend
✅ **Communication**: Clear language with Claude
✅ **Quality**: Professional, polished results

### Minimal Design System

Even a simple system helps:

```markdown
# My Design System

## Colors
- Primary: #3B82F6 (blue-600)
- Text: #111827 (gray-900)
- Background: #FFFFFF
- Muted: #6B7280 (gray-500)

## Typography
- Heading: font-bold
- Body: font-normal
- Small: text-sm

## Spacing
- Standard gap: gap-6
- Card padding: p-6
- Section margin: my-12

## Borders
- Radius: rounded-lg
- Button radius: rounded-lg
```

**Result**: Consistent components without repeating yourself!

---

## 🔄 The Iteration Workflow

### The Problem

First drafts are rarely perfect. How do you efficiently iterate?

### The Solution: Browser Inspection Method

**Workflow**:

1. **Get initial component** from Claude
2. **View in browser**
3. **Identify specific issues** using DevTools
4. **Request targeted changes** with exact values
5. **Repeat** until perfect

**Example**:

```
❌ Bad: "This card doesn't look right"
✅ Good: "The card shadow is too subtle. Change from shadow-md
         to shadow-xl. Also increase padding from p-4 to p-6"
```

[Full workflow guide](./workflows/iteration-workflow.md)

---

## 📦 Component Library Integration

### Why Use Component Libraries?

Instead of building everything from scratch:

1. **Speed**: Pre-built, tested components
2. **Quality**: Professional designs
3. **Accessibility**: Built-in a11y
4. **Customization**: Easy to modify

### Recommended Libraries

**For Most Projects**:
- **[Shadcn UI](https://ui.shadcn.com/)**: Copy-paste components, highly customizable
- Best for: React apps, full control

**For Premium Feel**:
- **[Aceternity UI](https://ui.aceternity.com/)**: Beautiful animated components
- Best for: SaaS, modern web apps

**For Animations**:
- **[Motion Primitives](https://motion-primitives.com/)**: Smooth animations
- Best for: Adding polish and delight

[See detailed comparison](./component-libraries/comparison.md)

### Integration Workflow

1. **Pick a library** that fits your stack
2. **Install** following their guide
3. **Tell Claude** in CLAUDE.md:
   ```markdown
   ## Component Library
   We use Shadcn UI components. When creating UI:
   - Reference shadcn/ui patterns
   - Use their naming conventions
   - Maintain their design tokens
   ```
4. **Request components** referencing the library:
   ```
   Create a button using shadcn/ui patterns with our primary color
   ```

---

## 📋 CLAUDE.md: Project Instructions

### What is CLAUDE.md?

A markdown file in your project root that tells Claude:
- Your design system
- Component library choices
- Coding preferences
- Project-specific guidelines

### Why Use It?

Claude automatically reads `CLAUDE.md` when working in your project!

**Without CLAUDE.md**:
```
You: Create a button
Claude: *Makes generic blue button*
You: No, use our primary color
Claude: *What's your primary color?*
You: #7C3AED
Claude: *Makes purple button*
```

**With CLAUDE.md**:
```
# CLAUDE.md
Primary Color: #7C3AED (purple-600)

---

You: Create a button
Claude: *Makes purple button automatically* ✅
```

### Creating Your CLAUDE.md

1. **Start with a template**:
   - [Web App](./claude-md-templates/web-app.md)
   - [SaaS](./claude-md-templates/saas.md)
   - [Dashboard](./claude-md-templates/dashboard.md)

2. **Customize** with your:
   - Brand colors
   - Typography choices
   - Component library
   - Preferred frameworks

3. **Place in project root**:
   ```
   your-project/
   ├── CLAUDE.md  ← here
   ├── src/
   ├── package.json
   ```

4. **Reference it**:
   ```
   Following CLAUDE.md, create a pricing section
   ```

[Full CLAUDE.md guide](./claude-md-templates/README.md)

---

## 🎯 Real-World Example Walkthrough

### Case Study: SaaS Dashboard

**Project**: Analytics dashboard for SaaS product

**Steps**:

1. **Design System Setup**
   - Used [SaaS Platform template](./design-systems/saas-platform.md)
   - Brand colors: Purple primary, dark sidebar
   - Typography: Inter font family

2. **CLAUDE.md Configuration**
   - Component library: Shadcn UI
   - Dark mode support
   - Recharts for data visualization

3. **Component Requests**
   ```
   Following CLAUDE.md:
   1. Create sidebar navigation with our color scheme
   2. Build stats card grid for dashboard metrics
   3. Design data table with sorting/filtering
   ```

4. **Iteration**
   - Used browser DevTools to refine spacing
   - Adjusted chart colors for better readability
   - Optimized for tablet view

**Result**: Professional dashboard in 2 hours vs 2 days

[Full case study](./examples/saas-dashboard/)

---

## ✅ Intermediate Checklist

Before requesting components at this level:

- [ ] Design system established (colors, typography, spacing)
- [ ] CLAUDE.md created in project root
- [ ] Component library chosen (if using one)
- [ ] Iteration workflow understood
- [ ] Reference materials gathered (inspiration sites, style guides)

---

## 🎓 Learning Path

### Week 1: Design Systems
1. Review [design system templates](./design-systems/)
2. Create minimal design system for current project
3. Test it with 3 component requests

### Week 2: CLAUDE.md
1. Choose appropriate [CLAUDE.md template](./claude-md-templates/)
2. Customize for your project
3. Make 5 requests referencing CLAUDE.md

### Week 3: Component Libraries
1. Read [library comparison](./component-libraries/comparison.md)
2. Pick a library for your stack
3. Integrate and create 3 components

### Week 4: Workflows
1. Practice [iteration workflow](./workflows/iteration-workflow.md)
2. Use browser DevTools for refinement
3. Document your own process

---

## 💡 Pro Tips

### 1. Start Small
Don't build a complete design system on day 1. Start with:
- 3 colors (primary, text, background)
- 2 font sizes (heading, body)
- 1 spacing value (standard gap)

Expand as needed.

### 2. Steal Like an Artist
Find a site you love. Extract its design system:
- Inspect colors in DevTools
- Note typography scale
- Measure spacing
- Document in CLAUDE.md

### 3. Version Your Design System
As your system evolves:
```markdown
# Design System v2.0

## Changelog
- Added accent color for CTAs
- Introduced spacing scale
- Updated typography to use Inter font
```

### 4. Component Library !== Design System
Component libraries provide **components**.
Design systems define **your brand**.

Use component libraries as building blocks, styled with your design system.

### 5. Iterate in the Browser
DevTools is your friend:
- Inspect → Change values → Copy working CSS
- Then tell Claude the exact changes
- Much faster than describing vaguely

---

## 🚫 Common Mistakes

### ❌ Mistake 1: Too Detailed Too Soon
Creating 50-page design systems before writing code.

**Fix**: Start minimal, expand when you need it.

### ❌ Mistake 2: Ignoring CLAUDE.md
Creating design system but not putting it in CLAUDE.md.

**Fix**: Design system → CLAUDE.md → Reference it

### ❌ Mistake 3: Not Iterating
Accepting first result even when not perfect.

**Fix**: Use iteration workflow, refine until excellent

### ❌ Mistake 4: Inconsistent Updates
Updating code but not design system docs.

**Fix**: Design system is living document, keep it in sync

---

## 🔼 Level Up to Advanced

Ready for the pro level? Move to [Advanced Guide](../advanced/README.md) when:

- ✅ You have a working design system
- ✅ You've created CLAUDE.md for a real project
- ✅ You're comfortable with iteration workflows
- ✅ You want automation and advanced tooling
- ✅ You want MCP server integration

---

**You're building systematic workflows! Keep going!** 🚀
