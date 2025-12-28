# Contributing to LibreUIUX

Welcome to the knowledge commons! This isn't just a repo—it's a collective mapping of how to communicate design intent to AI. Every contribution raises our shared understanding.

---

## 🎯 Philosophy

**We share knowledge, not secrets.**

Wonder emerges from understanding elegant mechanics, not from mystification. When you contribute here, you're revealing how systems work, documenting breakthrough patterns, and building collective craft.

---

📝 **Field Notes from the Maintainers**

The best contributions we've seen share three qualities:

1. **Technical precision** - "Change from shadow-md to shadow-lg" not "make it pop"
2. **Actionable experiments** - "Try this, watch for that, here's why it works"
3. **Mechanism revelation** - Explaining WHY something works, not just that it does

The contribution that changed everything for one developer: a simple note that "Claude understands Tailwind's scale system perfectly—use it as coordinates." That single insight unlocked consistent results for dozens of people.

**Your breakthrough could do the same.**

---

## 🤝 Types of Contributions

### 🎯 Prompt Templates & Patterns

**What we need:**
- Prompts that consistently produce quality results
- Phrasings that work better than obvious alternatives
- Patterns that solve common problems elegantly

**How to contribute:**

1. **Test thoroughly** - Use it in real projects first
2. **Document precisely** - Exact wording matters
3. **Explain the mechanism** - Why does this work?
4. **Show the alternative** - What did you try first that didn't work?

**Template:**
```markdown
## [Component Name] Prompt

### The Problem
[What challenge does this solve?]

### The Pattern
```
[Exact prompt that works]
```

### Why This Works
[Technical explanation of the mechanism]

### Try This
[Actionable experiment readers can run]

### Watch For
[Expected results that validate understanding]

### Common Variations
- [Variant 1 with use case]
- [Variant 2 with use case]

---

📝 **Field Notes**
[Personal experience, breakthrough moment, hard-won insight]
```

**Example:**
```markdown
## Glassmorphism Card Prompt

### The Problem
Vague requests like "modern glass effect" produce inconsistent results.

### The Pattern
```
Create a card with glassmorphism:
- backdrop-blur-lg (16px blur)
- bg-white/10 (10% opacity white)
- border border-white/20 (subtle edge)
- rounded-2xl shadow-xl
- Place over a gradient or image background
```

### Why This Works
Each property has a specific job:
- `backdrop-blur-lg` - Creates the frosted glass effect
- `bg-white/10` - Subtle tint without opacity blocking content
- `border-white/20` - Defines the edge without harsh lines
- These specific values balance visibility with elegance

### Try This
1. Request the exact prompt above
2. Then try: "Create a glass-looking card"
3. Compare results

### Watch For
The specific prompt produces identical results every time. The vague version varies wildly.

---

📝 **Field Notes**

Took me 15 attempts to nail these values. Too much blur (xl) and you can't read content. Too little (md) and it doesn't feel glassy. Too opaque (bg-white/30) and it's just a white box. These ratios—blur-lg + /10 opacity—hit the sweet spot.

Now I use this pattern everywhere: modals, navigation, overlays. Works perfectly every time.
```

### 📚 Guides & Tutorials

**What we need:**
- Step-by-step workflows that solve real problems
- Systematic approaches to common challenges
- Progressive learning paths

**Structure:**
```markdown
# [Guide Title]

## The Challenge
[What problem does this solve? Who is it for?]

## The Elegant Solution
[Overview of the approach and why it's elegant]

## Step-by-Step

### Step 1: [Action]
[Precise instructions]

**Try this:** [Immediate experiment]
**Watch for:** [Expected result]
**Why it works:** [Mechanism]

[Repeat for each step]

## Real-World Example
[Complete example with code]

## What You've Learned
[Key takeaways]

---

💛 **Gold Hat Note**
[How this contributes to collective understanding]
```

### 🎨 Design Systems

**What we need:**
- Complete, tested design systems
- Specialized variants (SaaS, e-commerce, dashboards)
- Novel approaches to organizing design tokens

**Requirements:**
- All color values specified
- Typography scale defined
- Spacing system documented
- Component standards included
- Real project tested

**Include:**
- Why you chose these specific values
- How the system evolved
- Problems it solved
- Edge cases handled

### 🔧 Tools & Workflows

**What we need:**
- Better iteration techniques
- Effective testing approaches
- Automation that actually works
- MCP server configurations

**Share:**
- The tool/workflow
- Setup instructions (tested)
- Real examples of use
- Time/quality improvements
- Limitations encountered

### 🐛 Bug Reports & Issues

**Effective issue template:**

```markdown
## What's Not Working
[Clear, specific description]

## What I Expected
[Precise expected behavior]

## What I Tried
[Exact prompts or steps]

## Results
[Code, screenshots, or output]

## Environment
- Claude Code version:
- Component library (if applicable):
- Framework:

## Hypothesis
[If you have one—what might be causing this?]
```

### 💡 Improvements & Ideas

**We love:**
- "This section could be clearer if..."
- "Here's a better way to explain..."
- "What if we added..."

**Make it actionable:**
- Show the current state
- Propose the improvement
- Explain why it's better

---

## 📝 Voice & Style

Read [VOICE_GUIDE.md](./VOICE_GUIDE.md) before contributing. Key points:

### The Formula
```
Technical Rigor:      45%  - Precise, accurate, systematic
Profound Wonder:      30%  - Genuine awe at elegant mechanics
Hacker Playfulness:   20%  - Insightful, clever, revealing
Warm Encouragement:    5%  - Supportive, remember the beginner
```

### Sound Like
- **Carl Sagan** revealing cosmic mechanics (wonder through understanding)
- **Richard Feynman** explaining physics (joy in precision)
- **A senior engineer** showing the elegant solution (system mastery)
- **A generous mentor** who remembers being a beginner

### Don't Sound Like
- ❌ Mystical guru with secrets
- ❌ Dry academic textbook
- ❌ Corporate training manual
- ❌ Motivational speaker

### Examples

**❌ Too dry:**
```
Specify shadow-lg for elevated elements.
```

**❌ Too mystical:**
```
The shadow-lg value channels the ancient wisdom of depth and elevation...
```

**✅ Just right:**
```
Here's what's elegant about shadow-lg: it's not just "more shadow." It's a
precise z-axis position in a coordinate system. Claude understands exactly how
much elevation you mean. That precision is why it works consistently.
```

---

## 🎯 Gold Hat Notes & Field Notes

### Gold Hat Notes (Community Knowledge)

Add these when sharing insights that benefit everyone:

```markdown
---
💛 **Gold Hat Note**
Topic: [Specific area]

This isn't just about [individual benefit]. It's about all of us raising
collective understanding of [specific area].

[Specific call to action for knowledge sharing]

Share what you discover. Document your breakthroughs. Help others see patterns.
The craft grows when knowledge flows.
---
```

### Field Notes (Practical Wisdom)

Add these when sharing hard-won insights:

```markdown
---
📝 **Field Notes from the Trenches**
Context: [Specific situation]

[The breakthrough or insight]

**Try this:** [Actionable experiment]
**Watch for:** [Expected result]

**This works because:** [Technical mechanism]
---
```

---

## ✅ Contribution Checklist

Before submitting a PR:

### Content Quality
- [ ] Technically accurate (test it first)
- [ ] Precise language (specific values, not vague aesthetics)
- [ ] Actionable experiments included
- [ ] Mechanisms explained (why it works)
- [ ] Real examples with code

### Voice & Style
- [ ] Follows voice guide (45% technical, 30% wonder, 20% playful, 5% encouraging)
- [ ] Wonder emerges from understanding, not mystery
- [ ] Explains mechanisms, doesn't mystify
- [ ] Shares knowledge, doesn't gatekeep

### Structure
- [ ] Right difficulty level (beginner/intermediate/advanced)
- [ ] Clear headings and sections
- [ ] Code formatted properly
- [ ] Links work
- [ ] Markdown renders correctly

### Community Value
- [ ] Raises collective understanding
- [ ] Solves a real problem
- [ ] Teachable to others
- [ ] Contributes to the commons

---

## 🔄 Contribution Process

### 1. Fork & Clone
```bash
git clone https://github.com/YOUR-USERNAME/LibreUIUX-Claude-Code.git
cd LibreUIUX-Claude-Code
```

### 2. Create Branch
```bash
git checkout -b feature/your-contribution-name
```

**Branch naming:**
- `feature/` - New content or features
- `fix/` - Bug fixes or corrections
- `docs/` - Documentation improvements
- `example/` - New examples

### 3. Make Changes

Follow the guidelines above. Test everything.

### 4. Commit

**Good commit messages:**
```
feat: Add glassmorphism prompt template with mechanism explanation

Includes:
- Precise prompt pattern
- Technical explanation of why values work
- Actionable experiment
- Field Notes from 15+ projects using this pattern
```

**Commit often with clear messages.**

### 5. Push & PR

```bash
git push origin feature/your-contribution-name
```

Open a PR with:
- **Clear title** - What does this add/fix?
- **Description** - Why is this valuable?
- **Testing** - How did you verify it works?
- **Examples** - Show the results

### 6. Review Process

Maintainers will review for:
- Technical accuracy
- Voice consistency
- Community value
- Quality standards

**Feedback is collaborative**, not critical. We're all mapping this territory together.

---

## 🎨 Special Guidelines by Section

### Beginner Content
**Focus:** Immediate results, minimal setup

- Provide ready-to-use templates
- Explain each element clearly
- Include "Try this now" experiments
- Show before/after examples
- Wonder at 8%, encouragement at 12%

**Example structure:**
1. The problem (relatable)
2. The solution (copy-paste ready)
3. Why it works (mechanism)
4. Try it yourself (experiment)

### Intermediate Content
**Focus:** Systematic workflows, design systems

- Build on beginner foundations
- Introduce systematic thinking
- Show pattern recognition
- Provide complete systems
- Wonder at 6%, deep patterns at 55%

**Example structure:**
1. From ad-hoc to systematic
2. The framework/system
3. How pieces connect
4. Real project application

### Advanced Content
**Focus:** Automation, deep patterns, production

- Assume technical competence
- Share production wisdom
- Reveal elegant architectures
- Provide automation tools
- Wonder at 5%, practical wisdom at 60%

**Example structure:**
1. The limitation we're solving
2. The elegant solution
3. Implementation details
4. Production considerations

---

## 💡 What Makes a Great Contribution?

### Great Prompt Template
- Solves a real problem you faced
- Tested in multiple projects
- Explains why specific values work
- Includes actionable experiments
- Shows mechanism, not just result

### Great Guide
- Teaches a systematic approach
- Builds understanding progressively
- Includes real examples
- Reveals elegant patterns
- Raises collective knowledge

### Great Design System
- Complete and tested
- Solves specific use case
- Explains choices made
- Shows evolution/reasoning
- Production-proven

### Great Tool/Workflow
- Actually saves time/improves quality
- Well-documented setup
- Real examples of use
- Limitations acknowledged
- Tested thoroughly

---

## 🚫 What We Don't Accept

### Not a Good Fit

**❌ Untested content**
- "I think this might work..."
- No real project validation

**❌ Vague advice**
- "Make it look good"
- "Use nice colors"
- Aesthetics without specifications

**❌ Gatekeeping**
- "Advanced users only"
- "You need to understand X first"
- Hidden knowledge or secrets

**❌ Wrong voice**
- Mystical/guru tone
- Dry academic writing
- Corporate-speak
- Pure hype

**❌ Incomplete**
- Code without explanation
- Explanation without code
- Pattern without mechanism
- Claim without proof

---

## 🎓 Learning to Contribute

### Start Small

**First contributions:**
1. Fix a typo (seriously, it helps!)
2. Improve a code example
3. Add a missing explanation
4. Share a prompt that worked for you

**Then grow:**
1. Write a Field Note about your breakthrough
2. Document a pattern you discovered
3. Create a prompt template
4. Write a guide

### Study Examples

**Great existing content:**
- [beginner/design-vocabulary.md](./beginner/design-vocabulary.md) - Clear, precise, actionable
- [intermediate/workflows/iteration-workflow.md](./intermediate/workflows/iteration-workflow.md) - Systematic, tested
- [VOICE_GUIDE.md](./VOICE_GUIDE.md) - Self-referential example

**Notice:**
- How mechanisms are explained
- Balance of technical and wonder
- Structure of experiments
- Use of Gold Hat / Field Notes

---

## 💬 Getting Help

**Questions about:**
- What to contribute? → Open a discussion
- How to structure it? → Check examples, ask in Discord
- Voice/style unclear? → Share a draft, get feedback
- Technical questions? → Ask in issues

**We're here to help.**

The repository grows through contribution. Contributors grow through feedback. We all grow together.

---

## 🏆 Recognition

**Contributors are:**
- Listed in commit history
- Mentioned in releases
- Part of the knowledge commons
- Building collective understanding

**Your contributions:**
- Help developers worldwide
- Advance the craft
- Map new territory
- Raise collective knowledge

That's the real reward—not internet points, but genuine impact on how we all work with AI.

---

💛 **Gold Hat Note**
Topic: The Nature of Contribution

When you contribute to this repository, you're not just adding content. You're expanding the map of human-AI collaboration in design.

Every prompt pattern you document? Territory mapped.
Every mechanism you explain? Understanding deepened.
Every breakthrough you share? Collective craft advanced.

Your contribution might seem small to you—just one prompt template, one workflow, one insight. But someone, somewhere, will build something meaningful because you documented what you learned.

That's not hypothetical. That's how knowledge commons work.

Share what you discover. The craft grows when knowledge flows.

---

**Thank you for contributing to the collective understanding.**

Let's build something extraordinary together.
