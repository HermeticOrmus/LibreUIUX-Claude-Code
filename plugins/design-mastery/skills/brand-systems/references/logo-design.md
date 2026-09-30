# Logo design

A logo is an identifier, not an explanation. Paul Rand put it plainly in his essay "Logos, Flags, and Escutcheons" (1991): "A logo derives its meaning from the quality of the thing it symbolizes, not the other way around." Design the mark to be distinctive and durable; the business gives it meaning over time.

## Logo types

| Type | What it is | Strengths | Watch for | Well-known examples |
|------|------------|-----------|-----------|---------------------|
| **Wordmark** | The name set in custom or chosen type | Builds name recognition directly | Long names get small; needs strong type | Google, Coca-Cola |
| **Lettermark** | Initials or abbreviation | Compact, good for long names | Initials alone carry little meaning early on | IBM, HBO |
| **Symbol (pictorial)** | A recognizable picture | Memorable, language-independent | Needs time and exposure to stand alone | Apple, Twitter's former bird |
| **Abstract mark** | A non-literal shape | Ownable, flexible | Meaning must be built through use | Nike Swoosh, Mastercard circles |
| **Combination** | Symbol plus wordmark | Flexible; symbol can later stand alone | Must work split apart and together | Adidas, Lacoste |
| **Emblem** | Text enclosed in a badge or seal | Heritage, institutional feel | Detail breaks down at small sizes | Starbucks, many universities |
| **Mascot** | A character | Warm, story-friendly | Hard to use at favicon size | KFC's Colonel |

For a new brand with no recognition, a wordmark or combination mark is usually safer than a lone abstract symbol.

## Evaluation criteria

Criteria that working identity designers apply, in the spirit of Rand's writing:

| Criterion | Test |
|-----------|------|
| **Distinctive** | Put it beside competitors' marks; is it clearly different? |
| **Simple** | Can someone sketch it from memory after a brief look? |
| **Scalable** | Does it hold at 16px and on a billboard? |
| **Versatile** | Does it work in one color, reversed, on photos, embroidered, engraved? |
| **Appropriate** | Does its tone fit the audience and category? |
| **Durable** | Does it depend on a current trend (a gradient style, a fashionable typeface)? |

## Famous marks and what they teach

| Mark | Designer | Year | Lesson |
|------|----------|------|--------|
| Nike Swoosh | Carolyn Davidson | 1971 | A simple abstract mark gains meaning through use; she was paid $35 |
| Apple rainbow apple | Rob Janoff | 1977 | The bite gives scale and keeps it from reading as another fruit |
| I Love NY | Milton Glaser | 1977 | A rebus (I, heart, NY) can carry emotion in three glyphs |
| IBM eight-bar logo | Paul Rand | 1972 | Stripes turned a heavy slab-serif lettermark into something that feels fast |
| FedEx | Lindon Leader at Landor Associates | 1994 | Negative space (the arrow between E and x) rewards a second look |
| WWF panda | Sir Peter Scott, from sketches by Gerald Watterson | 1961 (refined by Landor, 1986) | Closure: the viewer completes the missing outlines |
| Mastercard | Pentagram (Michael Bierut) | 2016 | Reduce to the core; the circles later ran without the name (from 2019) |

## Construction

1. **Start from strategy**: positioning, personality, and the one idea the mark should hold (see the brand-systems SKILL)
2. **Sketch widely**: many rough directions on paper before any vector work
3. **Build on geometry, then correct optically**: circles and diagonals often need overshoot and weight compensation to look even
4. **Set the wordmark with care**: adjust kerning pair by pair; customize a few letters so the name is ownable
5. **Test in context early**: app icon, website header, social avatar, invoice, signage

### Optical corrections that matter

| Issue | Correction |
|-------|------------|
| Round shapes look smaller than squares of equal height | Let curves overshoot the baseline and cap height slightly |
| Horizontal strokes look heavier than vertical ones | Thin horizontals a little |
| Reversed (light on dark) marks look bolder | Supply a slightly lighter reverse version if needed |
| Tight counters fill in when small | Open them up in the small-size version |

## Sizing and small-size versions

Large and small uses often need different drawings, not just scaling.

| Context | Typical size | Version |
|---------|--------------|---------|
| Favicon | 16 to 32px | Symbol only or a single letter, extra-bold, no fine detail |
| App icon | 180px (Apple touch icon), 192 and 512px (web app manifest) | Symbol on a solid field, safe padding |
| Social avatar | Circular crop | Symbol centered, nothing important near the edge |
| Header | 24 to 40px tall | Horizontal lockup |
| Print | Defined by a minimum width | Full lockup with clear space |

Define a **minimum size** for every lockup (for example, "horizontal lockup never below 96px wide on screen").

### Favicon set

```html
<link rel="icon" href="/favicon.ico" sizes="32x32">
<link rel="icon" href="/icon.svg" type="image/svg+xml">
<link rel="apple-touch-icon" href="/apple-touch-icon.png"><!-- 180x180 -->
<link rel="manifest" href="/manifest.webmanifest"><!-- 192 and 512 icons -->
```

Browser support for SVG favicons varies, so keep the ICO or PNG fallback.

## Clear space and lockups

**Clear space**: the minimum empty area around the logo, defined by a unit taken from the logo itself (for example, the height of the wordmark's x-height or the width of the symbol's stroke). Nothing else enters that zone.

**Lockups** to define:

| Lockup | Use |
|--------|-----|
| Horizontal (symbol left, name right) | Headers, email signatures |
| Stacked (symbol above name) | Square spaces, splash screens |
| Symbol only | Favicons, avatars, app icons |
| Wordmark only | Where the symbol would be too small or redundant |

Specify the exact spacing between symbol and wordmark in each lockup, and never let users rebuild lockups by hand.

## Color versions

Every logo needs:

- [ ] Full-color version on light backgrounds
- [ ] Full-color or adapted version on dark backgrounds
- [ ] One-color (solid black) version
- [ ] Reversed (solid white) version
- [ ] A rule for photographic backgrounds (use the one-color version on a scrim, or a solid badge)

If the mark only works in full color, it is not finished. Gradients and fine tonal effects should be optional layers, not the structure of the mark.

## Delivering the logo

### SVG for the web

```html
<svg viewBox="0 0 120 32" role="img" aria-labelledby="logo-title" class="h-8 w-auto text-slate-900 dark:text-white">
  <title id="logo-title">Acme</title>
  <path fill="currentColor" d="..." />
</svg>
```

- Use `viewBox` and no fixed `width`/`height` so CSS controls size
- Use `fill="currentColor"` for one-color versions so the mark follows text color and dark mode
- Give it an accessible name (`<title>` or `aria-label`); if the logo links home, the link needs the name
- Optimize with a tool such as SVGO, and outline text so the file does not depend on installed fonts

### Asset package

| Format | Purpose |
|--------|---------|
| SVG | Web, apps, scalable use |
| PNG (transparent, several sizes) | Office documents, platforms that reject SVG |
| PDF or EPS | Print vendors |
| ICO + PNG icons | Favicons, app icons |

Name files predictably: `acme-logo-horizontal-fullcolor.svg`, `acme-logo-symbol-white.svg`.

## Testing checklist

- [ ] Recognizable at 16px (favicon) and at large format
- [ ] Works in one color and reversed
- [ ] Holds up on light, dark, and photographic backgrounds
- [ ] Distinct from competitors and from well-known marks (run a trademark search before launch)
- [ ] No unintended shapes or readings when rotated, cropped to a circle, or seen upside down
- [ ] Wordmark kerning checked at display size
- [ ] Clear space and minimum sizes documented
- [ ] SVG has an accessible name and uses `currentColor` where appropriate
- [ ] Full asset package exported and named consistently

## Related references

- [color-palettes.md](color-palettes.md): brand colors the logo sits within
- [typography-pairing.md](typography-pairing.md): type that accompanies the wordmark
- [brand-voice.md](brand-voice.md): the verbal side of the identity
- [../assets/brand-canvas-template.md](../assets/brand-canvas-template.md): strategy inputs before sketching
