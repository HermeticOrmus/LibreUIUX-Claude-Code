# Jungian Archetypes UI/UX Cheatsheet

## The Hero

**Drive**: Mastery, achievement, courage

**UI Patterns**:
```tailwind
Button: bg-red-600 px-8 py-4 font-bold uppercase tracking-wider
Card: border-l-4 border-red-600 bg-zinc-900 shadow-2xl
Layout: Asymmetric grids, diagonal elements
```

**Typography**: Bold sans-serif, uppercase, tight tracking
**Motion**: Fast (200ms), bold transforms, directional
**Use for**: Fitness, productivity, competitive platforms

---

## The Magician

**Drive**: Transformation, knowledge, power

**UI Patterns**:
```tailwind
Card: bg-gradient-to-br from-purple-900 to-indigo-800 backdrop-blur-xl
Button: group relative overflow-hidden [morphing effects]
Layout: Centered, radial symmetry, layered depth
```

**Typography**: Serif display, elegant script, varying weights
**Motion**: Smooth morphing (500ms), particle effects, reveals
**Use for**: Mystical services, transformation tools, creative software

---

## The Sage

**Drive**: Truth, wisdom, understanding

**UI Patterns**:
```tailwind
Container: max-w-prose mx-auto leading-relaxed
Nav: border-b border-zinc-200 bg-white/80 backdrop-blur-sm
Layout: Grid-based, spacious margins
```

**Typography**: Humanist serif body, geometric sans UI
**Motion**: Minimal (300ms), purposeful only
**Use for**: Education, research, knowledge platforms

---

## The Innocent

**Drive**: Safety, happiness, simplicity

**UI Patterns**:
```tailwind
Button: bg-sky-400 rounded-full px-6 py-3 shadow-sm
Card: bg-white rounded-3xl p-8 border-2 border-sky-100
Layout: Symmetric, centered, balanced
```

**Typography**: Rounded sans-serif (400-600 weight)
**Motion**: Gentle bounces, playful micro-interactions
**Use for**: Wellness, children's products, friendly brands

---

## The Explorer

**Drive**: Discovery, freedom, adventure

**UI Patterns**:
```tailwind
Header: h-screen bg-cover bg-fixed [parallax]
Card: hover:scale-105 cursor-pointer transition-transform
Layout: Horizontal scrolling, panoramic
```

**Typography**: Adventure-inspired, slightly condensed
**Motion**: Parallax scrolling (600ms), zooming transitions
**Use for**: Travel, discovery platforms, outdoor brands

---

## The Rebel

**Drive**: Revolution, disruption, liberation

**UI Patterns**:
```tailwind
Section: -rotate-2 border-4 border-black bg-yellow-400
Text: font-mono uppercase tracking-widest [glitch]
Layout: Broken grids, intentional chaos
```

**Typography**: Industrial fonts, mixed cases, distressed
**Motion**: Glitch animations, unexpected movements
**Use for**: Disruptive startups, counter-culture brands

---

## The Lover

**Drive**: Intimacy, beauty, sensuality

**UI Patterns**:
```tailwind
Card: bg-gradient-to-br from-rose-100 to-pink-200 backdrop-blur-lg
Typography: font-serif text-rose-900 leading-loose
Layout: Flowing, organic, rhythm-based
```

**Typography**: Elegant serifs, script accents
**Motion**: Smooth (700ms), sensual, flowing
**Use for**: Romance, beauty, luxury brands

---

## The Creator

**Drive**: Innovation, imagination, expression

**UI Patterns**:
```tailwind
Workspace: grid grid-cols-12 gap-4 bg-zinc-50
Tool: hover:bg-zinc-200 active:bg-zinc-300 cursor-pointer
Layout: Flexible grids, tool-based
```

**Typography**: Creative variety, expressive mixing
**Motion**: Responsive to creation, playful feedback
**Use for**: Design tools, creative software, maker platforms

---

## The Jester

**Drive**: Joy, playfulness, entertainment

**UI Patterns**:
```tailwind
Button: animate-bounce bg-gradient-to-r from-pink-500 to-yellow-500
Card: rotate-1 hover:rotate-0 [playful tilt]
Layout: Dynamic, asymmetric, entertaining
```

**Typography**: Playful fonts, varying sizes
**Motion**: Bouncy (400ms), exaggerated, delightful
**Use for**: Entertainment, games, playful brands

---

## The Caregiver

**Drive**: Service, compassion, nurturing

**UI Patterns**:
```tailwind
Section: bg-amber-50 border-l-4 border-amber-400 p-6
Message: text-amber-900 leading-relaxed
Layout: Organized, predictable, safe
```

**Typography**: Warm, readable, comfortable
**Motion**: Gentle (400ms), supportive, never jarring
**Use for**: Healthcare, support services, community platforms

---

## The Ruler

**Drive**: Control, order, leadership

**UI Patterns**:
```tailwind
Dashboard: bg-zinc-900 border border-amber-600/20
Typography: font-serif text-amber-500 uppercase tracking-wide
Layout: Strict grids, formal symmetry
```

**Typography**: Prestigious serifs, strong hierarchy
**Motion**: Dignified (300ms), controlled, purposeful
**Use for**: Business dashboards, premium tools, luxury

---

## The Everyman

**Drive**: Belonging, connection, community

**UI Patterns**:
```tailwind
Container: bg-white rounded-lg shadow p-6
Button: bg-blue-600 hover:bg-blue-700
Layout: Conventional grids, predictable
```

**Typography**: Familiar system fonts, comfortable sizes
**Motion**: Expected (250ms), never surprising
**Use for**: Community platforms, social networks, accessible tools

---

## Quick Selection Guide

**What feeling do you want?**

- **Powerful/Bold**: Hero, Ruler, Emperor
- **Mysterious/Deep**: Magician, High Priestess, Hermit
- **Wise/Clear**: Sage, Hierophant
- **Safe/Friendly**: Innocent, Caregiver
- **Adventurous**: Explorer
- **Disruptive/Edgy**: Rebel
- **Beautiful/Romantic**: Lover
- **Creative/Artistic**: Creator
- **Playful/Fun**: Jester
- **Familiar/Accessible**: Everyman

**What's your brand personality?**

Think: "If my brand walked into a room, how would it behave?"
- **Commands attention** → Hero, Ruler
- **Transforms the space** → Magician
- **Shares wisdom** → Sage
- **Makes everyone comfortable** → Caregiver, Innocent
- **Explores every corner** → Explorer
- **Challenges the status quo** → Rebel
- **Connects deeply** → Lover
- **Creates beauty** → Creator
- **Brings laughter** → Jester
- **Fits right in** → Everyman
