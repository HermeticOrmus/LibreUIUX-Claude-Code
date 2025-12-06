# Major Arcana → Color Palettes & Moods

## Overview

The 22 Major Arcana cards of the Tarot represent archetypal life stages and cosmic forces. Each card carries distinct energetic signatures that translate into color palettes, lighting moods, and visual atmospheres for UI/UX design.

---

## The Major Arcana Palette System

### 0. THE FOOL
**Energy**: Innocence, spontaneity, new beginnings
**Color Palette**:
- Primary: Sky Blue (#38bdf8) → Boundless possibility
- Secondary: Cloud White (#f0f9ff) → Pure potential
- Accent: Sunshine Yellow (#fbbf24) → Playful optimism
- Dark: Morning Gray (#475569) → Dawn of journey

**Mood**: Bright, airy, weightless, optimistic
**Gradient**: `from-sky-400 via-white to-yellow-300`
**Shadow Style**: Soft, diffused, minimal depth
**Atmosphere**: Morning light, fresh air, open spaces

```tailwind
Background: bg-gradient-to-br from-sky-50 to-yellow-50
Card: bg-white/90 backdrop-blur-sm border border-sky-200
Button: bg-sky-400 hover:bg-sky-500 shadow-lg shadow-sky-200/50
```

---

### I. THE MAGICIAN
**Energy**: Manifestation, power, transformation
**Color Palette**:
- Primary: Deep Purple (#7c3aed) → Mystical power
- Secondary: Electric Violet (#a78bfa) → Transformative energy
- Accent: Mercury Silver (#e5e7eb) → Alchemical transformation
- Dark: Void Black (#0f172a) → The source

**Mood**: Mysterious, powerful, transformative
**Gradient**: `from-purple-900 via-violet-600 to-purple-400`
**Shadow Style**: Strong, glowing, magical auras
**Atmosphere**: Candlelit chamber, swirling energy, focused power

```tailwind
Background: bg-gradient-to-br from-slate-900 via-purple-900 to-violet-900
Card: bg-purple-950/80 backdrop-blur-xl border border-purple-500/30
Button: bg-purple-600 hover:bg-purple-500 shadow-2xl shadow-purple-500/50
```

---

### II. THE HIGH PRIESTESS
**Energy**: Intuition, mystery, inner wisdom
**Color Palette**:
- Primary: Moonlight Blue (#60a5fa) → Intuitive knowing
- Secondary: Midnight Purple (#6366f1) → Hidden depths
- Accent: Pearl White (#f1f5f9) → Lunar reflection
- Dark: Deep Navy (#1e293b) → The unconscious

**Mood**: Serene, mysterious, contemplative
**Gradient**: `from-indigo-950 via-blue-800 to-slate-700`
**Shadow Style**: Soft glows, moonlit halos
**Atmosphere**: Moonlit temple, still water, quiet knowing

```tailwind
Background: bg-gradient-to-b from-indigo-950 to-blue-900
Card: bg-slate-900/60 backdrop-blur-md border border-blue-400/20
Button: bg-blue-500/80 hover:bg-blue-400 shadow-lg shadow-blue-500/30
```

---

### III. THE EMPRESS
**Energy**: Abundance, nurturing, fertility
**Color Palette**:
- Primary: Forest Green (#059669) → Growth and life
- Secondary: Rose Pink (#f43f5e) → Love and beauty
- Accent: Golden Harvest (#f59e0b) → Abundance
- Dark: Rich Earth (#422006) → Fertile soil

**Mood**: Lush, nurturing, abundant
**Gradient**: `from-emerald-700 via-rose-400 to-amber-300`
**Shadow Style**: Soft, organic, natural depth
**Atmosphere**: Garden in bloom, golden hour, bountiful earth

```tailwind
Background: bg-gradient-to-br from-emerald-50 via-rose-50 to-amber-50
Card: bg-white border-2 border-emerald-200 shadow-xl shadow-emerald-100
Button: bg-emerald-600 hover:bg-emerald-500 shadow-lg shadow-emerald-200
```

---

### IV. THE EMPEROR
**Energy**: Authority, structure, leadership
**Color Palette**:
- Primary: Imperial Red (#dc2626) → Power and authority
- Secondary: Iron Gray (#52525b) → Structural strength
- Accent: Royal Gold (#eab308) → Sovereign status
- Dark: Obsidian Black (#18181b) → Absolute control

**Mood**: Strong, commanding, structured
**Gradient**: `from-red-900 via-zinc-800 to-red-800`
**Shadow Style**: Hard, defined, architectural
**Atmosphere**: Throne room, stone fortress, commanding presence

```tailwind
Background: bg-gradient-to-br from-zinc-900 to-red-950
Card: bg-zinc-900 border border-red-700 shadow-2xl
Button: bg-red-700 hover:bg-red-600 shadow-xl shadow-red-900/50
```

---

### V. THE HIEROPHANT
**Energy**: Tradition, teaching, spiritual wisdom
**Color Palette**:
- Primary: Sacred Blue (#2563eb) → Divine wisdom
- Secondary: Ceremonial Gold (#d97706) → Sacred tradition
- Accent: Ivory White (#fafaf9) → Purity of teaching
- Dark: Temple Stone (#57534e) → Ancient foundations

**Mood**: Sacred, traditional, wise
**Gradient**: `from-blue-900 via-amber-700 to-stone-600`
**Shadow Style**: Stained glass effects, reverent lighting
**Atmosphere**: Cathedral light, sacred space, timeless wisdom

```tailwind
Background: bg-gradient-to-b from-blue-950 via-amber-900 to-stone-900
Card: bg-blue-950/80 border-2 border-amber-500/30 backdrop-blur
Button: bg-blue-700 hover:bg-blue-600 shadow-lg shadow-amber-500/20
```

---

### VI. THE LOVERS
**Energy**: Union, harmony, choice
**Color Palette**:
- Primary: Passionate Pink (#ec4899) → Romantic love
- Secondary: Heart Red (#ef4444) → Deep passion
- Accent: Soft Peach (#fed7aa) → Tender connection
- Dark: Twilight Purple (#7c2d12) → Intimate depth

**Mood**: Romantic, harmonious, intimate
**Gradient**: `from-pink-400 via-red-300 to-orange-200`
**Shadow Style**: Soft, romantic, glowing
**Atmosphere**: Sunset embrace, tender moments, perfect union

```tailwind
Background: bg-gradient-to-br from-pink-100 via-red-50 to-orange-100
Card: bg-white/80 border border-pink-200 shadow-xl shadow-pink-100
Button: bg-pink-500 hover:bg-pink-400 shadow-lg shadow-pink-200
```

---

### VII. THE CHARIOT
**Energy**: Willpower, determination, victory
**Color Palette**:
- Primary: Victory Gold (#facc15) → Triumphant achievement
- Secondary: Warrior Bronze (#92400e) → Battle-tested strength
- Accent: Champion White (#fefce8) → Glorious victory
- Dark: Charcoal Black (#27272a) → Focused determination

**Mood**: Dynamic, victorious, powerful
**Gradient**: `from-yellow-500 via-amber-600 to-yellow-400`
**Shadow Style**: Strong, directional, movement-suggesting
**Atmosphere**: Victory parade, forward momentum, unstoppable force

```tailwind
Background: bg-gradient-to-r from-yellow-50 via-amber-100 to-yellow-50
Card: bg-amber-50 border-l-4 border-yellow-500 shadow-xl
Button: bg-yellow-500 hover:bg-yellow-400 shadow-lg shadow-yellow-200
```

---

### VIII. STRENGTH
**Energy**: Courage, compassion, inner power
**Color Palette**:
- Primary: Gentle Gold (#fbbf24) → Compassionate strength
- Secondary: Lionheart Orange (#f97316) → Courageous spirit
- Accent: Soft Cream (#fffbeb) → Gentle power
- Dark: Warm Earth (#78350f) → Grounded strength

**Mood**: Warm, powerful, gentle
**Gradient**: `from-amber-300 via-orange-400 to-amber-200`
**Shadow Style**: Warm, embracing, empowering
**Atmosphere**: Golden lion, warm embrace, quiet confidence

```tailwind
Background: bg-gradient-to-br from-amber-50 to-orange-100
Card: bg-white border-2 border-amber-300 shadow-lg shadow-amber-200
Button: bg-orange-500 hover:bg-orange-400 shadow-md shadow-orange-200
```

---

### IX. THE HERMIT
**Energy**: Solitude, introspection, inner guidance
**Color Palette**:
- Primary: Deep Indigo (#4338ca) → Inner depths
- Secondary: Twilight Purple (#6d28d9) → Contemplative wisdom
- Accent: Lantern Gray (#d1d5db) → Guiding light
- Dark: Cave Black (#111827) → Solitary depths

**Mood**: Contemplative, quiet, introspective
**Gradient**: `from-indigo-950 via-purple-900 to-gray-900`
**Shadow Style**: Deep, focused, single light source
**Atmosphere**: Mountain peak, lone lantern, inner sanctuary

```tailwind
Background: bg-gradient-to-b from-indigo-950 to-gray-950
Card: bg-indigo-950/80 backdrop-blur border border-purple-700/30
Button: bg-purple-700 hover:bg-purple-600 shadow-lg shadow-purple-900/50
```

---

### X. WHEEL OF FORTUNE
**Energy**: Change, cycles, destiny
**Color Palette**:
- Primary: Cosmic Purple (#8b5cf6) → Karmic cycles
- Secondary: Fortune Gold (#eab308) → Lucky breaks
- Accent: Destiny Blue (#3b82f6) → Fated moments
- Dark: Midnight Blue (#1e3a8a) → The wheel turns

**Mood**: Dynamic, cyclical, cosmic
**Gradient**: `from-purple-600 via-yellow-500 to-blue-600`
**Shadow Style**: Rotating, circular, dynamic
**Atmosphere**: Spinning cosmos, turning wheel, perpetual motion

```tailwind
Background: bg-gradient-to-br from-purple-900 via-yellow-600 to-blue-900
Card: bg-gradient-to-r from-purple-500/20 to-blue-500/20 backdrop-blur-lg
Button: bg-gradient-to-r from-purple-600 to-blue-600 hover:opacity-90
```

---

### XI. JUSTICE
**Energy**: Balance, fairness, truth
**Color Palette**:
- Primary: Balance Blue (#1d4ed8) → Impartial truth
- Secondary: Scale Silver (#94a3b8) → Equilibrium
- Accent: Judgment White (#f8fafc) → Clear verdict
- Dark: Law Black (#0f172a) → Absolute justice

**Mood**: Balanced, clear, authoritative
**Gradient**: `from-blue-900 via-slate-500 to-blue-800`
**Shadow Style**: Symmetric, balanced, precise
**Atmosphere**: Court of law, perfect balance, scales in equilibrium

```tailwind
Background: bg-gradient-to-b from-slate-900 to-blue-950
Card: bg-slate-900 border border-blue-600/50 shadow-xl
Button: bg-blue-700 hover:bg-blue-600 shadow-lg shadow-blue-900/30
```

---

### XII. THE HANGED MAN
**Energy**: Surrender, new perspective, sacrifice
**Color Palette**:
- Primary: Inverted Teal (#14b8a6) → Upside-down view
- Secondary: Suspension Blue (#06b6d4) → Liminal state
- Accent: Release White (#f0fdfa) → Letting go
- Dark: Void Gray (#334155) → The in-between

**Mood**: Suspended, serene, perspective-shifting
**Gradient**: `from-cyan-600 via-teal-500 to-cyan-400`
**Shadow Style**: Inverted, floating, weightless
**Atmosphere**: Hanging in space, new viewpoint, suspended time

```tailwind
Background: bg-gradient-to-b from-teal-950 to-cyan-900
Card: bg-teal-900/60 backdrop-blur-md border border-cyan-400/30
Button: bg-teal-600 hover:bg-teal-500 shadow-lg shadow-teal-500/30
```

---

### XIII. DEATH
**Energy**: Transformation, endings, rebirth
**Color Palette**:
- Primary: Transformation Black (#0a0a0a) → The void
- Secondary: Rebirth Purple (#a855f7) → New beginnings
- Accent: Bone White (#fafafa) → What remains
- Dark: Obsidian (#030712) → Total transformation

**Mood**: Transformative, powerful, liminal
**Gradient**: `from-gray-950 via-purple-900 to-gray-950`
**Shadow Style**: Deep, transformative, boundary-dissolving
**Atmosphere**: Threshold moment, cosmic reset, total change

```tailwind
Background: bg-gradient-to-br from-gray-950 via-purple-950 to-black
Card: bg-black/80 backdrop-blur border border-purple-500/20
Button: bg-purple-600 hover:bg-purple-500 shadow-2xl shadow-purple-900/50
```

---

### XIV. TEMPERANCE
**Energy**: Balance, moderation, alchemy
**Color Palette**:
- Primary: Angelic Blue (#3b82f6) → Divine balance
- Secondary: Alchemical Gold (#f59e0b) → Golden mean
- Accent: Harmony White (#f0f9ff) → Perfect blend
- Dark: Twilight Indigo (#312e81) → Balanced darkness

**Mood**: Harmonious, balanced, alchemical
**Gradient**: `from-blue-400 via-amber-300 to-blue-300`
**Shadow Style**: Blended, harmonious, flowing
**Atmosphere**: Mixing waters, golden ratio, perfect harmony

```tailwind
Background: bg-gradient-to-br from-blue-100 via-amber-50 to-blue-50
Card: bg-white/90 border-2 border-blue-200 backdrop-blur-sm
Button: bg-gradient-to-r from-blue-500 to-amber-500 hover:opacity-90
```

---

### XV. THE DEVIL
**Energy**: Materialism, bondage, shadow self
**Color Palette**:
- Primary: Infernal Red (#991b1b) → Primal desire
- Secondary: Shadow Black (#171717) → Bondage
- Accent: Temptation Gold (#a16207) → Seduction
- Dark: Abyss (#000000) → The shadow

**Mood**: Intense, seductive, shadowy
**Gradient**: `from-red-950 via-black to-red-900`
**Shadow Style**: Heavy, seductive, binding
**Atmosphere**: Underground depths, forbidden allure, shadow integration

```tailwind
Background: bg-gradient-to-br from-black via-red-950 to-black
Card: bg-red-950/80 backdrop-blur border border-red-700/30
Button: bg-red-800 hover:bg-red-700 shadow-2xl shadow-red-950/70
```

---

### XVI. THE TOWER
**Energy**: Upheaval, revelation, sudden change
**Color Palette**:
- Primary: Lightning White (#fafafa) → Sudden revelation
- Secondary: Storm Gray (#3f3f46) → Chaos and destruction
- Accent: Thunder Yellow (#fde047) → Electric shock
- Dark: Rubble Black (#18181b) → What remains

**Mood**: Shocking, dramatic, revelatory
**Gradient**: `from-yellow-300 via-zinc-700 to-yellow-200`
**Shadow Style**: Harsh, dramatic, stark contrast
**Atmosphere**: Lightning strike, crumbling structures, sudden clarity

```tailwind
Background: bg-gradient-to-br from-zinc-900 via-yellow-400 to-zinc-800
Card: bg-zinc-900 border-2 border-yellow-400 shadow-2xl shadow-yellow-500/30
Button: bg-yellow-400 hover:bg-yellow-300 text-zinc-900 shadow-xl
```

---

### XVII. THE STAR
**Energy**: Hope, inspiration, serenity
**Color Palette**:
- Primary: Starlight Blue (#38bdf8) → Celestial hope
- Secondary: Night Sky (#0c4a6e) → Cosmic expanse
- Accent: Stellar White (#f0f9ff) → Guiding light
- Dark: Deep Space (#082f49) → Infinite potential

**Mood**: Hopeful, serene, inspiring
**Gradient**: `from-sky-950 via-sky-400 to-sky-900`
**Shadow Style**: Soft glows, stellar halos
**Atmosphere**: Starlit night, cosmic hope, infinite promise

```tailwind
Background: bg-gradient-to-b from-sky-950 to-cyan-950
Card: bg-sky-900/60 backdrop-blur-xl border border-sky-400/30
Button: bg-sky-500 hover:bg-sky-400 shadow-lg shadow-sky-500/50
```

---

### XVIII. THE MOON
**Energy**: Illusion, intuition, the unconscious
**Color Palette**:
- Primary: Moonlight Silver (#cbd5e1) → Lunar glow
- Secondary: Mystery Blue (#1e40af) → Deep unconscious
- Accent: Dream Purple (#c084fc) → Illusory visions
- Dark: Shadow Navy (#0f172a) → Hidden depths

**Mood**: Mysterious, dreamlike, illusory
**Gradient**: `from-slate-900 via-blue-900 to-purple-900`
**Shadow Style**: Soft, mysterious, shape-shifting
**Atmosphere**: Moonlit path, shifting shadows, dreamscape

```tailwind
Background: bg-gradient-to-br from-slate-900 via-blue-950 to-purple-950
Card: bg-slate-800/70 backdrop-blur-lg border border-purple-400/20
Button: bg-blue-700/80 hover:bg-purple-600 shadow-xl shadow-purple-500/30
```

---

### XIX. THE SUN
**Energy**: Joy, success, vitality
**Color Palette**:
- Primary: Solar Gold (#fbbf24) → Radiant joy
- Secondary: Sunshine Orange (#fb923c) → Vital energy
- Accent: Daylight Yellow (#fef08a) → Pure happiness
- Dark: Warm Amber (#78350f) → Grounded warmth

**Mood**: Joyful, vibrant, life-affirming
**Gradient**: `from-yellow-300 via-orange-400 to-yellow-200`
**Shadow Style**: Warm, glowing, radiant
**Atmosphere**: Blazing sun, golden hour, pure vitality

```tailwind
Background: bg-gradient-to-br from-yellow-100 via-orange-200 to-yellow-50
Card: bg-white border-2 border-yellow-300 shadow-2xl shadow-yellow-200/50
Button: bg-orange-500 hover:bg-orange-400 shadow-lg shadow-orange-300
```

---

### XX. JUDGEMENT
**Energy**: Rebirth, calling, absolution
**Color Palette**:
- Primary: Angelic White (#fafafa) → Divine calling
- Secondary: Trumpet Gold (#d97706) → Awakening sound
- Accent: Resurrection Blue (#60a5fa) → Rebirth
- Dark: Judgment Gray (#44403c) → Final reckoning

**Mood**: Awakening, transformative, clarity-bringing
**Gradient**: `from-blue-400 via-white to-amber-400`
**Shadow Style**: Radiant, revealing, transcendent
**Atmosphere**: Trumpet call, rising souls, cosmic reckoning

```tailwind
Background: bg-gradient-to-b from-blue-200 via-white to-amber-200
Card: bg-white border-2 border-blue-300 shadow-2xl shadow-blue-100
Button: bg-gradient-to-r from-blue-600 to-amber-600 hover:opacity-90
```

---

### XXI. THE WORLD
**Energy**: Completion, wholeness, celebration
**Color Palette**:
- Primary: Cosmic Violet (#8b5cf6) → Universal harmony
- Secondary: Earth Green (#22c55e) → Grounded completion
- Accent: Celebration Gold (#fbbf24) → Triumphant joy
- Dark: Universe Indigo (#312e81) → Cosmic wholeness

**Mood**: Complete, harmonious, celebratory
**Gradient**: `from-violet-600 via-green-500 to-yellow-400`
**Shadow Style**: Embracing, complete, cosmic
**Atmosphere**: Dancing in the cosmos, perfect circle, completion

```tailwind
Background: bg-gradient-to-br from-violet-900 via-green-700 to-yellow-600
Card: bg-gradient-to-r from-violet-500/20 to-green-500/20 backdrop-blur-xl
Button: bg-gradient-to-r from-violet-600 via-green-600 to-yellow-600
```

---

## Using Major Arcana in Design

### Color Modifier Syntax
Add a Major Arcana card to any archetype for color transformation:

```
Hero + Sun = Bold achievement in golden, joyful tones
Magician + Moon = Transformative power in mysterious, lunar hues
Sage + Hermit = Deep wisdom in contemplative, introspective purples
Lover + Star = Romantic connection in hopeful, celestial blues
```

### Palette Application Rules

1. **Primary** → Main UI backgrounds, large surfaces
2. **Secondary** → Cards, containers, grouped elements
3. **Accent** → CTAs, highlights, important actions
4. **Dark** → Text, borders, depth elements

### Mood Translation
Each card's mood influences:
- Shadow intensity and color
- Gradient direction and complexity
- Border treatments
- Backdrop blur and opacity
- Animation timing and easing

---

*"Each card is a portal to an emotional landscape. Choose the door your users should walk through."*
