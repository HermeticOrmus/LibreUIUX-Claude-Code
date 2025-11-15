# LibreUIUX for Claude Code

> **The Ultimate Resource for Modern, Beautiful UI/UX with Claude Code**

Stop getting the same outdated, Bootstrap-era designs. This repository provides a comprehensive, layered approach to dramatically improve the UI/UX components Claude Code generates for your projects.

---

## 🎯 The Problem

Developers using Claude Code consistently face these challenges:

- **Repetitive Designs**: Claude generates similar-looking components regardless of project context
- **Outdated Aesthetics**: Components resemble old Bootstrap-era designs (2015-2018)
- **Poor Responsiveness**: Generated layouts don't adapt well to different screen sizes
- **Generic Feel**: Lack of modern design patterns, animations, and interactions
- **Inconsistent Results**: Same prompts produce varying quality across sessions

### Real Developer Experiences

> *"No matter what I try, the UI components generated with Claude Code look outdated. They often resemble older Bootstrap-era designs and are not responsive."*

> *"I've tried custom commands, design agents, detailed prompting, even Claude Opus... nothing consistently works."*

**The core issue**: Claude Code needs specific, structured guidance to generate modern UI/UX.

---

## 🎨 The Solution: Layered Approach

This repository provides solutions for **all skill levels**:

### 🟢 Beginner Level
**Goal**: Get better results immediately with minimal setup

- **Ready-to-use prompts** for modern UI components
- **Component request templates** with proper specificity
- **Design vocabulary guide** - speak the language of modern UI/UX
- **Quick-start checklist** for every UI task

👉 [Start Here: Beginner Guide](./beginner/README.md)

### 🟡 Intermediate Level
**Goal**: Build systematic workflows for consistent results

- **Design system templates** (color schemes, typography, spacing)
- **Custom CLAUDE.md configurations** for your projects
- **Component library integrations** (Shadcn, Aceternity, etc.)
- **Iteration workflows** using browser tools
- **Before/After examples** with detailed breakdowns

👉 [Level Up: Intermediate Techniques](./intermediate/README.md)

### 🔴 Advanced/Pro Level
**Goal**: Create a powerful, automated UI/UX development environment

- **MCP Server setups** (Chrome DevTools integration)
- **Custom slash commands** for Claude Code
- **Automated design systems**
- **AI-assisted design critique workflows**
- **Production-ready component architectures**

👉 [Master Level: Advanced Solutions](./advanced/README.md)

---

## 🚀 Quick Start

### 1. Choose Your Path

```bash
# Beginner: Just want better prompts?
cat beginner/prompts/modern-component-template.md

# Intermediate: Setting up a design system?
cp intermediate/design-systems/modern-web-app.md ./DESIGN_SYSTEM.md

# Advanced: Full automation?
./advanced/mcp-setup/install-chrome-devtools.sh
```

### 2. Essential First Steps

**Before asking Claude for ANY UI component:**

1. ✅ Review [Design Vocabulary](./beginner/design-vocabulary.md)
2. ✅ Use a [Component Template](./beginner/prompts/)
3. ✅ Reference [Modern Examples](./resources/inspiration/)
4. ✅ Be specific (not "make it look good", but "use glassmorphism with 8px backdrop blur")

---

## 📁 Repository Structure

```
LibreUIUX-Claude-Code/
├── README.md                          # You are here
│
├── beginner/                          # 🟢 Start here if new
│   ├── README.md                      # Beginner guide overview
│   ├── design-vocabulary.md           # Learn the language of modern UI
│   ├── prompts/                       # Ready-to-use prompt templates
│   │   ├── modern-button.md
│   │   ├── modern-card.md
│   │   ├── modern-form.md
│   │   └── modern-nav.md
│   ├── checklist.md                   # Pre-request checklist
│   └── examples/                      # Simple before/after examples
│
├── intermediate/                      # 🟡 Build systematic workflows
│   ├── README.md                      # Intermediate guide overview
│   ├── design-systems/                # Complete design system templates
│   │   ├── modern-web-app.md
│   │   ├── saas-platform.md
│   │   └── mobile-first.md
│   ├── claude-md-templates/           # CLAUDE.md file templates
│   ├── component-libraries/           # Integration guides
│   │   ├── shadcn-ui.md
│   │   ├── aceternity.md
│   │   ├── motion-primitives.md
│   │   └── comparison.md
│   ├── workflows/                     # Step-by-step workflows
│   │   ├── iteration-workflow.md
│   │   └── browser-inspection.md
│   └── examples/                      # Real project examples
│
├── advanced/                          # 🔴 Pro-level automation
│   ├── README.md                      # Advanced guide overview
│   ├── mcp-servers/                   # MCP server configurations
│   │   ├── chrome-devtools/
│   │   └── design-review/
│   ├── slash-commands/                # Custom Claude Code commands
│   │   ├── ui-component.md
│   │   ├── design-critique.md
│   │   └── responsive-check.md
│   ├── automation/                    # Automated workflows
│   └── examples/                      # Production-level examples
│
├── resources/                         # 📚 Curated resources
│   ├── component-libraries.md         # Library comparisons & links
│   ├── inspiration/                   # Design inspiration sources
│   │   ├── vibecoder-collection.md
│   │   ├── 21st-dev-components.md
│   │   └── ui-patterns.md
│   ├── tools.md                       # Recommended tools
│   └── github-repos.md                # Curated GitHub repositories
│
├── templates/                         # 📋 Copy-paste templates
│   ├── CLAUDE.md                      # Template for project root
│   ├── design-brief.md                # Design brief template
│   └── component-spec.md              # Component specification template
│
└── .claude/                           # ⚙️ Claude Code configuration
    └── commands/                      # Custom slash commands
        ├── ui-modern.md
        ├── ui-critique.md
        └── ui-responsive.md
```

---

## 🎓 Learning Path

### Week 1: Fundamentals
1. Read [Design Vocabulary](./beginner/design-vocabulary.md)
2. Try 3 component prompts from [beginner/prompts/](./beginner/prompts/)
3. Study [examples/](./beginner/examples/) to see before/after transformations

### Week 2: Systems Thinking
1. Choose a [design system template](./intermediate/design-systems/)
2. Create a CLAUDE.md file for your project
3. Practice the [iteration workflow](./intermediate/workflows/iteration-workflow.md)

### Week 3+: Advanced Techniques
1. Set up [Chrome DevTools MCP](./advanced/mcp-servers/chrome-devtools/)
2. Install [custom slash commands](./advanced/slash-commands/)
3. Build your own component library

---

## 🔑 Key Principles

### ✅ Do This
- **Be specific**: "glassmorphism card with backdrop-blur-md, subtle border, 12px padding"
- **Reference examples**: "Like the pricing card on https://ui.shadcn.com"
- **Use design systems**: Define colors, spacing, typography upfront
- **Iterate with context**: Use browser inspector to show exact issues
- **Think mobile-first**: Always specify responsive behavior

### ❌ Don't Do This
- ~~"Make it look modern"~~ (too vague)
- ~~"Improve the design"~~ (no direction)
- ~~"Make it sleek and beautiful"~~ (subjective, unclear)
- ~~Starting without a design system~~ (leads to inconsistency)
- ~~Accepting first output without iteration~~ (quality comes from refinement)

---

## 🎯 Real-World Success Stories

### Case Study 1: SaaS Dashboard
**Before**: Generic Bootstrap table with blue buttons
**After**: Modern data table with shadcn/ui, smooth animations, glassmorphism
**Key**: Used design system template + specific component references
📁 [See full case study](./intermediate/examples/saas-dashboard/)

### Case Study 2: E-commerce Product Page
**Before**: Basic grid layout, no visual hierarchy
**After**: Bento grid with motion primitives, responsive images, micro-interactions
**Key**: Mobile-first approach + browser inspection workflow
📁 [See full case study](./intermediate/examples/ecommerce-product/)

---

## 🛠️ Recommended Tools

### Essential
- **[Shadcn UI](https://ui.shadcn.com/)** - Copy-paste component collection
- **[v0.dev](https://v0.dev)** - AI UI generation for reference
- **Chrome DevTools** - Inspect and iterate live

### Intermediate
- **[Mobbin](https://mobbin.com)** - Mobile UI inspiration
- **[21st.dev](https://21st.dev)** - Community components
- **[Aceternity](https://ui.aceternity.com)** - Premium components

### Advanced
- **Chrome DevTools MCP** - Claude Code integration
- **[Fancy Components](https://www.fancycomponents.dev/)** - Advanced animations
- **[Motion Primitives](https://motion-primitives.com/)** - Animation library

📚 [Full tools list with setup guides](./resources/tools.md)

---

## 🤝 Contributing

This is a community-driven resource! Contributions welcome:

- 🐛 Found an issue? [Open an issue](../../issues)
- 💡 Have a better prompt? Submit a PR
- 🎨 Built something amazing? Share your example
- 📝 Want to add a guide? We'd love to see it

### Contribution Guidelines
1. Follow the existing structure (beginner/intermediate/advanced)
2. Include real examples with code
3. Test your prompts with Claude Code before submitting
4. Add screenshots/videos when helpful

---

## 📖 Additional Resources

### Official Documentation
- [Claude Code Docs](https://docs.claude.com/en/docs/claude-code)
- [Anthropic Prompt Engineering](https://docs.anthropic.com/en/docs/prompt-engineering)

### Community
- [Reddit: r/ClaudeAI](https://reddit.com/r/ClaudeAI)
- [Discord: Claude Developers](https://discord.gg/anthropic)

### Design Systems
- [Material Design 3](https://m3.material.io/)
- [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [Tailwind CSS](https://tailwindcss.com/)

---

## 📜 License

MIT License - feel free to use this in your projects, commercial or otherwise.

---

## ⭐ Star This Repo

If this helps you build better UIs with Claude Code, give us a star! It helps others discover these resources.

---

**Built by developers, for developers. Let's make Claude Code UI/UX amazing together.** 🚀
