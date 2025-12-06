# Archetypal Combinations: Alchemy Engine

## Overview

The Archetypal Alchemy system combines **Jungian Archetypes** (behavioral/structural patterns) with **Major Arcana** (color/mood modifiers) to generate cohesive, meaningful UI/UX designs.

**Formula**: `ARCHETYPE + CARD = Complete Design System`

---

## The Alchemy Process

### Step 1: Parse the Formula
```
Input: "Hero+Sun"
Parse: Archetype = Hero, Card = Sun
```

### Step 2: Extract Archetype Patterns
From jungian-archetypes skill:
- UI Characteristics
- Typography rules
- Layout principles
- Spacing patterns
- Motion behavior

### Step 3: Extract Card Colors
From major-arcana skill:
- Primary color
- Secondary color
- Accent color
- Dark shade
- Gradient formula
- Shadow style
- Atmospheric mood

### Step 4: Synthesize Design System
Combine archetype structure with card colors to create:
- Complete Tailwind config
- Component examples
- Usage guidelines

---

## Combination Matrix Examples

### Hero + Sun
**Synthesis**: Bold achievement in radiant golden tones

**Structure** (from Hero):
- Bold, angular shapes
- High contrast
- Action-oriented CTAs
- Dynamic layouts
- Fast animations

**Colors** (from Sun):
- Primary: `bg-yellow-300` → Radiant joy
- Secondary: `bg-orange-400` → Vital energy
- Accent: `bg-yellow-100` → Pure happiness
- Dark: `text-amber-900` → Grounded warmth

**Result**: Victorious, energetic, life-affirming achievement platform

```tailwind
// Hero+Sun Button
<button className="
  bg-orange-500 hover:bg-orange-400
  px-8 py-4
  text-xl font-bold uppercase tracking-wider
  rounded-md shadow-2xl shadow-orange-300
  transform hover:scale-105 transition-all
  text-white
">
  CLAIM VICTORY
</button>

// Hero+Sun Card
<div className="
  bg-gradient-to-br from-yellow-100 to-orange-200
  border-l-4 border-orange-500
  p-6 rounded-lg shadow-2xl shadow-yellow-200/50
">
  <h2 className="text-3xl font-bold text-amber-900 uppercase tracking-tight">
    Achievement Unlocked
  </h2>
</div>
```

---

### Magician + Moon
**Synthesis**: Transformative power in mysterious, lunar hues

**Structure** (from Magician):
- Gradients and transformations
- Interactive reveals
- Sacred geometry
- Layered depth
- Smooth morphing

**Colors** (from Moon):
- Primary: `bg-slate-900` → Shadow depths
- Secondary: `bg-blue-900` → Mystery blue
- Accent: `bg-purple-400` → Dream visions
- Dark: `text-slate-100` → Moonlight

**Result**: Mystical, transformative, illusion-weaving interface

```tailwind
// Magician+Moon Container
<div className="
  bg-gradient-to-br from-slate-900 via-blue-950 to-purple-950
  backdrop-blur-lg
  border border-purple-400/20
  p-8 rounded-2xl
  shadow-2xl shadow-purple-500/30
">
  <div className="relative group">
    <div className="absolute inset-0 bg-purple-500/10 blur-xl
                    group-hover:bg-purple-500/20 transition-all duration-700" />
    <p className="relative text-slate-300 font-serif text-lg leading-relaxed">
      The transformation begins...
    </p>
  </div>
</div>

// Magician+Moon Button
<button className="
  bg-gradient-to-r from-blue-700 to-purple-600
  hover:from-purple-600 hover:to-blue-700
  px-6 py-3 rounded-xl
  shadow-xl shadow-purple-500/30
  text-white font-medium
  transition-all duration-500
  backdrop-blur-sm
">
  Reveal the Mystery
</button>
```

---

### Sage + Hermit
**Synthesis**: Deep wisdom in contemplative, introspective tones

**Structure** (from Sage):
- Information hierarchy
- Reading-focused layouts
- Clean categorization
- Academic spacing
- Minimal motion

**Colors** (from Hermit):
- Primary: `bg-indigo-950` → Inner depths
- Secondary: `bg-purple-900` → Contemplation
- Accent: `bg-gray-400` → Lantern light
- Dark: `text-gray-100` → Illumination

**Result**: Introspective knowledge platform for deep learning

```tailwind
// Sage+Hermit Reading Container
<article className="
  max-w-prose mx-auto
  bg-gradient-to-b from-indigo-950 to-gray-950
  p-12 rounded-lg
  border border-purple-700/30
">
  <h1 className="
    text-4xl font-serif text-gray-200
    mb-6 leading-tight
  ">
    The Path of Inner Wisdom
  </h1>

  <p className="
    text-lg text-gray-300
    leading-relaxed mb-4
    font-serif
  ">
    In solitude, we find the answers that elude us in noise...
  </p>

  <blockquote className="
    border-l-4 border-purple-700
    pl-6 my-8
    text-gray-400 italic
  ">
    "The cave you fear to enter holds the treasure you seek."
  </blockquote>
</article>

// Sage+Hermit Navigation
<nav className="
  bg-indigo-950/80 backdrop-blur-md
  border-b border-purple-700/30
  px-6 py-4
">
  <a className="text-gray-400 hover:text-purple-400 transition-colors">
    Contemplations
  </a>
</nav>
```

---

### Innocent + Star
**Synthesis**: Pure optimism in hopeful, celestial tones

**Structure** (from Innocent):
- Rounded corners
- Pastel palettes (enhanced by Star)
- Friendly language
- Symmetric layouts
- Gentle motion

**Colors** (from Star):
- Primary: `bg-sky-400` → Starlight hope
- Secondary: `bg-sky-900` → Night sky
- Accent: `bg-sky-50` → Stellar white
- Dark: `text-sky-950` → Deep space

**Result**: Hopeful, nurturing, star-blessed simplicity

```tailwind
// Innocent+Star Card
<div className="
  bg-gradient-to-br from-sky-50 to-cyan-100
  rounded-3xl p-8
  border-2 border-sky-200
  shadow-xl shadow-sky-200/50
">
  <div className="flex items-center gap-4 mb-4">
    <div className="w-16 h-16 rounded-full bg-sky-400
                    flex items-center justify-center
                    shadow-lg shadow-sky-500/50">
      ⭐
    </div>
    <h3 className="text-2xl font-semibold text-sky-900">
      Your Dreams Are Valid
    </h3>
  </div>
  <p className="text-sky-700 leading-relaxed">
    Every star in the sky once seemed impossible...
  </p>
</div>

// Innocent+Star Button
<button className="
  bg-sky-400 hover:bg-sky-500
  text-white font-medium
  px-6 py-3 rounded-full
  shadow-lg shadow-sky-300
  transition-all duration-300
  hover:shadow-xl hover:shadow-sky-400
">
  Make a Wish ✨
</button>
```

---

### Rebel + Tower
**Synthesis**: Revolutionary disruption in shocking, lightning tones

**Structure** (from Rebel):
- Asymmetric layouts
- Broken grids
- Glitch effects
- Unexpected interactions
- Chaotic energy

**Colors** (from Tower):
- Primary: `bg-yellow-300` → Lightning strike
- Secondary: `bg-zinc-800` → Storm chaos
- Accent: `bg-yellow-400` → Electric shock
- Dark: `text-zinc-100` → What remains

**Result**: Disruptive, revelatory, structure-shattering interface

```tailwind
// Rebel+Tower Section
<section className="
  -rotate-2
  bg-gradient-to-br from-zinc-900 via-yellow-400 to-zinc-800
  border-4 border-yellow-400
  p-12 my-16
  shadow-2xl shadow-yellow-500/30
  relative overflow-hidden
">
  <div className="absolute inset-0 opacity-20">
    {/* Lightning SVG background */}
  </div>

  <h2 className="
    font-mono uppercase tracking-widest
    text-5xl text-zinc-900
    mb-4
    [text-shadow:2px_2px_0_theme(colors.yellow.300)]
  ">
    BURN IT DOWN
  </h2>

  <p className="text-zinc-100 font-bold text-xl">
    The old structures are crumbling. Build from the rubble.
  </p>
</section>

// Rebel+Tower CTA
<button className="
  bg-yellow-400 hover:bg-yellow-300
  text-zinc-900 font-black uppercase
  px-8 py-4
  transform -rotate-1 hover:rotate-0
  shadow-xl shadow-yellow-500/50
  border-2 border-zinc-900
  transition-all
">
  REVOLUTION NOW ⚡
</button>
```

---

### Lover + Empress
**Synthesis**: Sensual abundance in lush, nurturing tones

**Structure** (from Lover):
- Rich textures
- Romantic palettes
- Emphasis on imagery
- Flowing layouts
- Sensual motion

**Colors** (from Empress):
- Primary: `bg-emerald-600` → Growth
- Secondary: `bg-rose-400` → Love
- Accent: `bg-amber-300` → Abundance
- Dark: `text-amber-900` → Fertile earth

**Result**: Lush, beautiful, love-and-growth celebrating platform

```tailwind
// Lover+Empress Hero
<section className="
  bg-gradient-to-br from-emerald-100 via-rose-100 to-amber-100
  min-h-screen flex items-center justify-center
  px-8
">
  <div className="max-w-4xl">
    <h1 className="
      font-serif text-6xl text-emerald-900
      mb-6 leading-tight
    ">
      Where Love Blooms into Abundance
    </h1>

    <p className="
      text-2xl text-rose-800
      leading-loose mb-8
      font-serif italic
    ">
      Every relationship is a garden waiting to flourish...
    </p>

    <button className="
      bg-gradient-to-r from-rose-500 to-emerald-500
      text-white font-medium text-lg
      px-12 py-4 rounded-full
      shadow-2xl shadow-rose-300
      hover:shadow-3xl hover:scale-105
      transition-all duration-500
    ">
      Begin Your Journey 🌹
    </button>
  </div>
</section>
```

---

### Creator + Magician
**Synthesis**: Artistic transformation in mystical, creative tones

**Structure** (from Creator):
- Canvas/workspace layouts
- Tool palettes
- Expressive mixing
- Flexible grids
- Creative feedback

**Colors** (from Magician):
- Primary: `bg-purple-900` → Mystical power
- Secondary: `bg-violet-600` → Transformation
- Accent: `bg-gray-200` → Mercury silver
- Dark: `text-slate-100` → Light from void

**Result**: Magical creation workspace where art manifests reality

```tailwind
// Creator+Magician Workspace
<div className="
  min-h-screen
  bg-gradient-to-br from-slate-900 via-purple-900 to-violet-900
  grid grid-cols-12 gap-4 p-4
">
  {/* Tool Palette */}
  <aside className="
    col-span-2
    bg-purple-950/80 backdrop-blur-xl
    border border-purple-500/30
    rounded-lg p-4
  ">
    <h3 className="text-purple-300 font-medium mb-4">Tools of Creation</h3>
    {/* Tool icons */}
  </aside>

  {/* Canvas */}
  <main className="
    col-span-8
    bg-slate-900/60 backdrop-blur-sm
    border-2 border-purple-500/20
    rounded-lg
    relative overflow-hidden
  ">
    <div className="
      absolute inset-0
      bg-gradient-to-br from-purple-500/5 to-violet-500/5
    " />
    {/* Creation canvas */}
  </main>

  {/* Properties */}
  <aside className="
    col-span-2
    bg-purple-950/80 backdrop-blur-xl
    border border-purple-500/30
    rounded-lg p-4
  ">
    <h3 className="text-purple-300 font-medium mb-4">Manifestation</h3>
    {/* Property controls */}
  </aside>
</div>
```

---

## Combination Synthesis Rules

### When to Use Single Elements

**Just Archetype** (no card):
```
/archetypal-ui hero
```
→ Use archetype's default color suggestions from jungian-archetypes skill

**Just Card** (no archetype):
```
/archetypal-colors sun
```
→ Use color palette with neutral/balanced UI patterns

### Combining Rules

1. **Archetype provides STRUCTURE**:
   - Component patterns
   - Interaction behaviors
   - Typography hierarchy
   - Spacing systems
   - Motion characteristics

2. **Card provides COLOR**:
   - Primary/secondary/accent colors
   - Gradient formulas
   - Shadow styles
   - Atmospheric mood
   - Lighting direction

3. **Synthesis creates MEANING**:
   - Every choice reinforces the combined archetype
   - Colors enhance behavioral patterns
   - Structure supports emotional tone
   - Complete, coherent design language

### Advanced: Triple Combinations

For complex projects, blend multiple archetypes with one card:

```
Hero (60%) + Sage (40%) + Sun
→ Victorious learning platform in joyful golden tones
→ Bold achievement structure, knowledge organization, solar radiance
```

---

## Usage in Claude Code

### Request Format
```
Create a [component] using [Archetype]+[Card] aesthetic

Examples:
- "Create a hero section using Hero+Sun aesthetic"
- "Design a login form using Sage+Hermit aesthetic"
- "Build a pricing page using Ruler+Emperor aesthetic"
- "Generate a blog layout using Creator+Moon aesthetic"
```

### Expected Output
Claude will synthesize:
1. Complete component code (HTML/Tailwind)
2. Archetype reasoning (why these patterns)
3. Color rationale (how card enhances archetype)
4. Usage guidelines
5. Variation suggestions

---

## Quick Reference: Popular Combinations

| Combination | Use Case | Vibe |
|------------|----------|------|
| **Hero+Sun** | Achievement platforms, fitness apps | Victorious, radiant |
| **Magician+Moon** | Mystical services, transformation tools | Mysterious, powerful |
| **Sage+Hermit** | Educational platforms, contemplative content | Wise, introspective |
| **Innocent+Star** | Wellness apps, hopeful communities | Pure, optimistic |
| **Rebel+Tower** | Disruptive startups, revolutionary tools | Shocking, transformative |
| **Lover+Empress** | Relationship platforms, beauty brands | Sensual, abundant |
| **Creator+Magician** | Design tools, creative software | Artistic, transformative |
| **Caregiver+Temperance** | Healthcare, support services | Balanced, nurturing |
| **Explorer+Wheel** | Travel apps, discovery platforms | Adventurous, cosmic |
| **Ruler+Emperor** | Business dashboards, authority tools | Commanding, structured |
| **Jester+Fool** | Entertainment, playful brands | Joyful, spontaneous |
| **Everyman+World** | Community platforms, inclusive tools | Belonging, complete |

---

*"In the marriage of archetype and card, form finds its color, and color finds its purpose."*
