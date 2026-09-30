# Typography pairing

A type system usually needs two families at most, sometimes one. Pairing is about giving each typeface a clear job and making sure the two look like they belong to the same brand. This extends [typography-fundamentals.md](../../design-principles/references/typography-fundamentals.md), which covers anatomy, scale, line length, and loading.

## Roles first, fonts second

Decide the roles before picking families.

| Role | Job | Priorities |
|------|-----|------------|
| **Display** | Headlines, hero text, big numbers | Personality, shape at large sizes |
| **Text** | Paragraphs, articles, descriptions | Legibility at 14 to 18px, even texture, good italics |
| **UI** | Labels, buttons, navigation, tables | Clarity at small sizes, tabular figures, compact width |
| **Mono** | Code, IDs, aligned data | Distinct characters (0/O, 1/l/I), equal widths |

Often text and UI share one family, and display is either the same family at a heavier weight or a second family with more character.

## Pairing logic

### 1. Contrast in classification

Pair families that differ clearly in structure, so the roles are obvious.

| Display | Text/UI | Why it works |
|---------|---------|--------------|
| High-contrast serif | Neutral sans | Serif carries voice, sans carries information |
| Geometric sans | Humanist sans or serif | Geometric shapes at large sizes, warmer forms for reading |
| Slab serif | Grotesque sans | Sturdy headlines, plain body |

Avoid pairing two families from the same classification that differ only slightly (two similar geometric sans faces); the result looks like a mistake rather than a choice.

### 2. Shared proportions

Contrast in style, harmony in proportion. Check:
- **x-height**: similar x-heights make the two families look the same size when set together; `font-size-adjust` can normalize the difference in modern browsers
- **Width**: a very condensed display face with a wide text face can feel unrelated
- **Stroke weight at the chosen weights**: the text face should not look heavier than the headline face

### 3. Superfamilies

A superfamily is designed as matching sans, serif, and often mono versions sharing proportions. It is the lowest-risk way to get contrast without clashes.

| Superfamily | Members | Designers |
|-------------|---------|-----------|
| IBM Plex | Sans, Serif, Mono, plus Condensed and several scripts | Mike Abbink at IBM with Bold Monday, 2017 |
| Source | Source Sans, Source Serif, Source Code | Paul D. Hunt (Sans), Frank Griesshammer (Serif), Adobe |
| Merriweather | Merriweather, Merriweather Sans | Eben Sorkin (Sorkin Type) |
| Roboto | Roboto, Roboto Slab, Roboto Mono | Christian Robertson for Google |

## Proven pairings

| Pairing | Classification | Character | Fits |
|---------|----------------|-----------|------|
| **Playfair Display** + **Inter** | High-contrast transitional serif (Claus Eggers Sorensen) + neo-grotesque sans for screens (Rasmus Andersson) | Editorial, polished | Magazines, portfolios, premium marketing |
| **Fraunces** + **Work Sans** | Soft "old style" variable display serif (Undercase Type: Phaedra Charles and Flavia Zimbardi) + grotesque sans (Wei Huang) | Warm, a little playful | Food, lifestyle, friendly consumer brands |
| **Source Serif** + **Source Sans** | Companion serif and humanist sans (Adobe) | Calm, trustworthy, readable | Documentation, publishing, public sector |
| **IBM Plex Sans** + **IBM Plex Mono** | Grotesque sans + matching mono | Technical, systematic | Developer tools, data products |
| **Space Grotesk** + **JetBrains Mono** | Proportional sans derived from Colophon's Space Mono (Florian Karsten) + coding mono (JetBrains) | Technical with personality | Dev tools, crypto, engineering brands |
| **Inter** alone | One family, weights and optical sizes for all roles | Neutral, efficient | Dashboards, SaaS apps |

Verify every family's current licence and character set (languages, weights, italics) before committing.

## Variable fonts

OpenType variable fonts put a design space in one file. Registered axes include weight (`wght`), width (`wdth`), optical size (`opsz`), italic (`ital`), and slant (`slnt`); families can add custom axes (Fraunces adds `SOFT` and `WONK`).

```css
@font-face {
  font-family: "Brand Sans";
  src: url("/fonts/brand-sans-var.woff2") format("woff2");
  font-weight: 100 900;   /* declare the supported range */
  font-display: swap;
}

h1 { font-weight: 650; }                  /* any value in the range */
body { font-optical-sizing: auto; }       /* use opsz when the font has it */
.tag { font-variation-settings: "wdth" 85; }
```

Benefits: fewer files, in-between weights for fine hierarchy, optical sizing that tightens display sizes and opens text sizes. Cost: a single variable file can be larger than one or two static weights, so subset it.

## Fallback stacks

Always end a stack with fallbacks that resemble the brand font, then a generic family.

```css
:root {
  --font-sans: "Inter", ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, Arial, sans-serif;
  --font-serif: "Source Serif 4", ui-serif, Georgia, Cambria, "Times New Roman", serif;
  --font-mono: "JetBrains Mono", ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
}
```

To reduce layout shift when the web font swaps in, tune the fallback with `@font-face` descriptors such as `size-adjust`, `ascent-override`, and `descent-override`, or let a framework tool that generates adjusted fallbacks do it.

## Fluid type with clamp()

`clamp(min, preferred, max)` scales type smoothly between breakpoints.

```css
h1 { font-size: clamp(2rem, 1.25rem + 3vw, 3.5rem); }
h2 { font-size: clamp(1.5rem, 1.1rem + 1.6vw, 2.25rem); }
p  { font-size: clamp(1rem, 0.95rem + 0.25vw, 1.125rem); }
```

Keep a `rem` term in the preferred value. A preferred value of pure `vw` does not respond to the user's text-size settings or zoom in the same way, which works against WCAG 1.4.4 (Resize Text). Scale display sizes more than body sizes; body text should barely move.

In Tailwind, arbitrary values work: `text-[clamp(2rem,1.25rem+3vw,3.5rem)]`.

## Licensing

- Most families on Google Fonts are released under the SIL Open Font License (OFL); a smaller number use Apache 2.0 or the Ubuntu Font Licence. OFL fonts can be used commercially and self-hosted; they cannot be sold on their own, and modified versions may not reuse Reserved Font Names
- Commercial fonts are licensed per use: desktop, web (often by pageviews or domains), app embedding, and broadcast are frequently separate licences
- A font installed on your machine is not automatically licensed for web or app use
- Record the licence and source of every font in the brand guidelines

## Pairing checklist

- [ ] Roles defined (display, text, UI, mono) before choosing families
- [ ] At most two families, or one superfamily
- [ ] Display and text faces differ clearly in classification or weight
- [ ] x-heights and widths look compatible when set side by side
- [ ] Text face tested at 14 to 18px in real paragraphs, including italics and numerals
- [ ] UI face has tabular figures for tables and prices (`tabular-nums`)
- [ ] Fallback stacks defined for every family
- [ ] Fluid sizes keep a `rem` component
- [ ] Licences confirmed for every platform the brand uses

## Related references

- [typography-fundamentals.md](../../design-principles/references/typography-fundamentals.md): anatomy, scale, readability, loading
- [logo-design.md](logo-design.md): wordmark type and its relationship to the system
- [brand-voice.md](brand-voice.md): matching type personality to verbal voice
