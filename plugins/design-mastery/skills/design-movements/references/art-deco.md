# Art Deco (c. 1910s-1940)

## Origins and context

**Where**: Paris first, then worldwide, with major centers in New York, Miami, Shanghai, Mumbai, and Napier (New Zealand).
**Reacting against**: The organic curves of Art Nouveau, and in its American form, the gloom after the First World War.
**Core belief**: Modern life (speed, electricity, skyscrapers, luxury travel) deserves its own glamorous ornament, built from geometry.

The style first appeared in Paris shortly before the First World War and flourished in the 1920s and early 1930s. Its showcase was the 1925 **Exposition internationale des arts décoratifs et industriels modernes** in Paris. The label "Art Deco" is a later coinage: it appeared in print around the 1966 Paris exhibition on the period at the Musée des Arts Décoratifs and was popularized by Bevis Hillier's 1968 book *Art Deco of the 20s and 30s*. People at the time called it "moderne" or simply modern.

**Influences it absorbed**: Cubism, the Ballets Russes, Egyptian motifs after the discovery of Tutankhamun's tomb in 1922, Mesoamerican stepped architecture, and machine forms.

**Later variant**: Streamline Moderne in the 1930s, with horizontal speed lines, rounded corners, and aerodynamic forms, applied even to objects that never move.

## Key figures and works

| Person | Work | Year | What it shows |
|--------|------|------|---------------|
| A. M. Cassandre | *Étoile du Nord* and *Nord Express* posters | 1927 | Converging lines, airbrushed gradients, travel as geometry |
| A. M. Cassandre | *Normandie* ocean-liner poster | 1935 | Monumental scale from a low viewpoint |
| A. M. Cassandre | Bifur (1929) and Peignot (1937) typefaces, Deberny & Peignot | 1929, 1937 | Display type reduced to geometric parts |
| William Van Alen | Chrysler Building, New York | 1930 | Stepped crown, sunburst arches, steel as jewelry |
| Émile-Jacques Ruhlmann | Furniture | 1920s | Luxury woods, ivory inlay, slim tapered legs |
| René Lalique | Glass | 1920s-30s | Frosted and molded glass, repeated motifs |
| Tamara de Lempicka | Portraits | 1920s-30s | Polished, faceted, metallic figures |
| Morris Fuller Benton (ATF) | Broadway typeface | 1927 | High-contrast display type associated with the Jazz Age |

## Visual markers and the principles behind them

| Marker | Principle |
|--------|-----------|
| Sunbursts, fans, chevrons, zigzags | Radiating energy expressed through repetition |
| Stepped (ziggurat) silhouettes | Skyscraper setbacks and ancient temples as modern emblem |
| Strict symmetry | Formal, ceremonial balance |
| Black, gold, silver, cream, jade, lacquer red | Luxury materials translated into color |
| Geometric sans and high-contrast display type | Letters as architecture |
| Thin parallel lines (speed lines in Streamline) | Motion and modernity |

## Applying it in UI work

**Fits**: hospitality, cocktail bars, events and galas, premium finance or watches, jewelry, film and theatre, anything selling celebration.
**Avoid**: products that must feel humble, casual, or purely utilitarian.

### Tokens

```css
:root {
  --deco-black: #0e0e10;
  --deco-cream: #f1e6cf;
  --deco-gold: #c9a24a;
  --deco-jade: #1f5c4d;
  --deco-lacquer: #8e1c1c;
}

/* Sunburst background from a single conic gradient */
.deco-sunburst {
  background: repeating-conic-gradient(from 0deg at 50% 100%,
    #c9a24a 0deg 4deg, #0e0e10 4deg 12deg);
}
```

```html
<!-- Tailwind: symmetric framed heading with gold rules -->
<header class="bg-[#0e0e10] text-[#f1e6cf] text-center py-16">
  <div class="mx-auto w-24 border-t-2 border-[#c9a24a]"></div>
  <h1 class="mt-6 text-5xl uppercase tracking-[0.25em] font-light">The Grand Hall</h1>
  <div class="mx-auto mt-6 w-24 border-t-2 border-[#c9a24a]"></div>
</header>
```

- **Type**: a geometric or high-contrast display face in uppercase with wide tracking; a quiet sans or serif for text.
- **Layout**: centered, symmetric compositions; framed panels; stepped corners with `clip-path`.
- **Ornament**: thin gold rules, fan and chevron SVGs, used sparingly as frames.
- **Motion**: crisp, short reveals; nothing bouncy.

### Accessibility notes

- Gold on cream fails contrast for text. Gold works as a rule or on black; check `#c9a24a` on `#0e0e10` for your text size.
- Wide-tracked uppercase slows reading. Keep it to short headings.
- Sunburst backgrounds behind text are busy. Put text on a solid panel.

## Common misreadings

- **"The 1920s called it Art Deco."** The term came decades later; contemporaries said "moderne".
- **"Art Deco and Bauhaus are the same modernism."** They overlap in time and geometry, but Deco embraced luxury ornament while the Bauhaus aimed at standardized, affordable production.
- **"Streamline Moderne is a different movement."** It is usually treated as the late, largely American phase of Art Deco.

## Legacy

- Hotel, cinema, and cocktail branding; film production design for period pieces.
- Recurring revivals whenever a brand wants glamour with discipline.

---

## Quick reference

**Reach for it when**: the product sells occasion, luxury, or nostalgia for glamour.
**Avoid it when**: the tone must be casual, humble, or purely functional.

**Recipe**:
1. Black ground, cream text, gold only for rules and ornament.
2. Centered symmetric layout, uppercase tracked display type.
3. One radiating motif (fan, sunburst, chevron) used as a frame, not wallpaper.
