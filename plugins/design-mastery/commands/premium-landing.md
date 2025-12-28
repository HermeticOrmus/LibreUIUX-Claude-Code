# Premium Landing Page Generator

Generate premium $5k+ quality SaaS landing pages using the Define → Build → Review → Refine framework.

## Usage

```
/premium-landing [phase] [options]
```

### Phases

1. `/premium-landing define` - Create context artifacts (brief, mood boards, specs)
2. `/premium-landing setup` - Generate style guide, PRD, and tasks
3. `/premium-landing build [section]` - Build a specific section
4. `/premium-landing review` - Audit current implementation
5. `/premium-landing refine [section]` - Iterate on a section

---

## Phase 1: Define

When invoked with `define`, guide the user through creating:

### 1. Project Brief
Ask for:
- What are you building?
- Who is your target audience?
- What are the goals of this landing page?
- What sections should it have?

Create: `docs/project-brief.md`

### 2. Content Files
For each section identified:
- Ask for headline, subheadline, CTAs, body copy
- Create: `docs/sections/[section-name]-content.md`

### 3. General Vibe Mood Board
Ask for:
- Light or dark theme? Why?
- What colors resonate with your audience?
- What feeling should the site evoke?
- Any inspiration sites?

Create: `docs/general-vibe.md`

### 4. Section-Specific Mood Boards
For each section:
- Ask for layout preferences
- Component library preferences (shadcn, 21st.dev)
- Animation requirements
- 3D elements if any

Create: `docs/sections/[section-name]-specs.md`

---

## Phase 2: Setup

When invoked with `setup`:

### Generate Style Guide
Read all mood boards and brief, then create:
- Color palette with usage guidance
- Typography scale
- Spacing system
- Component patterns
- Animation guidelines

Create: `docs/style-guide.md`

### Generate PRD
Extract from section specs:
- Tech stack needed
- Dependencies required
- File structure
- Performance requirements

Create: `docs/prd.md`

### Generate Tasks
Based on PRD and sections:
- Phase 1: Project setup
- Phase 2: Core components
- Phase 3: Per-section build tasks
- Phase 4: Polish
- Phase 5: Launch

Create: `docs/tasks.md`

---

## Phase 3: Build

When invoked with `build [section]`:

1. Read the section spec file
2. Read the style guide
3. Read the PRD
4. Build the section following specs exactly
5. Use specified components
6. Match reference images
7. After completion, suggest: "Commit this section before continuing"

### Build Order
```
1. Navigation (always first)
2. Hero section
3. Trust/logos section
4. Features section
5. [Continue based on PRD]
6. Footer (always last)
```

---

## Phase 4: Review

When invoked with `review`:

1. Check each section against its spec
2. Verify style guide compliance
3. Check responsiveness
4. Audit accessibility
5. Measure performance estimates
6. Identify gaps and issues

Output: Review report with action items

---

## Phase 5: Refine

When invoked with `refine [section]`:

1. Ask user to describe what needs to change
2. Request screenshot of current state if available
3. Request reference image if applicable
4. Make targeted changes
5. Update style guide if patterns changed
6. Suggest commit

---

## Component Libraries

When building sections, prioritize these sources:

### shadcn/ui
Base components. Install via:
```bash
npx shadcn-ui@latest init
npx shadcn-ui@latest add [component]
```

### 21st.dev
Premium animated components. Include both:
- The component code
- The installation prompt (for dependencies)

### Three.js / React Three Fiber
For 3D elements:
```bash
npm install three @react-three/fiber @react-three/drei
```

### Framer Motion
For animations:
```bash
npm install framer-motion
```

---

## Best Practices

1. **Isolated Context**: Start new conversation for each section
2. **Commit Per Section**: `git commit` after each section works
3. **Screenshot-Driven**: Use screenshots for iteration
4. **Living Style Guide**: Update when learnings emerge
5. **Section Specs First**: Never build without detailed specs

---

## File Structure Created

```
docs/
├── project-brief.md
├── general-vibe.md
├── style-guide.md
├── prd.md
├── tasks.md
└── sections/
    ├── hero-content.md
    ├── hero-specs.md
    ├── features-content.md
    ├── features-specs.md
    └── [etc.]
src/
├── components/
│   ├── ui/           # shadcn
│   ├── sections/     # Page sections
│   └── 3d/           # Three.js
└── app/
    └── page.tsx
```

---

## Example Invocation

```
User: /premium-landing define

AI: Let's create your premium landing page context.

**Step 1: Project Brief**

What are you building? (e.g., "A landing page for an AI-powered
code review tool targeting enterprise development teams")

[Continues through all define steps...]

User: /premium-landing build hero

AI: Building the hero section based on:
- Spec: docs/sections/hero-specs.md
- Style: docs/style-guide.md
- Content: docs/sections/hero-content.md

[Builds section, shows result]

Ready to commit? Run: git add . && git commit -m "feat(landing): add hero section"
```

---

*Framework derived from BuilderSpace's "$5k SaaS Website" methodology*
