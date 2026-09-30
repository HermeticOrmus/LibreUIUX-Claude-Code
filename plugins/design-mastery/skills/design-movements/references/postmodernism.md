# Postmodernism in design (c. 1966-1990s)

## Origins and context

**Where**: Architecture first (United States, Italy, Britain), then graphic and product design in Basel, Los Angeles, New York, Milan, and the Cranbrook Academy of Art near Detroit.
**Reacting against**: The authority of modernism: the grid as law, the single "correct" solution, the idea that good design is neutral.
**Core belief**: Meaning comes from context, history, and reference. Complexity, contradiction, humor, and ornament are legitimate.

The founding text is Robert Venturi's *Complexity and Contradiction in Architecture* (1966), which answered Mies van der Rohe's attributed "less is more" with "Less is a bore." *Learning from Las Vegas* (1972, Venturi, Denise Scott Brown, and Steven Izenour) took the commercial strip seriously as a visual language. Charles Jencks's *The Language of Post-Modern Architecture* (1977) popularized the term for architecture.

In graphic design the break came from inside Swiss modernism. Wolfgang Weingart, invited by Armin Hofmann to teach typography at the Basel School of Design from 1968, took the Swiss toolkit apart: letterspacing, stepped and layered type, photographic screens. His students, April Greiman among them, carried this "New Wave" typography to the United States.

## Key figures and works

| Person | Work | Year | What it shows |
|--------|------|------|---------------|
| Robert Venturi | *Complexity and Contradiction in Architecture* | 1966 | The intellectual case against modernist purity |
| Venturi, Scott Brown, Izenour | *Learning from Las Vegas* | 1972 | Vernacular signs as design; the "decorated shed" |
| Wolfgang Weingart | Typography teaching and posters, Basel | 1968 onward | Swiss grammar deliberately broken: layered, stepped, textured |
| Studio Alchimia (Alessandro Guerriero, Alessandro Mendini) | Proust armchair (Mendini) | 1978 | Irony: a baroque chair repainted in Pointillist dabs |
| April Greiman | *Design Quarterly* 133, "Does It Make Sense?" (Walker Art Center) | 1986 | An early bitmapped, computer-made poster issue |
| Michael Graves | Portland Building, Portland, Oregon | 1982 | Oversized classical references as flat graphic signs |
| Philip Johnson and John Burgee | AT&T Building, New York (broken pediment top) | 1984 | A skyscraper wearing furniture ornament |
| Paula Scher | Swatch advertisement parodying Herbert Matter's 1934 Swiss tourism poster | 1984-85 | Appropriation and pastiche of modernist history |
| Katherine McCoy (co-chair of design at Cranbrook, 1971-1995) | Cranbrook graduate program; *Cranbrook Design: The New Discourse* | 1990 | Design as a text readers interpret, informed by literary theory |

Precursor worth knowing: Push Pin Studios in New York (founded 1954 by Seymour Chwast, Milton Glaser, and others) revived Victorian, Art Nouveau, and Art Deco sources long before the term "postmodern" reached graphic design.

## Visual markers and the principles behind them

| Marker | Principle |
|--------|-----------|
| Mixed typefaces, weights, and scales in one composition | No single correct voice |
| Layering, overlap, textures, and screens | Meaning built up in strata |
| Historical quotation (columns, pediments, Victorian type) used flatly | Reference and irony instead of revival |
| Bright, unexpected color combinations (pink, teal, mint, terracotta) | Pleasure over restraint |
| Visible grid being broken | The rules are shown so their breaking reads as intentional |
| Early bitmap and computer artifacts (Greiman) | The tool is part of the message |

## Applying it in UI work

**Fits**: cultural institutions, art schools, independent publishers, fashion, music, brands that want to signal wit and self-awareness.
**Avoid**: transactional flows, enterprise software, and anywhere users need predictability over surprise.

### Tokens

```css
:root {
  --pomo-pink: #f4a7b9;
  --pomo-teal: #2a9d8f;
  --pomo-mint: #b8e0d2;
  --pomo-terracotta: #c8553d;
  --pomo-ink: #1d1d1b;
  --pomo-paper: #fbf8f1;
}
```

```html
<!-- Tailwind: a quoted classical element used as flat graphic, type in mixed scales -->
<section class="relative bg-[#fbf8f1] text-[#1d1d1b] p-10 overflow-hidden">
  <div aria-hidden="true" class="absolute -right-10 top-0 h-full w-24 bg-[#f4a7b9]"></div>
  <p class="font-serif italic text-xl">The</p>
  <h1 class="text-7xl font-black uppercase leading-none -mt-2">Archive</h1>
  <p class="mt-2 ml-24 font-mono text-sm tracking-widest">is open to the public</p>
</section>
```

- **Type**: combine a serif, a heavy sans, and a mono deliberately; keep body text in one calm face.
- **Layout**: show a grid, then break it once per view with an overlap or offset.
- **Ornament**: flat geometric quotations (columns, arches, pediments as blocks of color).
- **Motion**: playful but short; offsets and overlaps that settle.

### Accessibility notes

- Layered and overlapping type must not cover information text. Keep functional content in a single reading order in the DOM, and mark decorative layers `aria-hidden`.
- Pastel pairs (pink on paper, mint on paper) fail contrast for text. Use them as fields, not as text colors.

## Common misreadings

- **"Postmodernism means anything goes."** Venturi, Weingart, and Greiman worked from deep knowledge of the modernist rules they bent.
- **"Memphis is the same as postmodernism."** Memphis is one Milan-based branch, focused on furniture and objects (see memphis-group.md).
- **"It ended with the 1980s."** Its ideas (context, reference, the designer as author) run through 1990s deconstruction and much contemporary branding.

## Legacy

- Permission to mix type, reference history, and use humor in serious contexts.
- The designer as author or critic, a thread that runs into Emigre and Cranbrook work (see grunge-deconstructivism.md).

---

## Quick reference

**Reach for it when**: the brand is witty, cultural, and literate, and wants to show it.
**Avoid it when**: users need predictability, speed, or trust in a transaction.

**Recipe**:
1. Paper ground, one pastel field, one saturated accent.
2. Serif, heavy sans, and mono mixed in headings; one calm face for text.
3. A visible grid broken once per view, decorative layers kept out of the reading order.
