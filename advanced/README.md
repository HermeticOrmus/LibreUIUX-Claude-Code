# 🔴 Advanced Guide: Automating UI/UX Excellence

Welcome to the pro level! Here you'll set up **automated workflows**, **MCP servers**, and **custom commands** to make Claude Code a UI/UX powerhouse.

---

## 🎯 Your Goal

Here's the elegant next step: what if Claude could **see** your browser, **validate** changes automatically, and **enforce** your design system without you repeating yourself?

That's what this level unlocks.

**Intermediate Level** (systematic):
- Manual design system reference
- Copy-paste workflows
- Browser-based iteration
- Repeating context each session

**Advanced Level** (automated):
- Automated design critique (runs on every component)
- MCP server integration (Claude sees your browser)
- Custom slash commands (complex requests in 2 words)
- AI-assisted workflows (Claude validates its own output)
- Production-ready pipelines (deployment-grade automation)

**The shift**: From executing your design system to **enforcing** it automatically.

---

📝 **Field Notes from Production**

The MCP server setup changed everything. Before: "The button shadow is too subtle, use shadow-lg instead of shadow-md." After MCP: Claude inspects the browser, measures the actual shadow, and suggests the fix **before I even notice**.

Setup took 20 minutes. Time saved in first week: ~4 hours of iteration cycles.

**Try this:** Set up Chrome DevTools MCP (guide below). Request a component. Watch Claude verify it in real-time in your actual browser.

**Watch for:** Claude saying things like "I can see the current shadow is shadow-sm, let me change it to shadow-md as specified."

**This works because:** You've given Claude eyes. Instead of blind iteration, it's measured feedback. That's the difference between guessing and observing.

---

## 🚀 What You'll Build

### 1. MCP Server Integration
Connect Claude Code to powerful tools:
- [Chrome DevTools MCP](./mcp-servers/chrome-devtools/) - Live browser inspection
- [Design Review MCP](./mcp-servers/design-review/) - Automated design critique

### 2. Custom Slash Commands
Create shortcuts for common UI tasks:
- `/ui-modern` - Generate modern components
- `/ui-critique` - Get design feedback
- `/ui-responsive` - Check responsive behavior

### 3. Automated Workflows
Build repeatable processes:
- Component generation pipeline
- Design system enforcement
- Accessibility checking
- Performance optimization

### 4. Production Patterns
Enterprise-ready architectures:
- Component library scaffolding
- Design token automation
- Style guide generation
- Visual regression testing

---

## 🛠️ Setup Guide

### Prerequisites

Before starting advanced features:

- ✅ Completed beginner guide
- ✅ Created a design system
- ✅ Familiar with Claude Code basics
- ✅ Node.js/npm installed (for MCP servers)
- ✅ Git for version control

### Installation Steps

#### 1. MCP Servers (Optional but Powerful)

**Chrome DevTools MCP:**
```bash
# Install the MCP server
npx @modelcontextprotocol/create-server chrome-devtools

# Configure in Claude Code settings
# Follow guide: ./mcp-servers/chrome-devtools/README.md
```

**Benefits:**
- Live browser inspection from Claude
- Real-time style changes
- Screenshot capabilities
- Performance metrics

#### 2. Custom Slash Commands

**Copy commands to your project:**
```bash
# From this repo
cp -r .claude/commands /your-project/.claude/

# Or create from scratch
mkdir -p /your-project/.claude/commands
```

**Available commands:**
- `/ui-modern` - Modern component generator
- `/ui-critique` - Design system validator
- `/ui-responsive` - Responsive checker
- `/ui-a11y` - Accessibility audit

[Full setup guide](./slash-commands/README.md)

#### 3. Automation Scripts

**Install dependencies:**
```bash
npm install --save-dev @tokens-studio/sd-transforms stylelint prettier
```

**Setup automation:**
```bash
# Copy automation scripts
cp -r advanced/automation/* /your-project/scripts/
```

---

## 💎 Custom Slash Commands

### What Are Slash Commands?

Here's a clever hack: instead of typing 200-word prompts every time, you encode your entire design system and preferences into **2-word commands**.

**Before** (the long way):
```
Following my design system in CLAUDE.md, create a modern card component with
glassmorphism effect backdrop-blur-lg and bg-white/10, proper spacing using
p-6, hover states with shadow-xl transition, rounded-2xl corners, and
responsive behavior grid-cols-1 md:grid-cols-2 lg:grid-cols-3...
```

**After** (the elegant way):
```
/ui-modern card
```

Same result. 2 seconds instead of 2 minutes.

Think about what that means: you're **compressing expertise** into reusable commands. Define once, execute forever.

### Available Commands

#### `/ui-modern [component]`
Generate modern components following your design system.

**Example:**
```bash
/ui-modern button
/ui-modern card
/ui-modern form
/ui-modern nav
```

**What it does:**
- Applies your design system
- Uses modern patterns (glassmorphism, etc.)
- Includes hover/focus states
- Responsive by default
- Accessibility built-in

#### `/ui-critique`
Get automated design feedback on current component.

**Example:**
```bash
/ui-critique
```

**Checks:**
- Design system compliance
- Accessibility issues
- Responsive behavior
- Best practices
- Performance concerns

#### `/ui-responsive [component]`
Check and fix responsive behavior.

**Example:**
```bash
/ui-responsive
```

**What it does:**
- Identifies responsive issues
- Suggests breakpoint improvements
- Checks mobile usability
- Validates touch targets

#### `/ui-a11y`
Accessibility audit and fixes.

**Example:**
```bash
/ui-a11y
```

**Checks:**
- Color contrast
- Keyboard navigation
- Screen reader support
- ARIA labels
- Focus indicators

### Creating Custom Commands

**Create a new command:**

```bash
touch .claude/commands/ui-theme.md
```

**Command file structure:**
```markdown
# Command: /ui-theme

Generate a complete theme configuration.

---

## Instructions for Claude

When the user runs /ui-theme:

1. Ask for their primary color
2. Generate a full color palette (50-950 scale)
3. Create typography scale
4. Define spacing system
5. Output as:
   - CSS custom properties
   - Tailwind config
   - Design tokens JSON

## Output Format

[Template for output...]
```

[Full command creation guide](./slash-commands/creating-commands.md)

---

## 🔌 MCP Servers Deep Dive

### Chrome DevTools MCP

The MCP (Model Context Protocol) server approach is genuinely clever. Instead of you describing what you see in the browser, you wire Claude directly into Chrome's DevTools. Now Claude can **inspect**, **measure**, and **verify** in real-time.

**Enables:**
- Inspect live pages (actual DOM, computed styles)
- Take screenshots (see what the user sees)
- Measure performance (real metrics, not guesses)
- Test responsive views (actual breakpoints)
- Get computed styles (the truth, not the intent)

**Why this is elegant:**

Before MCP, the workflow was:
1. You inspect in browser
2. You describe what you see to Claude
3. Claude suggests changes
4. You verify in browser
5. Repeat

After MCP, it's:
1. Claude inspects browser directly
2. Claude measures exact values
3. Claude suggests precise fixes
4. Claude verifies the result
5. Done

You've eliminated the human-as-messenger step. That's beautiful systems design.

**Real Workflow:**
```
1. You: "Check the hero section on localhost:3000"

2. Claude: [Uses MCP to connect to browser]
   [Inspects actual DOM and computed styles]

3. Claude: "I can see the hero section. Found these issues:
   - Padding: Currently 16px, your design system specifies 24px (p-6)
   - Text color: #666666 on white = 3.2:1 contrast (needs 4.5:1 minimum)
   - CTA button: Missing hover:bg-blue-700 state
   - Shadow: Using shadow-sm, design system calls for shadow-md"

4. You: "Fix those"

5. Claude: [Makes precise changes]
   [Verifies in browser using MCP]
   "Fixed. Verified in browser: padding now 24px, contrast now 4.6:1,
   hover state present, shadow updated. All values match design system."
```

**Setup:** [Chrome DevTools MCP Guide](./mcp-servers/chrome-devtools/)

---

📝 **Field Notes from the Trenches**

First time Claude said "I can see the button's actual padding is 12px," I realized we'd crossed a threshold. This wasn't AI guessing about design—it was **measuring** my actual implementation.

The verification step is magic. Claude makes a change, checks the browser, and tells you "Confirmed: shadow is now shadow-lg" with pixel-perfect certainty.

**Try this:** Set up MCP, request a component, ask Claude to verify it. Watch it inspect your actual browser.

**This works because:** Observation > Assumption. Always.

### Design Review MCP

**Enables:**
- Automated design critique
- Design system validation
- Component comparison
- Visual regression detection

**Workflow:**
```
1. You: "Review this pricing page"
2. Claude: [Uses MCP to analyze]
3. Claude: "Issues found:
   ✅ Design system: Compliant
   ⚠️  Spacing: Inconsistent gaps (16px and 20px mixed)
   ❌ Accessibility: 2 contrast violations
   ✅ Responsive: Working correctly
   ⚠️  Typography: Using 3 different font weights (standardize to 2)"
```

**Setup:** [Design Review MCP Guide](./mcp-servers/design-review/)

---

## ⚡ Automated Workflows

### 1. Component Generation Pipeline

**Automate component creation:**

```bash
# Run the generator
npm run generate:component Button

# What it does:
1. Creates component file with design system imports
2. Generates stories/examples
3. Creates test file
4. Updates component index
5. Adds to design system docs
```

**Setup:** [Component Generator Guide](./automation/component-generator.md)

### 2. Design Token Automation

**Keep design tokens in sync:**

```bash
# Update design tokens
npm run tokens:sync

# What it does:
1. Reads tokens from source (Figma/JSON)
2. Generates CSS variables
3. Updates Tailwind config
4. Creates TypeScript types
5. Updates documentation
```

**Setup:** [Design Tokens Guide](./automation/design-tokens.md)

### 3. Visual Regression Testing

**Automatically catch UI changes:**

```bash
# Run visual tests
npm run test:visual

# What it does:
1. Takes screenshots of components
2. Compares to baseline
3. Reports differences
4. Updates baselines if approved
```

**Setup:** [Visual Testing Guide](./automation/visual-testing.md)

### 4. Accessibility Automation

**Built-in accessibility checking:**

```bash
# Run a11y tests
npm run test:a11y

# What it does:
1. Scans all components
2. Checks WCAG compliance
3. Reports violations
4. Suggests fixes
```

**Setup:** [Accessibility Testing Guide](./automation/accessibility.md)

---

## 🏗️ Production Patterns

### Component Library Architecture

**Structure:**
```
your-component-library/
├── src/
│   ├── components/
│   │   ├── Button/
│   │   │   ├── Button.tsx
│   │   │   ├── Button.test.tsx
│   │   │   ├── Button.stories.tsx
│   │   │   └── index.ts
│   │   └── ...
│   ├── tokens/
│   │   ├── colors.ts
│   │   ├── typography.ts
│   │   └── spacing.ts
│   ├── styles/
│   │   ├── global.css
│   │   └── reset.css
│   └── index.ts
├── docs/
│   └── design-system.md
└── scripts/
    ├── generate-component.js
    └── sync-tokens.js
```

[Full architecture guide](./examples/component-library/)

### Design System as Code

**Versioned, tested design system:**

```typescript
// tokens/colors.ts
export const colors = {
  primary: {
    50: '#eff6ff',
    500: '#3b82f6',
    600: '#2563eb',
    // ...
  },
  // ...
} as const;

export type ColorToken = keyof typeof colors;
```

**Benefits:**
- Type safety
- Version control
- Easy updates
- Automated validation

### Continuous Design Integration

**GitHub Actions workflow:**

```yaml
# .github/workflows/design-system.yml
name: Design System CI

on: [push, pull_request]

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Install dependencies
        run: npm install
      - name: Validate design tokens
        run: npm run tokens:validate
      - name: Run visual regression tests
        run: npm run test:visual
      - name: Check accessibility
        run: npm run test:a11y
      - name: Lint styles
        run: npm run lint:css
```

[Full CI/CD guide](./automation/ci-cd.md)

---

## 🎯 Advanced Use Cases

### Use Case 1: Design System Enforcement

**Problem:** Team members create components that don't follow design system

**Solution:**
```bash
# Pre-commit hook
npm run design-system:validate

# What it checks:
- Colors match design tokens ✓
- Spacing uses scale ✓
- Typography follows system ✓
- Components have proper structure ✓
```

[Setup guide](./automation/design-system-enforcement.md)

### Use Case 2: Figma to Code

**Problem:** Manually translating Figma designs to code

**Solution:**
```bash
# Extract design tokens from Figma
npm run figma:sync

# Generates:
- Color tokens from Figma styles
- Typography tokens from text styles
- Spacing tokens from layout grids
- Component variants
```

[Figma integration guide](./automation/figma-integration.md)

### Use Case 3: Multi-Brand Design System

**Problem:** Supporting multiple brands with shared components

**Solution:**
```typescript
// themes/brand-a.ts
export const brandA = {
  colors: {...},
  typography: {...},
}

// themes/brand-b.ts
export const brandB = {
  colors: {...},
  typography: {...},
}

// Usage
<ThemeProvider theme={brandA}>
  <App />
</ThemeProvider>
```

[Multi-brand guide](./examples/multi-brand/)

---

## 📚 Learning Path

### Month 1: MCP & Commands
- Week 1: Install Chrome DevTools MCP
- Week 2: Create first custom slash command
- Week 3: Build component generation workflow
- Week 4: Practice with real project

### Month 2: Automation
- Week 1: Set up design token automation
- Week 2: Implement visual regression testing
- Week 3: Add accessibility automation
- Week 4: CI/CD pipeline

### Month 3: Scale
- Week 1: Build component library structure
- Week 2: Multi-brand support
- Week 3: Figma integration
- Week 4: Documentation generation

---

## 💡 Pro Tips

### 1. Start with One MCP Server

Don't install all tools at once:
1. Start with Chrome DevTools MCP
2. Master it for 2 weeks
3. Add more tools as needed

### 2. Command Aliases

Create shortcuts for common commands:

```bash
# .bashrc or .zshrc
alias uim='claude /ui-modern'
alias uic='claude /ui-critique'
alias uir='claude /ui-responsive'
```

### 3. Template Projects

Create template repos for common project types:
- `saas-starter` - SaaS app with design system
- `ecommerce-starter` - E-commerce with components
- `dashboard-starter` - Admin dashboard template

Clone and customize instead of starting from scratch.

### 4. Automated Documentation

Generate docs from code:

```bash
npm run docs:generate

# Creates:
- Component API docs
- Design system reference
- Usage examples
- Accessibility notes
```

### 5. Performance Budgets

Set and enforce performance budgets:

```javascript
// performance.config.js
module.exports = {
  budgets: {
    'bundle.js': '250kb',
    'styles.css': '50kb',
    'component-library.js': '150kb',
  }
}
```

---

## 🚫 Common Pitfalls

### ❌ Over-Automation Too Soon

**Problem:** Automating before process is stable

**Fix:** Manual → Systematic → Automated (in that order)

### ❌ Tool Overload

**Problem:** Installing every tool available

**Fix:** Add tools as you encounter specific needs

### ❌ Ignoring Maintenance

**Problem:** Automated workflows break and nobody fixes them

**Fix:** Schedule regular maintenance, monitor CI/CD

### ❌ No Team Buy-In

**Problem:** Advanced setup, but team doesn't use it

**Fix:** Training, documentation, showcase benefits

---

## ✅ Advanced Checklist

Ready for advanced features?

- [ ] Solid design system in place
- [ ] Team comfortable with systematic approach
- [ ] CI/CD pipeline exists
- [ ] Node.js environment setup
- [ ] Time for initial setup (4-8 hours)
- [ ] Team buy-in for new tools

If checked ✅, dive in!

---

## 🆘 Troubleshooting

### MCP Server Not Working

1. Check Claude Code version (needs latest)
2. Verify MCP server is running
3. Check configuration in settings
4. Restart Claude Code

### Custom Commands Not Found

1. Ensure `.claude/commands/` directory exists
2. Check file naming (lowercase, .md extension)
3. Restart Claude Code
4. Verify command syntax

### Automation Scripts Failing

1. Check Node.js version (needs 16+)
2. Install dependencies (`npm install`)
3. Check file permissions
4. Review error logs

---

## 📖 Additional Resources

### Official Docs
- [Claude Code MCP Documentation](https://docs.claude.com/claude-code/mcp)
- [Custom Commands Guide](https://docs.claude.com/claude-code/commands)

### Tools & Libraries
- [Stylelint](https://stylelint.io/) - CSS linting
- [Percy](https://percy.io/) - Visual testing
- [Axe](https://www.deque.com/axe/) - Accessibility testing
- [Chromatic](https://www.chromatic.com/) - Visual regression

### Community
- [Discord: Claude Code Advanced](https://discord.gg/anthropic)
- [GitHub Discussions](https://github.com/anthropics/claude-code/discussions)

---

---

💛 **Gold Hat Note**
Topic: Advanced Patterns & Collective Craft

This advanced level isn't about keeping secrets—it's about **mapping new territory**.

When you discover an elegant automation workflow, share it. When you find a clever MCP server configuration, document it. When you create a slash command that solves a common problem, PR it to the repository.

Your production-tested patterns? Someone's prototype tomorrow.
Your hard-won automation scripts? Someone's starting point next week.
Your clever integrations? The community's new baseline.

This is how the craft advances—not through gatekeeping, but through generous sharing of what works.

Share your breakthroughs. Document your production wisdom. Help us all level up.

The craft grows when knowledge flows.

---

**You're now mapping the frontier of human-AI design collaboration.**

Build amazing, automated workflows. Then **share what you discover**—that's how we all advance together. 🚀
