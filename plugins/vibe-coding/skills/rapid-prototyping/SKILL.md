---
name: rapid-prototyping
description: Embrace vibe coding for rapid UI exploration. Covers when to iterate vs refine, ephemeral app patterns, and the art of fast, disposable prototyping with AI-assisted development.
---

# Rapid Prototyping with Vibe Coding

Embrace the philosophy of "vibe coding" for rapid UI exploration. This skill covers the art of fast, disposable prototyping - knowing when to iterate quickly versus when to refine carefully, and how to build ephemeral apps that validate ideas before committing to production code.

---

## When to Use This Skill

- Exploring UI concepts before committing to implementation
- Validating design hypotheses with working prototypes
- Building quick demos for stakeholder feedback
- Rapid iteration during discovery phase
- Creating throwaway experiments to test ideas
- When speed of learning matters more than code quality
- Early-stage product development

---

## The Vibe Coding Philosophy

### What is Vibe Coding?

Vibe coding is a development approach popularized by Andrej Karpathy where:

> "You fully give in to the vibes, embrace exponentials, and forget that the code even exists."

**The Core Insight**: With AI assistants, the cost of generating code approaches zero. This changes the economics of prototyping - throwaway code becomes genuinely throwaway.

### The Two Modes

```
+------------------+                    +------------------+
|   VIBE MODE      |                    |  CRAFT MODE      |
+------------------+                    +------------------+
| Speed > Quality  |                    | Quality > Speed  |
| Explore > Refine |                    | Refine > Explore |
| Throwaway code   |                    | Lasting code     |
| Learn fast       |                    | Build right      |
| Fail cheap       |                    | Succeed reliably |
+------------------+                    +------------------+
        |                                        |
        |  ← Know when to switch →               |
        |                                        |
        +--------→  Production  ←----------------+
```

### When to Vibe

| Situation | Vibe? | Why |
|-----------|-------|-----|
| Testing a layout idea | Yes | Cheap to try, easy to discard |
| Exploring color schemes | Yes | Visual, needs real rendering |
| Validating user flow | Yes | Interaction feedback is essential |
| Building a demo | Yes | Speed matters, polish doesn't |
| Core business logic | No | Errors are costly, needs testing |
| Database schema | No | Migration pain is real |
| Authentication | No | Security requires precision |
| Production component | No | Maintenance requires craft |

---

## Ephemeral App Patterns

### Pattern 1: The 10-Minute Prototype

Build a complete throwaway app in under 10 minutes:

```markdown
## 10-Minute Prototype Protocol

### Phase 1: Describe (2 min)
Write a single paragraph describing what you want to see:

"I want a dashboard with a sidebar navigation, a main content area showing
3 cards with metrics, and a header with user avatar. Dark theme. Use
placeholder data. The cards should have hover effects."

### Phase 2: Generate (3 min)
Send to Claude with:
- "Create a complete, runnable React app"
- "Use Tailwind for styling"
- "Inline all components in one file"
- "Use mock data, no API calls"

### Phase 3: Run (2 min)
- npx create-react-app temp-prototype
- Replace App.js with generated code
- npm start

### Phase 4: Evaluate (3 min)
- Does this feel right?
- What's missing?
- What's wrong?
- Is this direction worth pursuing?

### Decision Point
- Worth continuing? → Iterate (another 10-min cycle)
- Not worth it? → Delete and try different approach
- Ready for real? → Extract patterns, start craft mode
```

### Pattern 2: The Storyboard Prototype

Generate multiple screens to visualize a flow:

```python
class StoryboardPrototype:
    """
    Generate a sequence of screens to visualize user flow.
    """

    async def generate_flow(self, flow_description: str) -> list[str]:
        """
        Create multiple screen mockups from a flow description.
        """
        prompt = f"""
        Create a storyboard of React components for this user flow:

        {flow_description}

        For each screen:
        1. Create a complete, self-contained component
        2. Use Tailwind CSS
        3. Include realistic mock data
        4. Add navigation hints (arrows, "Next: X")

        Output format:
        - Screen 1: [Component code]
        - Screen 2: [Component code]
        - etc.

        Focus on VISUAL communication, not functionality.
        This is for rapid validation - code quality doesn't matter.
        """

        screens = await self.generate(prompt)

        # Save each screen for quick viewing
        for i, screen in enumerate(screens):
            self.save_screen(f"screen-{i}.jsx", screen)

        return screens
```

### Pattern 3: The Variant Explosion

Generate many variants quickly to explore design space:

```python
class VariantExplosion:
    """
    Generate many design variants rapidly.
    """

    async def explode_variants(
        self,
        base_component: str,
        dimensions: list[str]
    ) -> dict[str, str]:
        """
        Generate variants across multiple dimensions.

        Example dimensions:
        - "minimal vs dense"
        - "light vs dark"
        - "rounded vs sharp"
        - "playful vs serious"
        """
        variants = {}

        for dimension in dimensions:
            left, right = dimension.split(" vs ")

            # Generate both ends of the spectrum
            left_variant = await self.generate_variant(base_component, left)
            right_variant = await self.generate_variant(base_component, right)

            variants[f"{left}"] = left_variant
            variants[f"{right}"] = right_variant

        return variants

    async def generate_variant(self, base: str, modifier: str) -> str:
        prompt = f"""
        Take this component and make it feel "{modifier}":

        {base}

        Adjust:
        - Colors
        - Spacing
        - Typography
        - Borders/shadows
        - Any other visual properties

        Keep the same structure, change the vibe.
        """
        return await self.generate(prompt)
```

---

## Iteration Patterns

### When to Iterate (Stay in Vibe Mode)

```
+-------------------+
| Current Prototype |
+-------------------+
         |
         v
    Is it close?
    /          \
   No           Yes
   |             |
   v             v
Pivot?      Refine it
   |             |
  Yes            |
   |             v
   v        +-------------------+
Try new     |   Minor tweaks    |
direction   | (still vibe mode) |
            +-------------------+
```

**Iterate when**:
- You're not sure what you want yet
- Stakeholders need to "see it" to give feedback
- You're testing a hypothesis
- The cost of being wrong is low

**Stop iterating when**:
- You've found the right direction
- Further iteration isn't teaching you anything
- You're adding features, not exploring

### When to Refine (Switch to Craft Mode)

```
+-------------------+
| Validated Concept |
+-------------------+
         |
         v
   Worth building?
    /          \
   No           Yes
   |             |
   v             v
Archive     Extract patterns
for later   from prototype
                |
                v
         +-------------------+
         |   Build properly  |
         | (craft mode)      |
         +-------------------+
```

**Switch to craft when**:
- The concept is validated
- You're ready to commit
- Others will maintain this code
- It touches production data
- Security/reliability matters

---

## The Throwaway Mindset

### Core Principle: Code Has Zero Cost

With AI-assisted development:

```
Old mindset: "I spent 2 hours on this, I should keep it"
New mindset: "I can regenerate this in 2 minutes"

Old mindset: "Let me refactor this to work better"
New mindset: "Let me describe what I want and get new code"

Old mindset: "How do I fix this bug?"
New mindset: "This approach isn't working, try another"
```

### The Delete Button Test

Before refining code, ask:

> "If I deleted all this code and re-described what I want, would I get something better?"

If yes → Delete and regenerate
If no → You've found something worth keeping

### Prototype Hygiene

Keep prototypes actually throwaway:

```bash
# Structure for vibe coding projects
~/prototypes/
  ├── 2024-01-15-dashboard-concept/    # Date-prefixed
  │   ├── attempt-1/
  │   ├── attempt-2/
  │   └── attempt-3-keeper/            # Mark what worked
  ├── 2024-01-16-onboarding-flow/
  │   └── discarded/                   # Didn't work out
  └── .gitignore                       # Don't commit prototypes

# Auto-cleanup script
find ~/prototypes -mtime +30 -type d -exec rm -rf {} \;
```

---

## Fast Feedback Loops

### The OODA Loop for UI Prototyping

```
Observe → Orient → Decide → Act → (repeat)
   |         |         |        |
   v         v         v        v
See the   Evaluate   Choose   Generate
result    against    next     new code
          intent     step
```

**Optimizing each phase**:

1. **Observe** (see the result)
   - Use hot reload for instant feedback
   - Browser open next to editor
   - Screenshot comparisons for subtle changes

2. **Orient** (evaluate against intent)
   - Clear success criteria before starting
   - "I'll know it's right when..."
   - Trust your gut - it's faster than analysis

3. **Decide** (choose next step)
   - Tweak (small change to current)
   - Pivot (try different approach)
   - Accept (good enough, move on)

4. **Act** (generate new code)
   - One clear instruction per iteration
   - Don't bundle multiple changes
   - Let AI do the typing

### Speed Optimization Techniques

```python
class RapidIterator:
    """
    Maximize iteration speed for vibe coding.
    """

    def __init__(self):
        self.preview_url = "http://localhost:3000"
        self.hot_reload = True

    async def fast_iterate(self, component: str, feedback: str) -> str:
        """
        Single iteration cycle, optimized for speed.
        """
        # Generate refined code
        new_code = await self.refine(component, feedback)

        # Write directly (hot reload handles the rest)
        self.write_component(new_code)

        # Return immediately - don't wait for confirmation
        return new_code

    async def refine(self, current: str, feedback: str) -> str:
        """
        Fast refinement prompt.
        """
        prompt = f"""
        Current component:
        ```jsx
        {current}
        ```

        Change requested: {feedback}

        Return only the updated component. No explanation.
        """
        return await self.generate(prompt, max_tokens=2000)
```

---

## Prompt Patterns for Vibe Coding

### The "Just Make It" Prompt

```markdown
Create a [thing] that [does what].

Keep it simple. One file. Tailwind CSS. React.
Don't explain, just code.
Use realistic fake data.
```

### The "More Like This" Prompt

```markdown
Here's what I have:
[paste current code]

Make it more [adjective].

Examples of what I mean by [adjective]:
- [example 1]
- [example 2]

Just output the new code.
```

### The "Try Something Different" Prompt

```markdown
I've tried this approach:
[paste current]

It's not working because: [issue]

Give me a completely different approach to the same goal.
Don't iterate on the above - start fresh.
```

### The "Explode Options" Prompt

```markdown
I need a [component].

Give me 5 completely different approaches:
1. Minimal
2. Feature-rich
3. Unconventional
4. Classic/standard
5. Wild/experimental

Each as a complete component. Brief, no explanation.
```

---

## When Vibe Coding Fails

### Signs It's Time to Stop Vibing

1. **Diminishing returns**: Each iteration teaches less
2. **Complexity creep**: "Just add one more thing..."
3. **Dependency tangles**: Components need to coordinate
4. **State management hell**: Too many moving parts
5. **Performance issues**: Browser struggling

### The Transition Protocol

When you're ready to build for real:

```markdown
## Prototype to Production Checklist

### Extract from Prototype
- [ ] Visual patterns that worked
- [ ] Component structure (not the code)
- [ ] Spacing/sizing decisions
- [ ] Color palette used
- [ ] Typography choices

### Leave Behind
- [ ] All the actual code (it's prototype quality)
- [ ] Inline styles
- [ ] Mock data
- [ ] Missing error states
- [ ] Accessibility gaps

### Build Fresh
- [ ] Start with proper architecture
- [ ] Add proper typing
- [ ] Include error handling
- [ ] Add accessibility
- [ ] Write tests
- [ ] Document decisions
```

---

## Tools for Vibe Coding

### Recommended Stack

```bash
# Fastest path to visible output
npx create-react-app prototype --template typescript
cd prototype
npm start

# Or even faster with Vite
npm create vite@latest prototype -- --template react-ts
cd prototype
npm install
npm run dev
```

### Useful Aliases

```bash
# In .bashrc or .zshrc

# Quick prototype starter
alias proto="cd ~/prototypes && mkdir $(date +%Y-%m-%d)-idea && cd $_ && npm create vite@latest . -- --template react-ts && npm i && code . && npm run dev"

# Clean old prototypes
alias proto-clean="find ~/prototypes -mtime +14 -type d -exec rm -rf {} \;"

# Archive a good prototype
alias proto-archive="git init && git add -A && git commit -m 'prototype snapshot'"
```

### File Templates

```jsx
// ~/templates/quick-component.jsx
// Copy this as starting point

import React from 'react';

export default function Component() {
  // Paste content here
  return (
    <div className="min-h-screen bg-gray-100 p-8">
      {/* Your prototype here */}
    </div>
  );
}
```

---

## Anti-Patterns

### 1. Polishing Prototypes
**Problem**: Spending time making throwaway code "nice"
**Solution**: If it's good enough to see, ship the iteration

### 2. Prototype Attachment
**Problem**: Reluctance to delete code you've invested in
**Solution**: Remember: regeneration is free, attachment is costly

### 3. Premature Production
**Problem**: Shipping prototype code to production
**Solution**: Always rebuild from validated concept, never ship vibe code

### 4. Infinite Iteration
**Problem**: Endlessly tweaking without progress
**Solution**: Set iteration limits (3-5 rounds), then decide

### 5. Solving the Wrong Problem
**Problem**: Perfect solution to wrong problem
**Solution**: Validate the concept before perfecting the implementation

---

## Quick Reference

| Question | Answer |
|----------|--------|
| How long should a prototype take? | 10-30 minutes max |
| When to delete and restart? | When refinement isn't working |
| How many iterations? | 3-5 before deciding |
| When to switch to craft? | When concept is validated |
| What to keep from prototype? | Decisions and patterns, not code |
| What's "good enough"? | When you can see if it works |

---

## Integration Points

Vibe coding works with:
- `agent-orchestration/ui-agent-patterns` - Fast agent for generation
- `llm-application-dev/prompt-engineering-ui` - Prompts for quick iteration
- `mcp-integrations/browser-devtools-mcp` - Live preview feedback

---

*"The prototype exists to be destroyed. Its only purpose is to teach you what to build next."*
