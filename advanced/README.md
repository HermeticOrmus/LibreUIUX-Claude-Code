# 🔴 Advanced Guide: Automating UI/UX Excellence

Welcome to the pro level! Here you'll set up **automated workflows**, **MCP servers**, and **custom commands** to make Claude Code a UI/UX powerhouse.

---

## 🎯 Your Goal

Transform from systematic to automated:

**Intermediate Level**:
- Manual design system reference
- Copy-paste workflows
- Browser-based iteration

**Advanced Level**:
- Automated design critique
- MCP server integration
- Custom slash commands
- AI-assisted workflows
- Production-ready pipelines

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

Custom shortcuts that trigger specialized prompts in Claude Code.

**Instead of typing:**
```
Following my design system, create a modern card component with
glassmorphism effect, proper spacing, hover states, and responsive
behavior...
```

**Just type:**
```
/ui-modern card
```

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

**Enables:**
- Inspect live pages
- Take screenshots
- Measure performance
- Test responsive views
- Get computed styles

**Workflow:**
```
1. You: "Check the hero section on localhost:3000"
2. Claude: [Uses MCP to connect to browser]
3. Claude: "The hero section has these issues:
   - Padding is 16px, should be 24px per design system
   - Text color is #666, contrast ratio only 3.2:1 (needs 4.5:1)
   - Missing hover state on CTA button"
4. You: "Fix those issues"
5. Claude: [Makes fixes]
6. Claude: [Uses MCP to verify fixes in browser]
```

**Setup:** [Chrome DevTools MCP Guide](./mcp-servers/chrome-devtools/)

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

**You're now a Claude Code UI/UX power user! 🚀**

Build amazing, automated design workflows and share what you create!
