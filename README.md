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

📝 **Field Notes from the Trenches**

I spent two weeks fighting this. "Make it modern." "Use better colors." "Improve the spacing." Every request felt like rolling dice.

Then I tried: "Create a button with bg-blue-600, hover:bg-blue-700, px-6 py-3, rounded-lg, shadow-md."

Perfect. First try. Every time.

**Here's what clicked:** Claude understands design systems perfectly—Tailwind's scale, spacing units, color tokens. When you speak that precise language instead of vague aesthetics, you're giving coordinates instead of directions.

**Try this:** Compare "make it look better" vs "change shadow-md to shadow-lg and p-4 to p-6"

**Watch for:** The second request gives you exactly what you want, immediately.

**This works because:** You're leveraging Claude's systematic understanding instead of fighting it. That's what this entire repository teaches—the elegant mechanics of communicating design intent precisely.

---

## 🎨 The Solution: Layered Approach

Here's what's beautiful about this repository's approach: instead of one-size-fits-all advice, we've built a **progressive learning system**. Start where you are, grow as you need.

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

Think of these as the elegant mechanics of communicating with Claude. Each principle solves a specific problem in how AI interprets design intent.

### ✅ Do This
- **Be specific**: "glassmorphism card with backdrop-blur-md, subtle border, 12px padding"
  - *Why it works:* Precision eliminates ambiguity. Claude executes specifications, not aesthetics.

- **Reference examples**: "Like the pricing card on https://ui.shadcn.com"
  - *Why it works:* Concrete references create shared understanding instantly.

- **Use design systems**: Define colors, spacing, typography upfront
  - *Why it works:* Systems are languages. Speak once, benefit everywhere.

- **Iterate with context**: Use browser inspector to show exact issues
  - *Why it works:* "Change shadow-md to shadow-xl" beats "make it pop" every time.

- **Think mobile-first**: Always specify responsive behavior
  - *Why it works:* Mobile constraints force clarity. Clarity scales up beautifully.

### ❌ Don't Do This
- ~~"Make it look modern"~~ - No shared definition of "modern"
- ~~"Improve the design"~~ - Improvement in which dimension? Contrast? Spacing? Hierarchy?
- ~~"Make it sleek and beautiful"~~ - Aesthetics are subjective, specifications aren't
- ~~Starting without a design system~~ - Every request becomes a negotiation
- ~~Accepting first output without iteration~~ - Quality emerges through refinement

---

💛 **Gold Hat Note**
Topic: Systematic Communication

This isn't just about getting better UI from Claude. It's about all of us raising collective understanding of how to communicate design intent to AI systems.

When you discover a phrasing that works perfectly, share it in discussions. When you find a design pattern that Claude executes flawlessly, document it. When you notice responsive breakpoint strategies that consistently work, tell the community.

Your breakthrough today becomes someone else's breakthrough tomorrow. Share what you discover. Document your insights. Help others see the patterns.

The craft grows when knowledge flows.

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

This is a **knowledge commons**, not just a repository. Every contribution raises our collective understanding of UI/UX development with AI.

### What We Need

**🎯 Prompt Discoveries**
- Found a phrasing that consistently works? Share it.
- Discovered a component pattern Claude executes perfectly? Document it.
- Figured out how to explain responsive behavior clearly? PR it.

**📝 Real-World Examples**
- Built something beautiful? Show the before/after with exact prompts.
- Solved a tricky design problem? Write up your breakthrough.
- Found an elegant solution? Share the mechanism.

**🐛 Issues & Improvements**
- Documentation unclear? Tell us where precision is missing.
- Example didn't work? Help us understand what broke.
- Better approach exists? Show us the elegant way.

**💡 Pattern Recognition**
- Notice Claude responding better to certain structures? Document the pattern.
- See connections between different techniques? Map them.
- Discover why something works? Explain the mechanism.

### Contribution Guidelines

1. **Follow the voice** - Read [VOICE_GUIDE.md](./VOICE_GUIDE.md) first
   - Technical precision (45%) + Wonder (30%) + Playfulness (20%) + Encouragement (5%)
   - Show genuine awe at elegant mechanics, not mystical reverence

2. **Structure matters** - Use beginner/intermediate/advanced appropriately
   - Beginner: Immediate results, actionable templates
   - Intermediate: Systematic workflows, design systems
   - Advanced: Automation, deep patterns, production architectures

3. **Include experiments** - "Try this, watch for that, here's why it works"
   - Actionable: Reader can test immediately
   - Observable: Clear expected results
   - Explainable: Mechanism revealed

4. **Test everything** - Run it with Claude Code first
   - Prompts should work as written
   - Examples should be copy-paste ready
   - Results should be reproducible

5. **Share knowledge, not secrets** - Wonder emerges from understanding
   - Explain mechanisms, don't mystify
   - Reveal elegant solutions, don't gatekeep
   - Build collective understanding

### Review Process

PRs are reviewed for:
- ✅ Technical accuracy (precision is non-negotiable)
- ✅ Voice consistency (see VOICE_GUIDE.md)
- ✅ Actionable value (can readers try it now?)
- ✅ Community benefit (raises collective understanding?)

---

💛 **Gold Hat Note**
Topic: Community Knowledge Building

Every contribution here isn't just helping individual developers—it's mapping the territory of human-AI collaboration in design.

When you share a discovery, you're not just solving your problem. You're potentially unlocking dozens of projects, teaching hundreds of developers, and advancing our collective craft.

That prompt template you perfected? Someone will use it to ship their startup.
That design pattern you documented? A student will learn from it.
That mechanism you explained? It'll spark someone else's breakthrough.

Share generously. Document clearly. Explain thoroughly.

The craft grows when knowledge flows.

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
