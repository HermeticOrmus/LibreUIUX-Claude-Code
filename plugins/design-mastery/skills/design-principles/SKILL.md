---
name: design-principles
description: Core visual design principles that underpin all great design. Master gestalt psychology, visual hierarchy, composition, color theory, and typography fundamentals. Use when making design decisions or evaluating designs against proven principles.
---

# Design Principles

The fundamental laws governing visual perception and communication. These principles are not opinions—they're observations about how human vision and cognition work.

## When to Use This Skill

- Making visual design decisions
- Evaluating whether a design "works"
- Explaining why something feels off
- Teaching design fundamentals
- Debugging design problems

## Core Principles

### 1. Visual Hierarchy

**The Law**: Not all elements are equally important. Design must guide the eye.

**Establishing Hierarchy**:

| Tool | What It Does | Example |
|------|--------------|---------|
| Scale | Larger = more important | Hero headlines vs. body text |
| Weight | Heavier = more important | Bold headings vs. light body |
| Color | Saturated/contrasting = attention | Primary CTA vs. secondary |
| Position | Top-left (in LTR) = first seen | Logo placement |
| Space | More space = more importance | Generous padding around CTAs |
| Depth | Shadows/elevation = prominence | Floating action buttons |

**Testing Hierarchy**:
Blur the design at 50%. Can you still identify:
- The primary focal point?
- The secondary information?
- The action you should take?

### 2. Gestalt Principles

**The Law**: The brain organizes visual elements into meaningful groups.

#### Proximity
*Elements near each other are perceived as related.*

```
Good:  [Label]          [Label]
       [Input]          [Input]
       (8px gap)        (8px gap)

       (32px gap between groups)

       [Label]          [Label]
       [Input]          [Input]

Bad:   [Label]  [Label]  [Label]  [Label]
       [Input]  [Input]  [Input]  [Input]
       (equal spacing destroys grouping)
```

**In Tailwind**:
- Related items: `space-y-2` (8px)
- Unrelated groups: `space-y-8` (32px) or `divide-y`

#### Similarity
*Elements that look alike appear grouped.*

When multiple card types exist, make categories visually distinct:
- Same category: same border-radius, shadow, padding
- Different category: different color, icon style, or layout

#### Continuity
*The eye follows smooth paths.*

Applied to navigation:
```
[Home] → [Products] → [About] → [Contact]
         ↓
    [Category A]
    [Category B]
    [Category C]
```

Lines don't need to be visible—implied lines work.

#### Closure
*The mind completes incomplete shapes.*

Useful for:
- Logo design (WWF panda, FedEx arrow)
- Icon design (implied shapes)
- Cards that bleed off screen (implies more content)

#### Figure/Ground
*Clear separation between subject and background.*

Common failures:
- Text on busy image backgrounds
- Low contrast between layers
- Unclear what's clickable vs. static

### 3. The Rule of Thirds

**The Law**: Placing subjects at 1/3 intersections creates natural balance.

```
+-------+-------+-------+
|       |       |       |
|   ●   |       |       |  ← Focal point at intersection
+-------+-------+-------+
|       |       |       |
|       |       |       |
+-------+-------+-------+
|       |       |       |
|       |       |       |
+-------+-------+-------+
```

For web layouts:
- Hero text left-aligned, hitting left-third
- Key visuals placed at intersection points
- Whitespace fills remaining thirds

### 4. Golden Ratio (1:1.618)

**The Law**: Proportions found in nature feel inherently pleasing.

Applications:
- Content width to sidebar: `1:1.618`
- Heading to body size: `1.618:1`
- Spacing multipliers: `16px → 26px → 42px`

Tailwind approximation:
```
Base unit: 16px (text-base)
Medium:    24px (text-2xl ≈ 16 × 1.5)
Large:     40px (text-4xl ≈ 16 × 2.5)
```

### 5. Visual Balance

**The Law**: Compositions should feel stable, not falling.

**Symmetrical Balance**
- Equal weight on both sides
- Formal, stable, traditional
- Use for: corporate, luxury, authoritative

**Asymmetrical Balance**
- Unequal elements balanced by visual weight
- Dynamic, interesting, modern
- Use for: creative, startups, editorial

**Visual Weight Factors**:
| Element | Adds Weight |
|---------|-------------|
| Size | Larger = heavier |
| Color | Darker, saturated = heavier |
| Complexity | Detailed = heavier |
| Position | Lower = heavier |
| Isolation | Alone = heavier |

### 6. Alignment

**The Law**: Elements should share visual lines, even if not explicitly drawn.

**Strong Alignment**:
```
[Logo]
_________________________
[Navigation links          ]
_________________________

[Headline              ]
[Subhead               ]
[CTA Button]

(Everything shares left edge)
```

**Weak Alignment**:
```
    [Logo]
[Navigation links]
    [Headline]
   [Subhead   ]
    [CTA Button]

(No consistent edge)
```

### 7. Repetition

**The Law**: Consistent patterns create unity and learnability.

Elements to keep consistent:
- Border radius (all cards same)
- Shadow levels (same depth for same importance)
- Spacing units (multiples of 4px or 8px)
- Color application (primary always means action)
- Typography hierarchy (h2 always looks like h2)

### 8. Contrast

**The Law**: Difference creates interest and guides attention.

Types of contrast:
- Size contrast: Large headings, small captions
- Color contrast: Dark on light, warm accents
- Weight contrast: Bold headlines, regular body
- Style contrast: Serif headings, sans body
- Spacing contrast: Tight groups, generous separation

**Minimum contrast requirements**:
- Body text: 4.5:1 ratio (WCAG AA)
- Large text (18px+): 3:1 ratio
- UI components: 3:1 ratio

### 9. White Space (Negative Space)

**The Law**: What you leave empty is as important as what you fill.

**Functions of white space**:
1. **Breathing room**: Prevents cognitive overload
2. **Grouping**: Separates distinct content areas
3. **Emphasis**: Isolated elements command attention
4. **Luxury signal**: Generous space suggests premium

**Common failures**:
- Cramming elements to "fit more"
- Equal spacing everywhere (creates monotony)
- Fear of empty space

**Tailwind spacing guide**:
```
Tight (related):     gap-2 (8px)
Standard (siblings): gap-4 (16px)
Section (groups):    gap-8 (32px) or py-12
Page (major):        gap-16 (64px) or py-24
```

### 10. Unity

**The Law**: All elements should feel like they belong together.

**Achieving Unity**:
- Consistent color palette
- Unified typography system
- Repeated patterns and components
- Aligned grids
- Harmonious proportions

**Testing Unity**:
Take any element and place it elsewhere. Does it still feel like it belongs? If not, the system lacks unity.

## Quick Reference: Principles Applied

| Problem | Principle | Solution |
|---------|-----------|----------|
| "It feels cluttered" | White Space | Increase padding/margins |
| "I don't know where to look" | Hierarchy | Establish clear focal point |
| "It feels disconnected" | Unity/Repetition | Apply consistent patterns |
| "It feels boring" | Contrast | Add variation in size/color/weight |
| "Things seem randomly placed" | Alignment | Create shared edges |
| "The groups are confusing" | Proximity/Similarity | Cluster related items |
| "It feels off balance" | Balance | Redistribute visual weight |

## Resources

- **references/gestalt-principles.md**: Deep dive on perceptual grouping
- **references/visual-hierarchy.md**: Comprehensive hierarchy techniques
- **references/color-theory.md**: Color psychology and application
- **references/typography-fundamentals.md**: Type as design element
- **references/composition-rules.md**: Layout and arrangement
- **assets/principles-checklist.md**: Evaluation checklist
