# Art Nouveau (c. 1890-1914)

## Origins and context

**Where**: Brussels and Paris first, then across Europe and the United States, under different local names.
**Reacting against**: Academic historicism, the habit of dressing new buildings and objects in borrowed Gothic, Renaissance, or Classical styles.
**Core belief**: A new ornament drawn from nature, applied to everything from buildings to cutlery to posters, with no line between fine art and applied art.

The name comes from Siegfried Bing's Paris gallery, the Maison de l'Art Nouveau, opened in 1895. The style peaked at the Paris Exposition Universelle of 1900 and was largely exhausted by the start of the First World War.

### One style, many names

| Region | Name | Source of the name |
|--------|------|--------------------|
| France, Belgium, Britain | Art Nouveau | Bing's gallery (1895) |
| Germany, Scandinavia | Jugendstil | *Jugend* magazine, Munich (1896) |
| Austria | Secessionsstil | Vienna Secession (1897) |
| Italy | Stile Liberty | Liberty & Co., the London shop |
| Catalonia | Modernisme | Local movement around Barcelona |
| Belgium (nickname) | Style coup de fouet | "Whiplash style" |

## Key figures and works

| Person | Work | Year | What it shows |
|--------|------|------|---------------|
| Victor Horta | Hôtel Tassel, Brussels | 1892-93 | Exposed iron structure bent into plant forms; the style's first major building |
| Hermann Obrist | Cyclamen embroidery ("Whiplash") | 1895 | The single curling line that gave the style its nickname |
| Alphonse Mucha | *Gismonda* poster for Sarah Bernhardt | 1895 | Tall format, halo motif, integrated lettering and figure |
| Aubrey Beardsley | Illustrations for Wilde's *Salome* (English edition) | 1894 | Flat black and white, extreme contrast, sinuous line |
| Hector Guimard | Paris Métro entrances | c. 1900 | Cast iron as organic growth; mass-produced modular ornament |
| Charles Rennie Mackintosh | Glasgow School of Art | 1897-1909 | The rectilinear Glasgow branch: tall, gridded, restrained |
| Louis Comfort Tiffany, Émile Gallé | Leaded-glass lamps; Nancy school glass | 1890s-1900s | Nature motifs in luxury decorative arts |
| Antoni Gaudí | Casa Batlló, Barcelona | 1904-06 | Modernisme at its most sculptural |

## Visual markers and the principles behind them

| Marker | Principle |
|--------|-----------|
| Whiplash curves, stems, tendrils | Line as the carrier of energy; structure and ornament fused |
| Stylized plants, insects, female figures with flowing hair | Nature as the vocabulary of a new, non-historical ornament |
| Lettering drawn to fit the image | Type and image as one composition |
| Decorative frames and arches around content | The page or facade as a unified object |
| Muted, harmonious palettes (sage, ochre, dusty rose, gold) in print | Lithographic color used for mood, not contrast |

Two branches coexisted. The curvilinear Franco-Belgian branch (Horta, Guimard, Mucha) and the rectilinear branch of Glasgow and Vienna (Mackintosh, Josef Hoffmann, Koloman Moser). The second one points toward modernism; the first points toward Psychedelic revival.

## Applying it in UI work

**Fits**: perfume, cosmetics, tea and wine, boutique hotels, theatre and arts programming, botanical brands.
**Avoid**: data-heavy tools, anything that needs dense information.

### Tokens

```css
:root {
  --nouveau-cream: #f3ead7;
  --nouveau-sage: #7d8f69;
  --nouveau-ochre: #b58b3c;
  --nouveau-rose: #b7746b;
  --nouveau-ink: #2f2a24;
  --nouveau-gold: #a8864a;
}
```

```html
<!-- Tailwind: arched hero frame in the Mucha manner -->
<section class="mx-auto max-w-md bg-[#f3ead7] text-[#2f2a24] rounded-t-full border-2 border-[#a8864a] px-10 pt-24 pb-12 text-center">
  <p class="uppercase tracking-[0.3em] text-sm text-[#7d8f69]">Spring collection</p>
  <h1 class="font-serif text-5xl mt-4">Jardin</h1>
</section>
```

- **Shape**: arches (`rounded-t-full`), ogee frames, organic SVG dividers between sections.
- **Type**: a display face with Nouveau flavor for headings only (Arnold Böcklin and Eckmann are period faces; many revivals exist). Pair with a calm serif or humanist sans for text.
- **Illustration**: flat, outlined botanical line art; SVG works well because the style is line-driven.
- **Motion**: slow, eased path drawing (`stroke-dashoffset`) for vines and borders.

### Accessibility notes

- Period display faces are hard to read below heading sizes. Never use them for body copy, form labels, or buttons.
- The muted palette has low internal contrast. Check sage and ochre text against cream; they usually fail 4.5:1.
- Honor `prefers-reduced-motion` for any line-drawing animation.

## Common misreadings

- **"Art Nouveau is just curly ornament."** The movement was an architectural and structural program; Horta's iron was load-bearing.
- **"Mackintosh is Art Deco."** Mackintosh's rectilinear work predates Art Deco and belongs to the Glasgow Style of Art Nouveau, though it anticipates later geometry.
- **"Art Deco grew straight out of Art Nouveau."** Deco reacted against Nouveau's organic curves and borrowed from Cubism, the Ballets Russes, and machine forms.

## Legacy

- The 1960s psychedelic poster artists drew openly on Vienna Secession lettering (Wes Wilson on Alfred Roller) and on Mucha-style figures.
- Integrated lettering and image remains a standard move in packaging and posters.

---

## Quick reference

**Reach for it when**: the brand is about nature, luxury craft, or romance.
**Avoid it when**: the interface must be dense, fast, or neutral.

**Recipe**:
1. Cream ground, one muted natural hue, thin gold rules.
2. Arched or ogee frames and SVG vine dividers.
3. Nouveau display face for headings only, calm text face everywhere else.
