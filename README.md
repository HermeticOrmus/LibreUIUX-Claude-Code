<p align="center">
  <img src="https://ormus.solutions/mascot/pixellab_liquid_to_swan.gif" alt="LibreUIUX Claude Code" width="128" style="image-rendering: pixelated;" />
</p>

<h1 align="center">LibreUIUX Claude Code</h1>

<p align="center">
  <em>Complete UI/UX system for Claude Code -- 152 agents, 70 plugins, 76 commands, 74 skills</em>
</p>

<p align="center">
  <a href="https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/stargazers"><img src="https://img.shields.io/github/stars/HermeticOrmus/LibreUIUX-Claude-Code?style=flat-square&color=aa8142" alt="Stars" /></a>
  <a href="https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/blob/main/LICENSE"><img src="https://img.shields.io/github/license/HermeticOrmus/LibreUIUX-Claude-Code?style=flat-square&color=aa8142" alt="License" /></a>
  <a href="https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/commits"><img src="https://img.shields.io/github/last-commit/HermeticOrmus/LibreUIUX-Claude-Code?style=flat-square&color=aa8142" alt="Last Commit" /></a>
  <img src="https://img.shields.io/badge/TypeScript-aa8142?style=flat-square&logo=typescript&logoColor=white" alt="TypeScript" />
  <img src="https://img.shields.io/badge/Claude Code-aa8142?style=flat-square&logo=anthropic&logoColor=white" alt="Claude Code" />
</p>

---
> **Skills, Agents, Commands, and Workflows for Modern UI/UX Development with Claude Code**

Stop getting the same outdated, Bootstrap-era designs. This repository provides a comprehensive, layered approach to dramatically improve the UI/UX components Claude Code generates for your projects.

---

## The New Programming Paradigm

In December 2025, Andrej Karpathy observed that programming is being "dramatically refactored":

> *"I've never felt this much behind as a programmer. The profession is being dramatically refactored."*
>
> *"New vocabulary: agents, subagents, their prompts, contexts, memory, modes, permissions, tools, plugins, skills, hooks, MCP, LSP, slash commands, workflows, IDE integrations..."*

He described Claude Code as *"the first convincing demonstration of what an LLM Agent looks like"* - a "little spirit/ghost that lives on your computer."

**LibreUIUX provides the skills, agents, commands, and workflows for this new paradigm - focused on UI/UX development.**

### Where LibreUIUX Fits

| New Stack Component | LibreUIUX Provides |
|---------------------|-------------------|
| **Skills** | 74 specialized skills (accessibility, animation, design systems, etc.) |
| **Agents** | 152 task-specific agents (UI validator, design critic, responsive checker, etc.) |
| **Commands** | 76 slash commands for common UI/UX workflows |
| **Plugins** | 70 domain plugins (frontend, accessibility, design mastery, etc.) |
| **Workflows** | Beginner to advanced learning paths |

This isn't just a prompt library. It's infrastructure for the new way we build software with AI.

---

## What's Included

```
LibreUIUX-Claude-Code/
├── 70 Plugins         # Domain-specific collections
├── 152 Agents         # Task-specialized AI personas
├── 76 Commands        # Slash commands for Claude Code
├── 74 Skills          # Reusable capability modules
├── 3 Skill Levels     # Beginner → Intermediate → Advanced
└── Templates          # Ready-to-use configurations
```

### Plugin Categories

| Category | Plugins | Description |
|----------|---------|-------------|
| **Frontend & UI** | design-mastery, frontend-mobile-development, accessibility-compliance | Core UI/UX development |
| **Backend Integration** | backend-development, api-scaffolding, database-design | Full-stack patterns |
| **Quality & Testing** | unit-testing, tdd-workflows, code-review-ai | Ensure production quality |
| **DevOps & Deploy** | cicd-automation, deployment-strategies, kubernetes-operations | Ship with confidence |
| **Specialized** | game-development, blockchain-web3, machine-learning-ops | Domain expertise |

### Skills vs Commands vs Agents

| Component | When to Use | Example |
|-----------|-------------|---------|
| **Skills** | Need domain knowledge applied to a task | `api-design-principles` - teaches REST best practices |
| **Commands** | Quick, repeatable actions | `/ui-critique` - get instant design feedback |
| **Agents** | Complex, multi-step work requiring expertise | `frontend-developer` - builds complete components |

---

## Quick Start

### Installation Paths

**Path 1: Just Want Better Prompts?** (5 minutes)
```bash
# Browse the beginner prompts
cat beginner/prompts/modern-button.md
```

**Path 2: Add Commands to Claude Code** (10 minutes)
```bash
# Copy commands to your project or global config
cp -r .claude/commands/* ~/.claude/commands/
```

**Path 3: Use Specific Plugins** (15 minutes)
```bash
# Example: Add design mastery to your project
cp plugins/design-mastery/agents/* your-project/.claude/agents/
cp plugins/design-mastery/skills/*/SKILL.md your-project/.claude/skills/
```

**Path 4: Full Installation** (30 minutes)
```bash
# Clone and integrate everything
git clone https://github.com/HermeticOrmus/LibreUIUX-Claude-Code.git
# Follow the advanced setup guide
```

---

## The Problem

Developers using Claude Code face these challenges:

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

## Repository Structure

```
LibreUIUX-Claude-Code/
├── README.md                          # You are here
│
├── plugins/                           # 68 domain-specific plugin collections
│   ├── design-mastery/               # UI/UX design expertise
│   │   ├── agents/                   # Specialized AI agents
│   │   ├── commands/                 # Slash commands
│   │   └── skills/                   # Reusable skill modules
│   ├── accessibility-compliance/     # WCAG, ARIA, a11y testing
│   ├── frontend-mobile-development/  # React, Vue, React Native, etc.
│   ├── backend-development/          # APIs, databases, architecture
│   ├── cicd-automation/              # Deployment, pipelines, DevOps
│   └── ... (65 more plugins)         # See full list below
│
├── beginner/                          # Start here if new
│   ├── README.md                      # Beginner guide overview
│   ├── design-vocabulary.md           # Learn the language of modern UI
│   ├── prompts/                       # Ready-to-use prompt templates
│   └── checklist.md                   # Pre-request checklist
│
├── intermediate/                      # Build systematic workflows
│   ├── README.md                      # Intermediate guide overview
│   ├── design-systems/                # Complete design system templates
│   ├── claude-md-templates/           # CLAUDE.md file templates
│   ├── component-libraries/           # Integration guides (Shadcn, Aceternity)
│   ├── workflows/                     # Step-by-step workflows
│   └── examples/                      # Real project examples
│
├── advanced/                          # Pro-level automation
│   ├── README.md                      # Advanced guide overview
│   ├── mcp-servers/                   # MCP server configurations
│   ├── slash-commands/                # Custom Claude Code commands
│   ├── automation/                    # Automated workflows
│   └── examples/                      # Production-level examples
│
├── resources/                         # Curated resources
│   ├── component-libraries.md         # Library comparisons & links
│   ├── inspiration/                   # Design inspiration sources
│   ├── tools.md                       # Recommended tools
│   └── github-repos.md                # Curated GitHub repositories
│
├── templates/                         # Copy-paste templates
│   ├── CLAUDE.md                      # Template for project root
│   ├── design-brief.md                # Design brief template
│   └── component-spec.md              # Component specification template
│
└── .claude/                           # Claude Code configuration
    └── commands/                      # Global slash commands
        ├── ui-modern.md
        ├── ui-critique.md
        └── ui-responsive.md
```

### All 70 Plugins

<details>
<summary>Click to expand full plugin list</summary>

| Plugin | Focus Area |
|--------|------------|
| accessibility-compliance | WCAG, ARIA, screen readers |
| agent-orchestration | Multi-agent coordination |
| api-scaffolding | REST/GraphQL API design |
| api-testing-observability | API testing & monitoring |
| application-performance | Frontend/backend optimization |
| archetypal-alchemy | Design psychology patterns |
| arm-cortex-microcontrollers | Embedded systems |
| backend-api-security | Auth, validation, security |
| backend-development | Server architecture |
| blockchain-web3 | Smart contracts, DeFi |
| business-analytics | Data analysis, reporting |
| cicd-automation | CI/CD pipelines |
| cloud-infrastructure | AWS, GCP, Azure |
| codebase-cleanup | Refactoring, debt reduction |
| code-documentation | Docs generation |
| code-refactoring | Pattern improvement |
| code-review-ai | Automated review |
| comprehensive-review | Full codebase audits |
| content-marketing | SEO, content strategy |
| context-management | Claude context optimization |
| customer-sales-automation | CRM, automation |
| database-cloud-optimization | DB performance |
| database-design | Schema, modeling |
| database-migrations | Safe migrations |
| data-engineering | ETL, pipelines |
| data-validation-suite | Input validation |
| debugging-toolkit | Debug strategies |
| dependency-management | Package management |
| deployment-strategies | Blue-green, canary |
| deployment-validation | Deploy verification |
| design-mastery | UI/UX excellence |
| developer-essentials | Core dev workflows |
| distributed-debugging | Microservice debugging |
| documentation-generation | Auto-docs |
| error-debugging | Error analysis |
| error-diagnostics | Root cause analysis |
| framework-migration | Version upgrades |
| frontend-mobile-development | React, Vue, mobile |
| frontend-mobile-security | XSS, CSRF protection |
| full-stack-orchestration | End-to-end coordination |
| functional-programming | FP patterns |
| game-development | Game engines, graphics |
| git-pr-workflows | Git best practices |
| hr-legal-compliance | Privacy, GDPR |
| incident-response | Outage handling |
| javascript-typescript | JS/TS patterns |
| julia-development | Julia lang |
| jvm-languages | Java, Kotlin, Scala |
| kubernetes-operations | K8s management |
| llm-application-dev | AI/LLM apps |
| machine-learning-ops | MLOps |
| mcp-integrations | MCP server tools & browser DevTools |
| multi-platform-apps | Cross-platform |
| observability-monitoring | Logging, metrics |
| payment-processing | Stripe, payments |
| performance-testing-review | Load testing |
| python-development | Python patterns |
| quantitative-trading | Algo trading |
| security-compliance | Security audits |
| security-scanning | Vuln detection |
| seo-analysis-monitoring | SEO tracking |
| seo-content-creation | SEO writing |
| seo-technical-optimization | Technical SEO |
| shell-scripting | Bash, automation |
| systems-programming | Low-level dev |
| tdd-workflows | Test-driven dev |
| team-collaboration | Team processes |
| unit-testing | Testing strategies |
| vibe-coding | Rapid AI-assisted prototyping |
| web-scripting | Scraping, automation |

</details>

---

## 🎓 Learning Path

### Week 1: Fundamentals
1. Read [Design Vocabulary](./beginner/design-vocabulary.md)
2. Try 3 component prompts from [beginner/prompts/](./beginner/prompts/)
3. Practice with the prompts to see before/after transformations

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

## Attribution & Inspiration

The framing of this repository was inspired by [Andrej Karpathy's](https://karpathy.ai/) observations about the transformation of programming in the AI era:

**Key Sources:**
- [LLMs as a New Computing Platform (2025 Year in Review)](https://karpathy.ai/blog/2025-llm-os.html) - Karpathy's comprehensive analysis of how LLMs are becoming a new computing paradigm
- [X/Twitter Thread on the New Vocabulary](https://x.com/karpathy/status/1872411236358504787) - The December 2025 post describing "agents, subagents, prompts, contexts, memory, modes, permissions, tools, plugins, skills, hooks, MCP, LSP, slash commands, workflows"

**On Claude Code specifically:**
> *"Claude Code is the first convincing demonstration of what an LLM Agent looks like... a little spirit/ghost that lives on your computer, can inspect files, use a browser, can be told to 'just fix all the build errors', or 'write tests for this file'."*

This repository aims to provide the specialized UI/UX infrastructure - skills, agents, commands, and workflows - that Karpathy describes as the new developer toolkit.

---

**Built by developers, for developers. Building the new programming paradigm, one component at a time.**

---

## Part of the Libre Open-Source Stack for Claude Code

This repository is part of a growing family of open-source toolkits for Claude Code.

### Libre suite — comprehensive plugin bundles

- [LibreArch-Claude-Code](https://github.com/HermeticOrmus/LibreArch-Claude-Code) — Software architecture and system design
- [LibreCopy-Claude-Code](https://github.com/HermeticOrmus/LibreCopy-Claude-Code) — Technical writing and documentation engineering
- [LibreDevOps-Claude-Code](https://github.com/HermeticOrmus/LibreDevOps-Claude-Code) — DevOps engineering and infrastructure automation
- [LibreEmbed-Claude-Code](https://github.com/HermeticOrmus/LibreEmbed-Claude-Code) — Embedded systems, firmware, and IoT development
- [LibreFinTech-Claude-Code](https://github.com/HermeticOrmus/LibreFinTech-Claude-Code) — Financial technology development
- [LibreGEO-Claude-Code](https://github.com/HermeticOrmus/LibreGEO-Claude-Code) — AI-search optimization (ChatGPT, Perplexity, Gemini, Google AI Overviews)
- [LibreGameDev-Claude-Code](https://github.com/HermeticOrmus/LibreGameDev-Claude-Code) — Game development across Godot, Unity, Unreal
- [LibreMLOps-Claude-Code](https://github.com/HermeticOrmus/LibreMLOps-Claude-Code) — ML engineering and AI operations
- [LibreMobileDev-Claude-Code](https://github.com/HermeticOrmus/LibreMobileDev-Claude-Code) — Mobile app development (Flutter, React Native, native iOS, native Android)
- [LibreSecOps-Claude-Code](https://github.com/HermeticOrmus/LibreSecOps-Claude-Code) — Security operations
- [LibreSessionFlow-Claude-Code](https://github.com/HermeticOrmus/LibreSessionFlow-Claude-Code) — Session lifecycle: handoff, pickup, absorb, explore, close

### Skills mini-repos — single CLAUDE.md drop-ins

- [vibe-engineer-skills](https://github.com/HermeticOrmus/vibe-engineer-skills) — Direct AI codegen well: hypothesis before help, scoped prompts, validate before accepting
- [markdown-discipline-skills](https://github.com/HermeticOrmus/markdown-discipline-skills) — Strip AI-slop from markdown (no em dashes, no marketing fluff)
- [shell-safety-skills](https://github.com/HermeticOrmus/shell-safety-skills) — `set -euo pipefail` discipline plus 15 failure-mode examples
- [commit-standard-skills](https://github.com/HermeticOrmus/commit-standard-skills) — Ormus Commit Standard v1.0 plus commit-msg hook and commitlint
- [unwoke-skills](https://github.com/HermeticOrmus/unwoke-skills) — Strip AI theater (ten sins to eliminate, symmetric engagement)
- [python-conventions-skills](https://github.com/HermeticOrmus/python-conventions-skills) — Modern Python 3.11+ (types, pathlib, async, ruff, mypy, uv)
- [typescript-conventions-skills](https://github.com/HermeticOrmus/typescript-conventions-skills) — TypeScript strict mode, discriminated unions, Result types
- [hermetic-laws-skills](https://github.com/HermeticOrmus/hermetic-laws-skills) — Seven Hermetic Principles applied to engineering
- [riper-workflow-skills](https://github.com/HermeticOrmus/riper-workflow-skills) — Research / Innovate / Plan / Execute / Review systematic dev
- [six-day-cycle-skills](https://github.com/HermeticOrmus/six-day-cycle-skills) — Sustainable shipping cadence with mandatory rest
- [token-optimization-skills](https://github.com/HermeticOrmus/token-optimization-skills) — Claude Code token and context optimization
- [osint-skills](https://github.com/HermeticOrmus/osint-skills) — OSINT research methodology (multi-wave investigative spiral)
- [calcinate-skills](https://github.com/HermeticOrmus/calcinate-skills) — Stage 1 of the Magnum Opus (burn project bloat)
- [claude-md-overhaul-skills](https://github.com/HermeticOrmus/claude-md-overhaul-skills) — Audit CLAUDE.md and MEMORY.md against caps
- [session-handoff-skills](https://github.com/HermeticOrmus/session-handoff-skills) — Session handoff and pickup discipline
- [naming-skills](https://github.com/HermeticOrmus/naming-skills) — Product naming methodology (mine the brand's vocabulary)
- [magnum-opus-skills](https://github.com/HermeticOrmus/magnum-opus-skills) — Seven-stage alchemy applied to project transformation
- [mem-search-skills](https://github.com/HermeticOrmus/mem-search-skills) — Search claude-mem cross-session memory: search, filter, fetch
- [hypothesis-debugging-skills](https://github.com/HermeticOrmus/hypothesis-debugging-skills) — Hypothesis-driven debugging: reproduce, isolate, test, fix
- [vibe-proof-skills](https://github.com/HermeticOrmus/vibe-proof-skills) — Security hardening for vibe-coded full-stack apps
- [tdd-skills](https://github.com/HermeticOrmus/tdd-skills) — Test-driven development (Red-Green-Refactor) for JS/TS and Python
- [mars-skills](https://github.com/HermeticOrmus/mars-skills) — Production-readiness audit: the five mortal sins of vibe-coded MVPs
- [git-workflow-skills](https://github.com/HermeticOrmus/git-workflow-skills) — Clean git workflow: branch, atomic commits, reviewable PRs
- [code-review-skills](https://github.com/HermeticOrmus/code-review-skills) — Domain-aware code review: classify the code, then focus
- [code-comprehension-skills](https://github.com/HermeticOrmus/code-comprehension-skills) — Understand an unfamiliar codebase fast
- [dx-audit-skills](https://github.com/HermeticOrmus/dx-audit-skills) — Audit developer experience: docs, onboarding, tooling friction
- [setup-env-skills](https://github.com/HermeticOrmus/setup-env-skills) — Set up a project's development environment
- [automate-skills](https://github.com/HermeticOrmus/automate-skills) — Turn repetitive tasks into reliable automation scripts
- [quick-fix-skills](https://github.com/HermeticOrmus/quick-fix-skills) — Fast troubleshooting for common issues
- [prime-context-skills](https://github.com/HermeticOrmus/prime-context-skills) — Prime project context at the start of a session
- [auto-docs-skills](https://github.com/HermeticOrmus/auto-docs-skills) — Generate and maintain project documentation
- [learning-skills](https://github.com/HermeticOrmus/learning-skills) — Learn any technology: roadmaps, explanations, practice, cheatsheets, comparisons
- [linux-sysadmin-skills](https://github.com/HermeticOrmus/linux-sysadmin-skills) — Linux system administration: security, performance, diagnostics, monitoring, maintenance

### Template source

- [andrej-karpathy-skills](https://github.com/HermeticOrmus/andrej-karpathy-skills) — the canonical single-file CLAUDE.md pattern (fork of jiayuan_jy's original)

Star the family, not just one — that's how the suite stays coherent.
