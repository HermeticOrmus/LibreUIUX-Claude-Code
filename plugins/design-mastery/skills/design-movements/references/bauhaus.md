# Bauhaus (1919-1933)

## Origins and context

The Bauhaus was a school, not a style label chosen by its members. Walter Gropius founded it on 1 April 1919 in Weimar by merging the Grand-Ducal Saxon Academy of Fine Art with the Grand-Ducal Saxon School of Arts and Crafts. Its founding manifesto called on architects, sculptors, and painters to return to the crafts and build together, with a Lyonel Feininger woodcut of a cathedral on the cover.

**Reacting against**: The split between fine art and industry, academic art training, and the ornamented historicism of the 19th century. Its early program drew on Arts and Crafts ideals; from about 1923 it turned toward design for industrial production, summed up in the slogan "Art and technology: a new unity" of that year.

### Three sites, three directors

| Site | Years | Director |
|------|-------|----------|
| Weimar | 1919-1925 | Walter Gropius (1919-1928) |
| Dessau (school building by Gropius, 1925-26) | 1925-1932 | Gropius, then Hannes Meyer (1928-1930), then Ludwig Mies van der Rohe (1930-1933) |
| Berlin (private school in a former factory) | 1932-1933 | Mies van der Rohe |

Under pressure from the Nazi regime, the leadership closed the school in 1933. Emigrant teachers carried its methods abroad: László Moholy-Nagy founded the New Bauhaus in Chicago (1937); Josef and Anni Albers taught at Black Mountain College; Max Bill, a former student, co-founded the Ulm School of Design (HfG Ulm, 1953).

## Key figures and works

| Person | Role or work | Year | What it shows |
|--------|--------------|------|---------------|
| Johannes Itten | Preliminary course (Vorkurs) | 1919-1923 | Foundation training in color, material, and form |
| László Moholy-Nagy | Took over the Vorkurs; typography and photography | 1923-1928 | Photography and type as the new visual language ("typophoto") |
| Joost Schmidt | Poster for the Bauhaus exhibition | 1923 | Circles, squares, and a strict axis as graphic structure |
| Marianne Brandt | Tea infuser (MT49) | 1924 | Geometric solids as a functional, reproducible object |
| Wilhelm Wagenfeld, Carl Jakob Jucker | Table lamp | 1923-24 | Glass and metal reduced to their functional parts |
| Herbert Bayer | "Universal" alphabet proposal | 1925 | A single-case geometric alphabet for efficient communication |
| Marcel Breuer | Club chair B3 (later called the Wassily) | 1925-26 | Bent tubular steel, inspired by bicycle handlebars |
| Gunta Stölzl | Weaving workshop | 1920s | Textile design for industrial production |
| Wassily Kandinsky | Questionnaire pairing yellow-triangle, red-square, blue-circle | 1923 | The school's search for a universal color-form grammar |
| Paul Klee, Josef Albers | Form and color teaching | 1920s | Systematic visual education, later published by both |

## Visual markers and the principles behind them

| Marker | Principle |
|--------|-----------|
| Primary colors plus black and white | A reduced, universal palette |
| Circle, square, triangle | Elementary forms any workshop or factory can reproduce |
| Sans-serif, often lowercase-only type (Bayer) | Clarity and efficiency over tradition |
| Asymmetric layouts with strong axes and bars | Dynamic balance instead of centered symmetry |
| Photography instead of drawn illustration | Mechanical reproduction as modern truth |
| Exposed structure, standard parts | Design for industry and affordability |

## Applying it in UI work

**Fits**: education products, museums and cultural institutions, developer tools, architecture studios, any brand that wants to look rational and inventive.
**Avoid**: products that must feel soft, romantic, or traditional.

### Tokens

```css
:root {
  --bh-red: #d62828;
  --bh-blue: #1d3a8a;
  --bh-yellow: #f2c230;
  --bh-black: #111111;
  --bh-white: #f7f5f0;
}
```

```html
<!-- Tailwind: asymmetric hero with a primary shape and a strong bar -->
<section class="relative grid grid-cols-12 gap-6 bg-[#f7f5f0] p-12 min-h-[28rem] overflow-hidden">
  <div class="col-span-7 self-end">
    <div class="h-2 w-40 bg-[#111111] mb-6"></div>
    <h1 class="text-6xl font-bold lowercase leading-none tracking-tight">form and function</h1>
    <p class="mt-4 max-w-md text-lg">A course in visual grammar, one shape at a time.</p>
  </div>
  <div class="col-span-5 flex items-start justify-end">
    <div class="h-56 w-56 rounded-full bg-[#d62828]"></div>
  </div>
</section>
```

- **Type**: geometric or grotesque sans (Futura, released in 1927, is not a Bauhaus typeface but shares its geometry; modern options include Jost, Outfit, or Inter for text).
- **Color**: one primary per screen region carries meaning; do not paint every component in all three.
- **Layout**: asymmetric grid, generous white field, heavy rules and bars as structure.
- **Motion**: linear or simple ease, shapes sliding along the axis.

### Accessibility notes

- White text on the yellow fails contrast. Use black on yellow.
- Red and blue as the only difference between states will fail for color-blind users. Pair color with shape or text.

## Common misreadings

- **"Form follows function" is the Bauhaus motto.** The phrase comes from the American architect Louis Sullivan ("form ever follows function", 1896). The Bauhaus is associated with the idea, not the coinage.
- **"Bauhaus is a style."** Gropius resisted the idea of a Bauhaus style; the school was a teaching method and a workshop system.
- **"It was all primary colors and circles."** That describes some workshops and posters. The weaving workshop, the metal workshop, and Mies-era architecture look very different.
- **"The Bauhaus invented modern graphic design."** It was one center among several: De Stijl, Russian Constructivism, and Jan Tschichold's *Die neue Typographie* (1928, Tschichold was not a Bauhaus teacher) all shaped the New Typography.

## Legacy

- The foundation course model of art and design education, still used worldwide.
- Direct lines through the New Bauhaus (Chicago), Black Mountain College, and HfG Ulm, and through Max Bill into Swiss International Style.
- Claims that later corporate design languages descend directly from the Bauhaus are usually loose analogies; cite specific people and institutions instead.

---

## Quick reference

**Reach for it when**: you want rational, confident, inventive.
**Avoid it when**: the brand needs warmth, softness, or heritage.

**Recipe**:
1. Off-white field, black bars, one primary color doing the work.
2. Geometric sans, lowercase headings, asymmetric 12-column layout.
3. Circles, squares, and rules as structure, never as decoration.
