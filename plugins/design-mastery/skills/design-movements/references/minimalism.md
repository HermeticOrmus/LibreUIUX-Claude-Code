# Minimalism (c. 1920s-present)

Minimalism is less a single movement than a recurring position: reduce a design to what it needs, and let proportion, material, and space do the work. It has several distinct roots, and knowing which one you are borrowing from sharpens the result.

## Origins and context

| Root | Where and when | Key idea |
|------|----------------|----------|
| Anti-ornament modernism | Vienna and Germany, 1900s-1920s | Adolf Loos's lecture "Ornament and Crime" (delivered 1910, often dated 1908) argued that ornament was wasted labor |
| De Stijl | Netherlands, from 1917 (Theo van Doesburg's magazine *De Stijl*, Piet Mondrian) | Reduction to horizontals, verticals, primaries, and black and white |
| Modernist architecture | Germany and the United States, 1920s-1960s | Mies van der Rohe (the phrase "less is more" is attributed to him; the words appear earlier in Robert Browning's 1855 poem "Andrea del Sarto"); Barcelona Pavilion (1929) |
| Postwar industrial design | Germany, 1950s-1990s | Dieter Rams at Braun and Vitsœ; his tenth principle: good design is as little design as possible ("Weniger, aber besser") |
| Minimal art | New York, 1960s | Donald Judd, Dan Flavin, Carl Andre, Agnes Martin; the term popularized after Richard Wollheim's essay "Minimal Art" (*Arts Magazine*, January 1965); Judd's "Specific Objects" (written 1964, published 1965) |
| Japanese aesthetics | Long tradition; in modern branding through Muji (founded 1980, art director Ikko Tanaka; Kenya Hara from 2002) | Emptiness as capacity: space left for the user, not poverty of form |
| Digital minimalism | 1990s onward | Search pages with one field, Apple product design under Jony Ive, content-first UI |

## Key figures and works

| Person | Work | Year | What it shows |
|--------|------|------|---------------|
| Piet Mondrian | Compositions with red, yellow, and blue | 1920s | Balance through asymmetric reduction |
| Ludwig Mies van der Rohe | Barcelona Pavilion | 1929 | Free plan, rich materials, almost no ornament |
| Dieter Rams (with Hans Gugelot) | Braun SK 4 radio-phonograph | 1956 | Product as a quiet, ordered object |
| Dieter Rams | Vitsœ 606 Universal Shelving System | 1960 | A modular system that lasts |
| Donald Judd | Untitled stacks | 1960s onward | Repetition and industrial fabrication without composition |
| Agnes Martin | Grid paintings | 1960s | Subtle hand-drawn grids; minimal but not mechanical |
| Kenya Hara | Muji art direction; *Designing Design* (book) | 2000s | Emptiness as a design concept |

## Visual markers and the principles behind them

| Marker | Principle |
|--------|-----------|
| Large areas of empty space | Space is a material; emptiness focuses attention |
| Few colors, often neutrals plus one accent | Every color must carry a meaning |
| One or two typefaces, few weights, strict scale | Hierarchy through size and space, not decoration |
| Precise alignment and proportion | With little on the page, every misalignment shows |
| High-quality materials and imagery | Reduction exposes quality; cheap details become obvious |
| Hidden complexity | The system does the work so the surface does not have to |

## Applying it in UI work

**Fits**: premium consumer products, portfolios, reading and writing tools, calm productivity apps, luxury, architecture, galleries.
**Watch out**: minimalism is not the same as removing features or labels. Users still need to find things.

### Tokens

```css
:root {
  --min-bg: #fafafa;
  --min-ink: #171717;
  --min-muted: #6b6b6b;   /* check contrast, see below */
  --min-line: #e5e5e5;
  --min-accent: #1f4ed8;  /* one accent, for actions only */
  --space-unit: 8px;      /* 8, 16, 24, 48, 96 */
}
```

```html
<!-- Tailwind: one idea per screen, generous space, one action -->
<section class="min-h-screen bg-[#fafafa] text-neutral-900 flex items-center">
  <div class="mx-auto max-w-2xl px-6">
    <h1 class="text-5xl font-light tracking-tight">A quieter inbox.</h1>
    <p class="mt-6 text-lg text-neutral-600 leading-8">Only the messages that need you.</p>
    <a class="mt-12 inline-block border-b-2 border-neutral-900 pb-1 font-medium">Start free</a>
  </div>
</section>
```

- **Type**: one family, two or three weights, a modular scale; let size and space create hierarchy.
- **Color**: neutrals plus one accent reserved for interactive elements.
- **Layout**: fewer elements per view, generous margins, consistent spacing unit.
- **Motion**: subtle, short, purposeful (state changes, not decoration).

### Accessibility notes

- Minimal designs often fail on low-contrast grey text and hairline borders. Check greys against 4.5:1 for text and 3:1 for input borders and focus indicators.
- Icon-only controls without labels are a common minimalist failure. Keep visible labels or at least accessible names and tooltips.
- Hiding navigation behind gestures or hover harms discoverability; keep primary paths visible.

## Common misreadings

- **"Minimal means empty or plain."** The Barcelona Pavilion used onyx, travertine, and chrome. Minimal design often depends on expensive precision.
- **"Less is more" is Rams's line.** It is attributed to Mies van der Rohe; Rams's formulation is "less, but better", which asks for improvement, not just removal.
- **"Minimalism means fewer features."** Rams and Muji reduce what the user must process, not necessarily what the product can do.
- **"It is neutral."** Minimalism signals premium, calm, and control, which is a brand statement like any other.

## Legacy

- The dominant visual language of consumer technology and premium brands.
- A constant counterpart to maximalist revivals (Memphis, postmodernism, grunge), which define themselves against it.

---

## Quick reference

**Reach for it when**: focus, calm, and quality are the product.
**Avoid it when**: users need dense information or discovery of many options; use Swiss-style structure instead.

**Recipe**:
1. Neutral field, near-black ink, one accent for actions.
2. One type family, big scale steps, an 8px spacing system with generous margins.
3. One primary idea and one primary action per view, with labels kept visible.
