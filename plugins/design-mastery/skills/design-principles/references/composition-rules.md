# Composition rules

Composition is the arrangement of elements inside a frame: where things go, how big they are relative to each other, and how the empty space between them behaves. Good composition makes a layout feel deliberate and easy to navigate. These are working rules, not laws; each one is a tool for a specific problem.

## Grids

A grid is a set of invisible lines that elements snap to. It produces alignment, consistent rhythm, and faster decisions. Josef Muller-Brockmann's *Grid Systems in Graphic Design* (1981) is the classic reference; see the design-masters skill for his work.

### Anatomy

| Part | Definition | Web equivalent |
|------|------------|----------------|
| **Columns** | Vertical divisions content spans | `grid-cols-12` |
| **Gutters** | Space between columns | `gap-x-6` |
| **Margins** | Space between the grid and the frame edge | Container padding `px-4 md:px-8` |
| **Modules** | Cells formed where columns cross rows | Grid areas, card slots |
| **Baseline grid** | Horizontal lines text sits on | Line-height multiples of a base unit |
| **Flowlines** | Horizontal alignment lines that break the page into bands | Section tops, consistent vertical offsets |

### Choosing columns

| Columns | Divides into | Good for |
|---------|--------------|----------|
| 12 | 2, 3, 4, 6 | General web layouts (most flexible) |
| 8 | 2, 4 | Simpler marketing and app layouts |
| 4 | 2 | Mobile |
| 5 or 7 | Asymmetric spans | Editorial layouts that avoid even splits |

```html
<div class="mx-auto max-w-7xl px-4 md:px-8">
  <div class="grid grid-cols-4 gap-x-4 md:grid-cols-8 md:gap-x-6 lg:grid-cols-12">
    <main class="col-span-4 md:col-span-5 lg:col-span-8">...</main>
    <aside class="col-span-4 md:col-span-3 lg:col-span-4">...</aside>
  </div>
</div>
```

### Baseline rhythm

Keep line heights and vertical spacing on multiples of one unit (4px or 8px). Text across adjacent columns then lines up, and sections space consistently.

```css
:root { --unit: 0.25rem; } /* 4px */
body { line-height: calc(var(--unit) * 6); } /* 24px at 16px text */
h2   { margin-block: calc(var(--unit) * 12) calc(var(--unit) * 4); }
```

Exact baseline alignment is hard on the web (fonts sit differently in their line boxes); a consistent spacing scale gets most of the benefit.

## Rule of thirds

Divide the frame into a 3x3 grid; placing focal points on the lines or their intersections usually feels more dynamic than dead center. The rule comes from painting and photography (John Thomas Smith named it in *Remarks on Rural Scenery*, 1797).

**In UI**:
- Hero text block aligned to the left third, image weight on the right two thirds
- Crop product and portrait photos so the subject's eyes or key detail sit near an upper intersection
- Use `object-position` to keep the subject on a third when images crop responsively

```html
<img src="portrait.jpg" alt="..." class="h-80 w-full object-cover object-[center_30%]" />
```

Centered compositions are not wrong; they read as formal and stable. Use thirds when you want movement.

## Golden ratio

The golden ratio (about 1:1.618) is a proportion system: a 1.618 type scale, a content/sidebar split near 62/38, spacing steps of 16, 26, 42.

**Be honest about it**: claims that people innately prefer golden proportions are weakly supported. Experiments on the question, going back to Gustav Fechner in the 19th century, have produced mixed and inconsistent results, and many famous "golden" examples are fitted after the fact. Treat 1.618 as one useful ratio among others (1.5, 1.333, 1.25), chosen because it gives large, clear steps, not because it is magic.

| Use | Golden version | Practical alternative |
|-----|----------------|------------------------|
| Two-column split | 62% / 38% | `lg:grid-cols-[2fr_1fr]` (67/33) |
| Type scale | x1.618 | x1.25 or x1.333 for more levels |
| Spacing | 16, 26, 42 | 16, 24, 40 (on a 4px/8px scale) |

## Visual weight and balance

Rudolf Arnheim's *Art and Visual Perception* (1954, revised 1974) remains the standard account of visual weight: the perceptual pull an element exerts on the composition.

### What adds weight

| Factor | Heavier when | Note |
|--------|--------------|------|
| **Size** | Larger | The most obvious lever |
| **Location** | Farther from the center; higher in the frame | Arnheim: weight in the upper part of a composition counts for more than in the lower part, so heavier masses are usually placed low for stability |
| **Isolation** | Standing alone in space | A single small element in white space can balance a dense block |
| **Contrast** | Stronger contrast with its surroundings | Dark on light or light on dark, saturated on neutral |
| **Intrinsic interest** | Faces, text, complex detail | People look at faces and words first |
| **Shape** | Regular, compact shapes | A compact circle holds more weight than a scattered shape of equal area |

### Balance types

| Type | Feels | Use for |
|------|-------|---------|
| **Symmetrical** | Formal, stable, calm | Institutional pages, centered heroes, legal content |
| **Asymmetrical** | Dynamic, modern | Marketing, editorial, product pages |
| **Radial** | Focused on a center | Dashboards around one metric, logo lockups |

**Asymmetrical balance in practice**: a large image on the right balanced by a headline plus generous white space on the left; a heavy data table balanced by a narrow, high-contrast summary column.

## Alignment

Every element should share an edge or axis with something else. Near-misses (2 to 3px off) look like mistakes; clear offsets look like decisions.

- Pick one text alignment per block (usually start-aligned for reading)
- Align to the text, not the container: icons and text inside buttons should share a baseline or center line
- Optical adjustments are allowed: round shapes and triangles often need to overshoot a line slightly to look aligned

## Rhythm and repetition

Repeated intervals create rhythm; varied intervals create emphasis.

| Rhythm | Pattern | Effect |
|--------|---------|--------|
| Regular | Same spacing, same size | Calm, predictable (lists, grids) |
| Progressive | Steadily increasing or decreasing size/spacing | Direction, momentum |
| Alternating | A-B-A-B (image left, image right) | Interest across long pages |

Break the rhythm once, on purpose, where you want attention.

## White space

White space is an active element: it groups, isolates, and signals quality.

| Level | Controls | Typical scale |
|-------|----------|---------------|
| Micro | Letter spacing, line height, padding inside components | 4 to 16px |
| Meso | Gaps between components | 16 to 32px |
| Macro | Space between sections, page margins | 48 to 128px |

Generous macro space reads as premium and editorial; tighter space suits dense tools where users scan data. The mistake is inconsistency, not density.

## Focal point

Each composition needs one place the eye lands first. Create it with the strongest contrast, the largest size, isolation, or a directional cue (a gaze, a line, an arrow) that points at it. More than one competing focal point is the most common cause of "busy" layouts. See [visual-hierarchy.md](visual-hierarchy.md).

## Responsive composition

Composition must survive every width, not just the one in the mockup.

- **Reflow, do not shrink**: move from 12 to 8 to 4 columns and restack rather than scaling everything down
- **Keep the focal point first in source order** so it stays first on mobile
- **Re-crop images per breakpoint** (`object-position`, art direction with `<picture>`) so subjects stay in frame
- **Scale macro space more than micro space**: section padding can halve on mobile while component padding stays similar
- **Use container queries** (`@container`) for components that live in columns of varying width

```html
<section class="py-16 md:py-24 lg:py-32">
  <div class="@container">
    <div class="grid gap-6 @lg:grid-cols-2">...</div>
  </div>
</section>
```

(`@container` utilities are built into Tailwind CSS v4; v3 needs the `@tailwindcss/container-queries` plugin.)

## Composition checklist

- [ ] Layout snaps to a defined grid with consistent gutters and margins
- [ ] Vertical spacing uses one scale
- [ ] One clear focal point per view
- [ ] Balance is intentional (symmetrical or asymmetrical, not accidental)
- [ ] No near-miss alignments
- [ ] Rhythm breaks only where emphasis is wanted
- [ ] White space is consistent at each level
- [ ] Focal point and grouping survive at mobile width

## Related references

- [gestalt-principles.md](gestalt-principles.md): grouping behavior that composition relies on
- [visual-hierarchy.md](visual-hierarchy.md): ordering content within the composition
- [typography-fundamentals.md](typography-fundamentals.md): line length and vertical rhythm for text
- [../assets/principles-checklist.md](../assets/principles-checklist.md): evaluation checklist
