# Archetypal Alchemy Plugin

> Transform UI/UX design through the fusion of Jungian psychology and Tarot symbolism.

**Archetypal Alchemy** combines:
- **12 Jungian Archetypes** → Behavioral patterns, UI structures, interaction models
- **22 Major Arcana Cards** → Color palettes, atmospheric moods, symbolic energy

**Result**: Design systems with psychological depth and symbolic coherence.

---

## Quick Start

### Generate Components
```
/archetypal-ui Hero+Sun for pricing cards
/archetypal-ui Magician+Moon for modal
/archetypal-ui Sage+Hermit for blog layout
```

### Extract Color Palettes
```
/archetypal-colors Sun
/archetypal-colors Moon
/archetypal-colors Star
```

### Use the Agent
```
@archetypal-alchemist analyze my design
@archetypal-alchemist recommend archetypes for meditation app
```

---

## The Formula

```
ARCHETYPE + CARD = Complete Design System

Example:
Hero + Sun = Bold achievement in radiant golden tones
         ↓           ↓                    ↓
    Structure   Meaning              Colors
```

---

## The 12 Archetypes

| Archetype | Core Drive | Visual Language | Best For |
|-----------|------------|-----------------|----------|
| **Hero** | Mastery, achievement | Bold, angular, dynamic | Fitness, productivity, competitive |
| **Magician** | Transformation | Mysterious, gradient-rich | Mystical services, transformation tools |
| **Sage** | Truth, wisdom | Clean, minimal, scholarly | Education, knowledge platforms |
| **Innocent** | Safety, happiness | Soft, rounded, pastel | Wellness, children's products |
| **Explorer** | Discovery | Open, expansive | Travel, discovery platforms |
| **Rebel** | Disruption | Asymmetric, edgy | Disruptive startups |
| **Lover** | Intimacy, beauty | Elegant, sensual | Romance, beauty, luxury |
| **Creator** | Innovation | Artistic, experimental | Creative tools, maker platforms |
| **Jester** | Joy, playfulness | Colorful, bouncy | Entertainment, games |
| **Caregiver** | Service, nurturing | Warm, supportive | Healthcare, support services |
| **Ruler** | Control, leadership | Authoritative, structured | Business, premium tools |
| **Everyman** | Belonging | Familiar, approachable | Community, social platforms |

📖 **Full details**: [`skills/jungian-archetypes/SKILL.md`](skills/jungian-archetypes/SKILL.md)

---

## The 22 Major Arcana

| Card | Energy | Primary Color | Mood | Best For |
|------|--------|---------------|------|----------|
| **0. Fool** | New beginnings | Sky Blue | Optimistic, airy | Onboarding, fresh starts |
| **I. Magician** | Transformation | Deep Purple | Mysterious, powerful | Mystical, transformative |
| **II. High Priestess** | Intuition | Moonlight Blue | Serene, mysterious | Contemplative, spiritual |
| **III. Empress** | Abundance | Forest Green | Lush, nurturing | Growth, wellness |
| **IV. Emperor** | Authority | Imperial Red | Strong, commanding | Business, leadership |
| **V. Hierophant** | Tradition | Sacred Blue | Wise, traditional | Education, institutions |
| **VI. Lovers** | Union | Passionate Pink | Romantic, harmonious | Romance, connection |
| **VII. Chariot** | Victory | Victory Gold | Dynamic, triumphant | Achievement, momentum |
| **VIII. Strength** | Courage | Gentle Gold | Warm, powerful | Empowerment, fitness |
| **IX. Hermit** | Solitude | Deep Indigo | Contemplative, introspective | Meditation, reflection |
| **X. Wheel of Fortune** | Change | Cosmic Purple | Dynamic, cyclical | Dynamic platforms |
| **XI. Justice** | Balance | Balance Blue | Clear, authoritative | Legal, fairness-focused |
| **XII. Hanged Man** | Surrender | Inverted Teal | Suspended, serene | Perspective-shifting |
| **XIII. Death** | Transformation | Obsidian Black | Transformative, liminal | Major changes, resets |
| **XIV. Temperance** | Balance | Angelic Blue | Harmonious, alchemical | Wellness, balance |
| **XV. Devil** | Shadow | Infernal Red | Intense, seductive | Shadow work, intensity |
| **XVI. Tower** | Upheaval | Lightning White | Shocking, dramatic | Disruptive, revelatory |
| **XVII. Star** | Hope | Starlight Blue | Hopeful, serene | Aspirational, inspiring |
| **XVIII. Moon** | Illusion | Moonlight Silver | Mysterious, dreamlike | Dreams, unconscious |
| **XIX. Sun** | Joy | Solar Gold | Joyful, vibrant | Success, celebration |
| **XX. Judgement** | Rebirth | Angelic White | Awakening, clarity | Transformation, calling |
| **XXI. World** | Completion | Cosmic Violet | Celebratory, whole | Completion, achievement |

📖 **Full details**: [`skills/major-arcana/SKILL.md`](skills/major-arcana/SKILL.md)

---

## Popular Combinations

### For Achievement Platforms
- **Hero+Sun**: Victorious, radiant achievement
- **Hero+Chariot**: Forward momentum, unstoppable
- **Hero+Strength**: Gentle power, compassionate achievement

### For Mystical/Spiritual
- **Magician+Moon**: Transformative mystery
- **High Priestess+Hermit**: Deep intuitive wisdom
- **Sage+Star**: Hopeful knowledge

### For Wellness/Care
- **Caregiver+Empress**: Nurturing abundance
- **Caregiver+Temperance**: Balanced support
- **Innocent+Star**: Pure optimism

### For Disruptive Brands
- **Rebel+Tower**: Revolutionary shock
- **Rebel+Death**: Transformative disruption
- **Explorer+Wheel**: Adventurous change

### For Creative Tools
- **Creator+Magician**: Artistic transformation
- **Creator+Sun**: Joyful making
- **Jester+Fool**: Playful spontaneity

📖 **Full matrix**: [`skills/archetypal-combinations/SKILL.md`](skills/archetypal-combinations/SKILL.md)

---

## Plugin Structure

```
archetypal-alchemy/
├── README.md                           # This file
│
├── skills/                             # Knowledge base
│   ├── jungian-archetypes/
│   │   └── SKILL.md                    # 12 archetypes → UI patterns
│   ├── major-arcana/
│   │   └── SKILL.md                    # 22 cards → color palettes
│   └── archetypal-combinations/
│       └── SKILL.md                    # Synthesis engine
│
├── commands/                           # Slash commands
│   ├── archetypal-ui.md                # Generate components
│   └── archetypal-colors.md            # Extract palettes
│
└── agents/                             # Specialist agents
    └── archetypal-alchemist.md         # Master synthesizer
```

---

## Usage Examples

### Example 1: Pricing Page
```
User: /archetypal-ui Hero+Sun for pricing cards

Claude generates:
- Pricing cards with Hero structure (bold, competitive, achievement-focused)
- Sun palette applied (golden, radiant, victorious)
- Archetypal reasoning for each design choice
- Variations (Hero+Chariot, Hero+Strength)
```

**Result**: Pricing page that frames purchasing as victorious achievement.

### Example 2: Meditation App
```
User: Design a meditation app - introspective and mysterious feel

@archetypal-alchemist recommends:
- Archetype: Hermit (solitude, inner journey)
- Card: Moon (mysterious, dreamlike)
- Combination: Hermit+Moon

Generates:
- Complete design system
- Color tokens, typography, spacing
- Component library structure
- Archetypal rationale throughout
```

**Result**: App that feels like a contemplative sanctuary for inner exploration.

### Example 3: Color Palette Only
```
User: /archetypal-colors Tower

Claude provides:
- Lightning White, Storm Gray, Thunder Yellow, Rubble Black
- Complete Tailwind config
- Gradient formulas
- Shadow styles
- Usage guidelines
- Compatible archetypes (Rebel, Magician)
```

**Result**: Production-ready palette for shocking, disruptive designs.

---

## When to Use This Plugin

### Perfect For:
- ✅ Branding projects needing archetypal foundation
- ✅ UI redesigns lacking coherent personality
- ✅ Color palettes with emotional/psychological goals
- ✅ Design systems requiring depth and meaning
- ✅ Projects exploring mystical/spiritual themes
- ✅ Anything benefiting from symbolic resonance

### Not Ideal For:
- ❌ Pure utility tools (calculators, dashboards) - unless you want to add meaning
- ❌ Projects requiring generic, neutral aesthetics
- ❌ Rapid prototyping without brand consideration

---

## Philosophy

> "Every interface is a ritual space. Every interaction is a symbolic gesture."

### Core Principles

1. **Coherence over novelty** - Every choice reinforces the archetype
2. **Meaning over aesthetics** - Beautiful because it's true to its essence
3. **Depth over surface** - Patterns that resonate unconsciously
4. **Practicality with poetry** - Mystical wisdom meets production code

### Why This Works

**Jungian Archetypes** are universal patterns that users recognize unconsciously:
- Hero = mastery and achievement
- Sage = wisdom and learning
- Innocent = safety and simplicity

**Tarot Major Arcana** carries centuries of symbolic color associations:
- Sun = golden, joyful, victorious
- Moon = silver, mysterious, dreamlike
- Tower = shocking, lightning, disruptive

**Combined**: You get design systems that feel meaningful because they tap into deep psychological patterns.

---

## Advanced Techniques

### Multi-Archetype Blending
```
Hero (60%) + Sage (40%) + Sun
→ Bold achievement + knowledge organization, solar radiance
→ Educational platform celebrating mastery
```

### Archetypal Journey
```
Homepage: Innocent+Star (hopeful entry)
Product: Creator+Magician (transformative tool)
Pricing: Hero+Sun (victorious achievement)
```

### Paradoxical Combinations
```
Rebel+Hierophant = Disrupting tradition
Innocent+Devil = Naivety meets shadow
Ruler+Fool = Authority embraces chaos
```

---

## Contributing

Found a powerful new combination? Discovered a refinement to an archetype mapping? Share your archetypal insights!

**Ways to contribute**:
- Document successful combinations in real projects
- Refine archetype → UI pattern mappings
- Expand card → color palette variations
- Create example implementations
- Add cultural/mythological depth to archetypes

---

## Resources

### Further Study
- **Jungian Psychology**: *Man and His Symbols* - Carl Jung
- **Tarot Symbolism**: *The Tarot* - Paul Foster Case
- **Design Psychology**: *Emotional Design* - Don Norman
- **Archetypal Branding**: *The Hero and the Outlaw* - Margaret Mark & Carol Pearson

### Related Plugins
- **design-mastery** - Timeless design principles and masters
- **modern-uiux** - Contemporary component patterns
- **accessibility-first** - Ensure archetypal designs remain inclusive

---

## License

Part of the LibreUIUX project - MIT License

---

*"In the marriage of archetype and card, form finds its color, and color finds its purpose."*

✨ **Begin your alchemical work**: `/archetypal-ui Hero+Sun for hero section`
