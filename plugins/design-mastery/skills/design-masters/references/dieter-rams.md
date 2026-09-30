# Dieter Rams (1932-)

> "Weniger, aber besser." (Less, but better.)

## Who he is

Dieter Rams was born in Wiesbaden, Germany, and studied architecture and interior design at the Wiesbaden School of Art, with a carpentry apprenticeship along the way. He joined the electrical appliance maker Braun in 1955 as an architect and interior designer, became head of design in 1961, and stayed at the company until 1997.

Braun's design approach grew out of collaboration with teachers from the Ulm School of Design (Hochschule für Gestaltung Ulm), including Hans Gugelot and Otl Aicher. Rams turned that approach into a consistent product language: radios, record players, shavers, calculators, and kitchen appliances that shared the same calm geometry, restrained color, and clear controls. From 1959 he also designed furniture for the manufacturer Vitsœ.

**The problem he solved**: post-war consumer electronics were new, complicated objects. Rams made them legible: you could see what each control did, and the object did not shout for attention in a living room.

## Key works

| Work | Year | What it demonstrates |
|------|------|----------------------|
| Braun SK 4 radio-phonograph (with Hans Gugelot) | 1956 | Clear acrylic lid instead of a wooden cabinet; nicknamed "Snow White's coffin" |
| Braun TP 1 portable radio and phonograph | 1959 | Modular, portable listening; parts that combine |
| Braun T3 pocket radio | 1958 | A grid of perforations and one round dial; often compared with the first iPod |
| 606 Universal Shelving System (Vitsœ) | 1960 | A modular system that grows and moves with the owner; still produced |
| 620 Chair Programme (Vitsœ) | 1962 | Furniture as a reconfigurable system |
| Braun ET 66 calculator (with Dietrich Lubs) | 1987 | Color used only for meaning: one accent for the result key, convex buttons that read by touch |

The ET 66 is the most directly useful object for interface designers. Its layout, key shapes, and single yellow accent were widely noted in the calculator app Apple shipped with early versions of iOS.

## The ten principles of good design

Rams formulated these in the late 1970s, in response to what he described as an impenetrable confusion of forms, colors, and noises. The order and wording below follow the version published by Vitsœ.

| # | Principle | What it means in practice |
|---|-----------|---------------------------|
| 1 | Good design is innovative | Innovation comes with technology; design develops alongside it, never as an end in itself |
| 2 | Good design makes a product useful | A product is bought to be used; design serves function, including psychological and aesthetic needs |
| 3 | Good design is aesthetic | Aesthetic quality is part of usefulness, because the things we use every day affect our well-being |
| 4 | Good design makes a product understandable | The structure explains itself; at best the product needs no manual |
| 5 | Good design is unobtrusive | Products are tools; they should be neutral and leave room for the user |
| 6 | Good design is honest | It does not make a product seem more innovative, powerful, or valuable than it is |
| 7 | Good design is long-lasting | It avoids being fashionable and so never looks dated |
| 8 | Good design is thorough down to the last detail | Nothing is arbitrary or left to chance |
| 9 | Good design is environmentally-friendly | It conserves resources and minimizes physical and visual pollution |
| 10 | Good design is as little design as possible | Less, but better: concentrate on the essential aspects, do not burden the product with non-essentials |

## Applying Rams in UI work

### Principles 4 and 5: understandable and unobtrusive

- Every control should announce what it does through label, shape, and position. Icon-only buttons need a text label or at least an accessible name and tooltip.
- The interface frames the user's content. Chrome (toolbars, borders, backgrounds) should recede.

```html
<!-- Unobtrusive chrome: neutral surface, content carries the color -->
<header class="border-b border-neutral-200 bg-white px-4 py-3">
  <nav class="flex gap-6 text-sm text-neutral-600">
    <a class="font-medium text-neutral-900" aria-current="page" href="/files">Files</a>
    <a href="/shared">Shared</a>
    <a href="/settings">Settings</a>
  </nav>
</header>
```

### Principle 6: honest

In interfaces, honesty rules out dark patterns: fake scarcity timers, pre-checked upsells, a "cancel" link styled to be invisible, progress bars that lie. An honest UI shows real state, real prices, and a cancel path as clear as the sign-up path.

### Principle 8: thorough down to the last detail

Details are where products feel cared for:
- Empty states, error states, and loading states designed as carefully as the happy path.
- Consistent corner radius, icon stroke width, and spacing scale.
- Focus rings that are visible, not removed.

```css
/* Thorough: a focus style that is designed, not deleted */
:focus-visible {
  outline: 2px solid #1d4ed8;
  outline-offset: 2px;
}
```

### The ET 66 lesson: color only for meaning

```html
<!-- One accent, reserved for the primary result action -->
<div class="grid grid-cols-4 gap-2">
  <button class="rounded-full bg-neutral-800 text-white">7</button>
  <!-- ...digits in the same neutral... -->
  <button class="rounded-full bg-amber-400 text-neutral-900">=</button>
</div>
```

If every button has a color, none of them does.

### Principle 10: as little design as possible

Remove decoration that carries no information: gradients that do not signal depth, borders that duplicate spacing, icons next to labels that already say everything. Keep anything that helps the user understand or act.

### Worked example: a settings card

| Before | Rams principle | After |
|--------|----------------|-------|
| Gradient header, drop shadow, border, and a background tint | 10 (as little design as possible) | Plain surface, one hairline divider between groups |
| Toggle with no label, meaning shown only by color | 4 (understandable) | Toggle with a text label and a short description of the effect |
| "Upgrade" button styled brighter than "Save" | 6 (honest) | The primary action is the one the user came to do; upsells are secondary |
| Disabled state identical to enabled | 8 (thorough) | Distinct disabled style plus a reason ("Available on the team plan") |

## Common misreadings

| Misreading | Correction |
|------------|------------|
| "Less, but better" means cutting features | It means concentrating on the essential. A tool with the features people need, presented clearly, fits the principle; a stripped tool that cannot do the job does not |
| Rams equals white and gray | Braun used color deliberately (the calculator key accents, small colored control details). Restraint made the color meaningful |
| Minimal means no affordances | Principle 4 demands that a product explains itself. Flat, unlabeled controls fail Rams's own test |
| Apple copied Rams, so Apple equals Rams | Some Apple products drew openly on Braun forms. The principles are about honesty, longevity, and usefulness, which a visual resemblance alone does not deliver |

## Quick reference

**When to reference Rams**:
- Product and interface design decisions
- Simplifying a cluttered screen without losing capability
- Settings, tools, dashboards, hardware-like controls
- Arguments about dark patterns (principle 6)

**His core lesson**:
*Concentrate on the essential, and make it understandable.*

**The Rams check**:
1. Can a first-time user tell what each control does without help?
2. Is anything decorating rather than informing? Remove it.
3. Does anything overstate what the product does? Fix it.
4. Are empty, error, loading, and focus states designed?
5. Is color used only where it means something?
6. Will this look reasonable when current UI fashion has moved on?
