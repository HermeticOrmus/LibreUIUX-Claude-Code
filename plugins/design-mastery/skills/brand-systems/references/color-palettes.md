# Brand color palettes

A brand palette is a system, not a swatch. It has to cover identity (the colors people remember), interface (text, surfaces, borders, states), and accessibility (every pairing that carries meaning must be readable). This reference builds on [color-theory.md](../../design-principles/references/color-theory.md), which covers harmony types and the 60-30-10 proportion rule.

## Palette structure

| Layer | Contents | Typical size |
|-------|----------|--------------|
| **Primary** | The signature brand color, with a full tonal scale | 1 hue, 11 steps |
| **Neutrals** | Grays for text, surfaces, borders (often tinted toward the primary hue) | 1 hue, 11 steps |
| **Accent** | A contrasting color for highlights and marketing moments | 1 to 2 hues |
| **Semantic** | Success, warning, danger, info | 4 hues, each with text, fill, and subtle-background steps |
| **Data** | Categorical colors for charts, distinguishable from each other and from semantic colors | 6 to 8 hues |

Resist adding brand colors. Each extra hue multiplies the pairings you must test and dilutes recognition.

## Tonal scales (50 to 950)

The convention popularized by Tailwind CSS is an 11-step scale: 50, 100, 200 ... 900, 950. Lower numbers are lighter.

| Step | Typical role (light theme) |
|------|-----------------------------|
| 50 to 100 | Subtle backgrounds, selected rows, tinted panels |
| 200 to 300 | Borders on tinted surfaces, disabled fills, decorative |
| 400 to 500 | Icons, large graphics, fills where text is not placed on them |
| 600 to 700 | Primary buttons, links, text in the brand color |
| 800 to 950 | Headings in brand color, dark surfaces |

### Building a scale in a perceptual color space

HSL lightness is not perceptual: a yellow and a blue at the same HSL lightness look very different in brightness. OKLCH (from Bjorn Ottosson's Oklab, 2020, and part of CSS Color Module Level 4) keeps perceived lightness consistent across hues, which makes scales predictable. Tailwind CSS v4 defines its default palette in OKLCH.

```css
:root {
  /* oklch(lightness chroma hue) */
  --brand-50:  oklch(0.97 0.02 262);
  --brand-100: oklch(0.93 0.04 262);
  --brand-300: oklch(0.80 0.10 262);
  --brand-500: oklch(0.62 0.19 262);
  --brand-600: oklch(0.55 0.21 262);
  --brand-700: oklch(0.48 0.19 262);
  --brand-900: oklch(0.33 0.12 262);
  --brand-950: oklch(0.25 0.08 262);
}
```

Method:
1. Fix the hue of your brand color
2. Step lightness evenly from about 0.97 down to about 0.25
3. Reduce chroma toward both ends (very light and very dark colors cannot hold high chroma, and the browser will clip out-of-gamut values)
4. Check the actual contrast of the steps you plan to pair; the numbers above are illustrative, not measured

## WCAG contrast

WCAG 2.x contrast ratio = (L1 + 0.05) / (L2 + 0.05), where L1 and L2 are the relative luminances of the lighter and darker colors. Ratios range from 1:1 to 21:1.

| Success criterion | Level | Requirement |
|-------------------|-------|-------------|
| 1.4.3 Contrast (Minimum) | AA | 4.5:1 for normal text; 3:1 for large text |
| 1.4.6 Contrast (Enhanced) | AAA | 7:1 for normal text; 4.5:1 for large text |
| 1.4.11 Non-text Contrast | AA | 3:1 for UI component boundaries, states, and meaningful graphics against adjacent colors |
| 1.4.1 Use of Color | A | Color must not be the only way information is conveyed |

**Large text** in WCAG means at least 18 point (24 CSS px) regular, or at least 14 point (about 18.66 CSS px) bold. A 18px regular body size is not large text.

### Measured pairs (Tailwind v3 hex values)

| Pair | Ratio | Normal text AA | Large text / UI 3:1 |
|------|-------|----------------|---------------------|
| slate-900 on white | 17.85 | Pass | Pass |
| slate-600 on white | 7.58 | Pass | Pass |
| slate-500 on white | 4.76 | Pass | Pass |
| slate-400 on white | 2.56 | Fail | Fail |
| white on blue-600 | 5.17 | Pass | Pass |
| white on blue-500 | 3.68 | Fail | Pass |
| red-600 on white | 4.83 | Pass | Pass |
| red-500 on white | 3.76 | Fail | Pass |
| green-700 on white | 5.02 | Pass | Pass |
| green-600 on white | 3.30 | Fail | Pass |
| amber-700 on white | 5.02 | Pass | Pass |
| amber-500 on white | 2.15 | Fail | Fail |
| slate-300 border on white | 1.48 | n/a | Fail |

Practical consequences:
- Semantic text on white usually needs the 600 or 700 step, not 500
- Input borders need about the 500 step to meet 1.4.11 when the border is the only thing that shows the field
- Yellow and amber rarely work as text on white; use them as fills with dark text

**APCA** (Accessible Perceptual Contrast Algorithm) is a newer method developed during WCAG 3 drafting. It models perceived contrast better, especially for dark themes, but it is not a WCAG 2.x conformance requirement. Use WCAG 2.x ratios for compliance; APCA can inform choices.

## Color vision deficiency

Red-green color vision deficiency affects about 8% of males and 0.5% of females of Northern European ancestry (MedlinePlus, US National Library of Medicine); rates are lower in most other populations.

- Never encode status by red versus green alone: add an icon, a label, or a pattern
- Prefer blue/orange over red/green for binary data encodings
- Vary lightness, not only hue, between chart series
- Simulate: Chrome DevTools, Rendering panel, "Emulate vision deficiencies"

```html
<span class="inline-flex items-center gap-1 text-green-700">
  <svg aria-hidden="true" class="h-4 w-4">...</svg> Paid
</span>
<span class="inline-flex items-center gap-1 text-red-700">
  <svg aria-hidden="true" class="h-4 w-4">...</svg> Overdue
</span>
```

## Associations are cultural, not universal

Color meaning depends on culture, category, and context. White is associated with weddings in much of the West and with mourning in parts of East Asia; red can signal danger, luck, or a sale. Treat any "blue means trust" rule as a category convention (many banks use blue, so blue reads as "bank"), not a law of psychology. Choose colors that separate you from competitors and fit your audience, then test with that audience.

## Dark mode palettes

Dark mode is a second palette, not an inversion.

| Concern | Light theme | Dark theme |
|---------|-------------|------------|
| Page background | white or 50 | 900 to 950, or a dark gray such as `#121212` (Material Design's dark theme baseline) |
| Elevation | Shadows | Lighter surfaces for raised layers |
| Body text | 900 | 100 to 200 (slightly off-white reduces glare) |
| Brand color | 600 | 400 to 500 (lighter, sometimes less saturated) |
| Borders | 200 to 300 | 700 to 800 |

Re-measure contrast in dark mode: blue-600 on slate-900 is only 3.45:1, while blue-400 on slate-900 is 7.02:1.

```css
:root {
  --surface: #ffffff;
  --text: #0f172a;
  --action: #2563eb;
}
@media (prefers-color-scheme: dark) {
  :root {
    --surface: #0f172a;
    --text: #f1f5f9;
    --action: #60a5fa;
  }
}
```

## Token naming

Use three tiers so a rebrand or a dark theme changes one layer, not every component.

| Tier | Example | Purpose |
|------|---------|---------|
| **Primitive** | `blue-600`, `slate-100` | The raw scale; never referenced by components directly |
| **Semantic** | `color-action-primary`, `color-text-muted`, `color-border-strong`, `color-status-danger` | Meaning; remapped per theme |
| **Component** | `button-primary-bg`, `input-border` | Optional; for components with special needs |

Name semantic tokens by role, not appearance: `color-text-muted`, not `color-gray-light`. The W3C Design Tokens Community Group publishes a JSON format for exchanging tokens between tools.

## Palette checklist

- [ ] One primary brand hue with a full tonal scale
- [ ] Neutral scale that suits the primary (tinted or true gray, chosen deliberately)
- [ ] Semantic colors with text-safe steps (usually 600 or 700 on white)
- [ ] Every text pairing measured against WCAG 1.4.3
- [ ] Component boundaries and focus indicators meet 3:1 (1.4.11)
- [ ] No information conveyed by color alone
- [ ] Dark theme defined and measured separately
- [ ] Tokens named by role, with primitives hidden behind semantic names

## Related references

- [color-theory.md](../../design-principles/references/color-theory.md): harmony, proportion, color relationships
- [logo-design.md](logo-design.md): logo color versions
- [typography-pairing.md](typography-pairing.md): text color within the type system
