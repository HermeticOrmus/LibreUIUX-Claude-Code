# Gestalt principles of perceptual grouping

The eye does not read a screen pixel by pixel. It groups, completes, and separates before the user reads a single word. Gestalt principles describe those grouping rules, so you can make the grouping the user perceives match the grouping you intended.

## Origins

| Who | Contribution |
|-----|--------------|
| **Max Wertheimer** | His 1923 paper "Untersuchungen zur Lehre von der Gestalt II" (Psychologische Forschung, vol. 4) set out the "laws of organization" for grouping: proximity, similarity, common fate, continuity, closure |
| **Kurt Koffka** | Brought the ideas to English readers; *Principles of Gestalt Psychology* (1935) |
| **Wolfgang Kohler** | *Gestalt Psychology* (1929); with Wertheimer and Koffka formed the Berlin school |
| **Stephen Palmer** | Added **common region** (1992) and, with Irvin Rock, **uniform connectedness** (1994) |

The core claim of the Berlin school: the whole is perceived as something other than the sum of its parts. For UI work the practical reading is simpler. Users see groups first, and they act on the groups they see.

## Quick map

| Principle | The eye groups things that... | UI lever |
|-----------|-------------------------------|----------|
| Proximity | are close together | Spacing scale |
| Similarity | look alike | Color, shape, size, type style |
| Common region | share an enclosed area | Cards, panels, background fills |
| Uniform connectedness | are visually connected | Lines, connectors, shared bars |
| Continuity | lie along a line or curve | Alignment, flow, steppers |
| Closure | form a shape when completed | Icons, logos, implied edges |
| Figure/ground | stand out from a background | Contrast, elevation, overlays |
| Common fate | move or change together | Animation, simultaneous state change |
| Symmetry | mirror each other | Balanced layouts, centered heroes |
| Pragnanz | form the simplest reading | Reduce ambiguity overall |

---

## Proximity

*Elements near each other are perceived as related.*

**UI example**: A form where the gap between a label and its own input equals the gap between that input and the next label. Users cannot tell which label belongs to which field.

**Fix pattern**: Internal spacing smaller than external spacing, by a clear margin (roughly 2x or more).

```html
<!-- Label hugs its input; groups separate clearly -->
<div class="space-y-6">
  <div class="space-y-1.5">
    <label class="text-sm font-medium">Email</label>
    <input class="w-full rounded-md border px-3 py-2" />
  </div>
  <div class="space-y-1.5">
    <label class="text-sm font-medium">Password</label>
    <input class="w-full rounded-md border px-3 py-2" />
  </div>
</div>
```

Proximity usually beats similarity: two items of different colors placed close together still read as a pair.

## Similarity

*Elements that share visual properties (color, shape, size, orientation, texture) are perceived as a group.*

**UI example**: Links styled exactly like body text except for color, and a heading that happens to use the link color. Users click the heading.

**Fix pattern**: Reserve one visual signature per role. If blue means "clickable", nothing non-interactive is blue.

| Role | Signature |
|------|-----------|
| Primary action | Filled, brand color |
| Secondary action | Outline or ghost |
| Link | Brand color + underline on hover or always in body copy |
| Status | Semantic color + icon |

## Common region

*Elements inside the same bounded area are perceived as a group, even when they are far apart or dissimilar.* Palmer (1992) showed that a shared region can override proximity.

**UI example**: A pricing page where each plan's features float in open space and the columns blur together.

**Fix pattern**: Give each group a container (card, tinted panel, bordered section). Use the lightest region that works; a subtle background shift often does the job a heavy border would do.

```html
<section class="rounded-xl bg-slate-50 p-6 ring-1 ring-slate-200">
  <!-- everything in here reads as one plan -->
</section>
```

## Uniform connectedness

*Elements joined by a visible connection (line, bar, shared shape) are perceived as a unit, and this tends to be stronger than proximity or similarity.* (Palmer and Rock, 1994)

**UI example**: A multi-step checkout with step circles but no connecting line; users do not read it as a sequence.

**Fix pattern**: Connect sequential items with a track; connect a tooltip to its target with a pointer; connect a selected tab to its panel by merging their borders.

## Continuity (good continuation)

*The eye follows smooth lines and curves and prefers continuous paths over abrupt changes.*

**UI example**: A card grid where one card's text starts at a different inset, breaking the column the eye was following.

**Fix pattern**: Keep strong shared edges (text starts, image edges, button edges). Horizontal carousels that cut the last card at the viewport edge use continuity to signal "more this way".

## Closure

*The mind completes incomplete shapes and fills gaps to see a whole.*

**Famous example**: The WWF panda. The head and back are not fully outlined, yet the viewer sees a complete animal.

**UI example**: Icon sets drawn with open strokes; a dashed outline for an upload drop zone; a progress ring with a gap.

**Fix pattern**: Remove lines the eye will supply anyway. Test at small sizes: closure fails when the gaps get too large relative to the shape, so check icons at 16px and 24px.

## Figure/Ground

*Perception separates a figure (the subject) from the ground (everything behind it).* Ambiguous figure/ground produces the classic vase-or-faces effect.

**Famous example**: The FedEx logo (Lindon Leader at Landor, 1994). The arrow between the "E" and the "x" is negative space, the ground becoming a figure. It is a figure/ground device, not closure.

**UI examples**:
- Text over busy photography with no scrim
- Modals whose overlay is too light to push the page back
- Dark-mode surfaces with no step between background and card

**Fix pattern**:

```html
<!-- Scrim restores figure/ground over imagery -->
<div class="relative">
  <img src="hero.jpg" alt="" class="h-96 w-full object-cover" />
  <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent"></div>
  <h1 class="absolute bottom-8 left-8 text-4xl font-semibold text-white">Title</h1>
</div>
```

In dark mode, lift figures with lighter surfaces rather than shadows (for example `bg-slate-900` page, `bg-slate-800` card).

## Common fate

*Elements that move or change in the same direction at the same time are perceived as a group.*

**UI example**: Selecting three rows in a table, then the bulk-action bar slides in while only one of the rows animates; users doubt the other two are selected.

**Fix pattern**: Animate related elements together (same duration, easing, direction). Stagger only when you want to show order within a group. Respect `prefers-reduced-motion`; common fate can also be carried by a simultaneous color or state change instead of movement.

## Symmetry

*Symmetrical elements are perceived as belonging together and as a stable whole.*

**UI example**: A centered marketing hero reads as calm and formal; a symmetrical two-column comparison implies equal weight between options.

**Fix pattern**: Use symmetry when you want neutrality or stability. Break it on purpose when one option should win (a highlighted plan in an otherwise symmetrical pricing row).

## Pragnanz (simplicity)

*Perception settles on the simplest, most stable interpretation available.* Wertheimer treated this as the umbrella tendency behind the other laws.

**Fix pattern**: When a layout can be read two ways, users pick the simpler one, which may not be yours. Remove competing groupings: one container style, one alignment system, one spacing scale.

---

## Principles in conflict

| Conflict | Usually wins | Design implication |
|----------|--------------|--------------------|
| Proximity vs. similarity | Proximity | Fix spacing before recoloring |
| Common region vs. proximity | Common region | A card groups its contents even with loose spacing |
| Connectedness vs. proximity | Connectedness | A connector line can join distant items |

These are tendencies observed in perception research, not absolute rankings. Test with real users when the stakes are high.

## Audit checklist

- [ ] Spacing inside groups is clearly smaller than spacing between groups
- [ ] Each interactive role has one consistent visual signature
- [ ] Groups that must read as units share a region or a connector
- [ ] Text starts and edges line up so the eye can continue along them
- [ ] Icons still close into shapes at their smallest size
- [ ] Every text layer has clear figure/ground (check over images and in dark mode)
- [ ] Elements that change together animate together
- [ ] No area of the screen supports two competing readings

## Related references

- [visual-hierarchy.md](visual-hierarchy.md): ordering the groups once they exist
- [composition-rules.md](composition-rules.md): grids, alignment, balance
- [color-theory.md](color-theory.md): color as a similarity signal
- [../assets/principles-checklist.md](../assets/principles-checklist.md): full evaluation checklist
