# Psychedelic design (c. 1965-1972)

## Origins and context

**Where**: San Francisco first, around the Haight-Ashbury music scene, and London in parallel.
**Reacting against**: The clean, objective corporate modernism of the 1950s and the mainstream culture it represented.
**Core belief**: A poster should be an experience you decode slowly, the way the music and the drug culture around it asked to be experienced.

The core body of work is the concert poster produced in 1966-1968 for two San Francisco ballrooms: the **Fillmore Auditorium** (promoter Bill Graham) and the **Avalon Ballroom** (Chet Helms and Family Dog Productions). The posters were meant to be read by insiders who would stop and puzzle out the lettering; that was part of the appeal.

**Sources the artists drew on**: Art Nouveau and Vienna Secession lettering and ornament, Victorian engraving, Op Art's vibrating color, comics, and surf and hot-rod culture.

## Key figures and works

| Person | Work | Year | What it shows |
|--------|------|------|---------------|
| Wes Wilson | Fillmore posters | 1966-67 | Lettering that swells to fill every shape, adapted from Alfred Roller's Vienna Secession lettering |
| Victor Moscoso | Neon Rose poster series (for The Matrix club) | 1967 | Complementary colors of equal value that vibrate; Moscoso studied with Josef Albers at Yale |
| Alton Kelley and Stanley Mouse | Grateful Dead "Skeleton and Roses", Avalon Ballroom | 1966 | Appropriated Edmund J. Sullivan's illustration for the *Rubáiyát of Omar Khayyám* |
| Rick Griffin | "Flying Eyeball", Jimi Hendrix at the Fillmore and Winterland | 1968 | Surf and hot-rod iconography, dense symbolic imagery |
| Bonnie MacLean | Fillmore posters | 1967-68 | Art Nouveau figures and lettering |
| Martin Sharp | Cover of Cream's *Disraeli Gears* | 1967 | The London strand: collage, fluorescent color |
| Hapshash and the Coloured Coat (Michael English, Nigel Waymouth) | UFO Club posters, London | 1967 | Metallic inks, Art Nouveau and Pop fused |

Wilson, Moscoso, Griffin, Kelley, and Mouse are often grouped as the "Big Five" of San Francisco poster art.

## Visual markers and the principles behind them

| Marker | Principle |
|--------|-----------|
| Lettering that bends to fill a shape | Text as image; reading becomes an act of decoding |
| Complementary hues at equal value (red/green, orange/blue) | Equiluminance makes edges shimmer (Albers's color studies) |
| Dense, edge-to-edge composition | No white space; total immersion |
| Art Nouveau curves and figures | Revival of a pre-modernist ornament to reject corporate modernism |
| Split-fountain and fluorescent inks | Printing technique as part of the effect |

## Applying it in UI work

**Fits**: music festivals, record labels, event microsites, cannabis or wellness brands that want counterculture signals, art collectives, limited-run merch.
**Avoid**: anything functional: forms, checkout, settings, documentation, finance, healthcare.

Use it on a single surface (hero, poster, ticket, splash art) and keep the functional UI calm around it.

### Tokens

```css
:root {
  --psy-magenta: #e0218a;
  --psy-orange: #ff7a00;
  --psy-acid: #b6ff00;
  --psy-violet: #5b1fa6;
  --psy-teal: #00a39a;
  --psy-ink: #1a0f24;
}

/* Poster-only effect: vibrating stripes. Never behind body text. */
.psy-poster {
  background: repeating-radial-gradient(circle at 50% 40%,
    var(--psy-magenta) 0 12px, var(--psy-orange) 12px 24px);
}
```

```html
<!-- Tailwind: calm UI around one expressive poster panel -->
<div class="grid md:grid-cols-2 gap-8">
  <figure class="psy-poster aspect-[2/3] rounded-3xl"></figure>
  <section class="bg-white text-neutral-900 p-8 rounded-3xl">
    <h2 class="text-2xl font-semibold">Main stage lineup</h2>
    <a class="mt-6 inline-block rounded-full bg-[#5b1fa6] px-6 py-3 text-white">Get tickets</a>
  </section>
</div>
```

- **Type**: hand-lettered or display faces for the poster only; a plain sans for every label, price, and button.
- **Motion**: slow hue rotation or warp on the poster only, and off by default under `prefers-reduced-motion`.

### Accessibility notes (read before shipping)

- Equal-value complementary colors are designed to be hard to read. Any text that carries information must meet 4.5:1 on a solid background.
- Vibrating patterns and fast color cycling can trigger discomfort, and flashing content can trigger seizures: WCAG 2.3.1 limits content to no more than three flashes in any one-second period. Keep animation slow and respect `prefers-reduced-motion`.
- Deliberately illegible lettering must never be the only place key information (date, venue, price) appears. Repeat it in plain text.

## Common misreadings

- **"Every 1960s poster with flowing lines is San Francisco psychedelia."** Milton Glaser's 1966 Bob Dylan poster is often shown alongside psychedelic work and shares its Art Nouveau-influenced line, but Glaser worked from New York's Push Pin Studios, an eclectic illustration practice, rather than the San Francisco ballroom poster scene that defines the style.
- **"Psychedelic is random."** The best posters were carefully constructed: Moscoso's color vibration came from systematic color theory, and the lettering followed strict fill-the-shape rules.
- **"It invented its ornament."** Much of it was openly borrowed from Art Nouveau, the Vienna Secession, and Victorian engraving.

## Legacy

- The rave flyers of the late 1980s and 1990s, festival branding, and album art keep reviving it.
- A lasting lesson for UI: legibility is a choice. Choose illegibility only where decoding is the point, never where users must act.

---

## Quick reference

**Reach for it when**: the product is music, events, or counterculture, and the surface is a poster, not a tool.
**Avoid it when**: users must read, compare, fill in, or pay.

**Recipe**:
1. One expressive panel with vibrating complementary color and shaped lettering.
2. Everything functional in a calm sans on solid, high-contrast surfaces.
3. Slow motion only, disabled under reduced-motion preferences.
