# Quick Start - 5 Minutes to Better UI

> From zero to beautiful components in under 5 minutes.

---

## Prerequisites

- Claude Code installed (`npm install -g @anthropic-ai/claude-code`)
- A project folder (any web project works)

---

## Step 1: Copy Configuration (30 seconds)

```bash
# Navigate to your project
cd your-project

# Download LibreUIUX configuration
curl -fsSL https://raw.githubusercontent.com/HermeticOrmus/LibreUIUX-Claude-Code/main/templates/CLAUDE.modern-webapp.md -o CLAUDE.md
```

Or manually copy the template:
- Go to `templates/CLAUDE.modern-webapp.md`
- Copy contents to `CLAUDE.md` in your project root

---

## Step 2: Start Claude Code (10 seconds)

```bash
claude
```

Claude Code automatically reads your `CLAUDE.md` and activates LibreUIUX design principles.

---

## Step 3: Generate Your First Component (2 minutes)

Try these commands:

### Modern Button
```
Create a modern button with hover effects using glassmorphism
```

### Card Component
```
Build a product card with image, title, price, and subtle shadow animations
```

### Navigation
```
Design a responsive navbar with mobile hamburger menu
```

---

## Step 4: Iterate (Ongoing)

Use the critique command:
```
Review this component for modern design principles
```

Claude will suggest improvements based on:
- Visual hierarchy
- Spacing consistency
- Color harmony
- Accessibility
- Micro-interactions

---

## What Just Happened?

You used LibreUIUX's three superpowers:

1. **Design Vocabulary** - Claude understands terms like "glassmorphism", "bento grid", "hero section"
2. **Component Templates** - Pre-configured prompts for common patterns
3. **Design Checklist** - Automatic quality validation

---

## Next Steps

### Beginner (You are here)
- [x] Quick Start
- [ ] Learn [Design Vocabulary](beginner/design-vocabulary.md)
- [ ] Use [Prompt Templates](beginner/prompts/)
- [ ] Apply [Quality Checklist](beginner/checklist.md)

### Intermediate
- [ ] Create a [Design System](intermediate/design-systems/)
- [ ] Build [Custom CLAUDE.md](templates/)
- [ ] Master [Iteration Workflow](intermediate/workflows/)

### Advanced
- [ ] Set up [Custom Commands](advanced/commands/)
- [ ] Create [Custom Agents](advanced/agents/)
- [ ] Build [Automation Pipelines](advanced/automation/)

---

## Common First Commands

| What You Want | What to Say |
|---------------|-------------|
| Modern button | "Create a modern CTA button with micro-interactions" |
| Card grid | "Build a bento grid layout for feature cards" |
| Hero section | "Design a hero section with gradient background and floating elements" |
| Form | "Create a login form with validation states and modern styling" |
| Dashboard | "Build a dashboard sidebar with icons and hover states" |

---

## Troubleshooting

### Claude doesn't know design terms
Make sure `CLAUDE.md` is in your project root, not a subfolder.

### Output isn't modern enough
Add specificity: Instead of "make a button", say "make a button with glassmorphism, subtle shadow, and scale-on-hover effect"

### Want different style
Copy a different template from `templates/`:
- `CLAUDE.saas-platform.md` - SaaS-focused
- `CLAUDE.mobile-first.md` - Mobile-first design
- `CLAUDE.minimal.md` - Clean, minimal aesthetic

---

## Get Help

- [Full Documentation](README.md)
- [Beginner Guide](beginner/README.md)
- [Design Vocabulary](beginner/design-vocabulary.md)
- [Contributing](CONTRIBUTING.md)

---

*From concept to component in minutes. That's the LibreUIUX way.*
