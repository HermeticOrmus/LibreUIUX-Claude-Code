# Typography Fundamentals

Typography is the art of making written language readable, legible, and visually appealing. It's the foundation of all design that includes text—which is nearly all design.

## The Anatomy of Type

### Basic Terms

```
         ┌─ Ascender (rises above x-height)
         │
   ┌─────┼───────────────────────────┐
   │     │                           │
   │  h  d        x    g    p        │
   │  │  │        │    │    │        │
   └──┼──┼────────┼────┼────┼────────┘
      │  │        │    │    └─ Descender (drops below baseline)
      │  │        │    │
      │  │        │    └─ X-height (height of lowercase)
      │  │        │
      │  │        └─ Baseline (where letters sit)
      │  │
      │  └─ Cap height (height of capitals)
      │
      └─ Stem (main vertical stroke)
```

### Key Measurements
- **X-height**: Height of lowercase letters (determines perceived size)
- **Cap height**: Height of capital letters
- **Baseline**: The line text sits on
- **Leading (line-height)**: Space between lines
- **Tracking (letter-spacing)**: Space between all letters
- **Kerning**: Space between specific letter pairs

## Font Classification

### Serif
Letters with small feet/strokes at ends.
```
Times, Georgia, Garamond, Bodoni
Feel: Traditional, trustworthy, literary
Use: Body text (print), headings, editorial
```

### Sans-Serif
Letters without serifs.
```
Helvetica, Arial, Inter, SF Pro
Feel: Modern, clean, direct
Use: UI, screens, contemporary brands
```

### Monospace
All letters have equal width.
```
JetBrains Mono, Fira Code, Monaco
Feel: Technical, precise
Use: Code, data, terminal interfaces
```

### Display
Designed for large sizes, not reading.
```
Impact, Lobster, Playfair Display
Feel: Varies by style
Use: Headlines, logos, attention-grabbing
```

### Handwritten/Script
Mimics handwriting.
```
Brush Script, Pacifico, Dancing Script
Feel: Personal, informal, elegant
Use: Signatures, accents, invitations
```

## Type Hierarchy

### The Scale

Establish clear size relationships:

```css
/* Tailwind type scale */
text-xs    /* 12px - captions, metadata */
text-sm    /* 14px - secondary text, labels */
text-base  /* 16px - body text (browser default) */
text-lg    /* 18px - lead paragraphs */
text-xl    /* 20px - h4, card titles */
text-2xl   /* 24px - h3, section titles */
text-3xl   /* 30px - h2, major sections */
text-4xl   /* 36px - h1, page titles */
text-5xl   /* 48px - hero, display */
text-6xl   /* 60px - oversized display */
```

### Hierarchy Through Multiple Properties

Don't rely on size alone:

| Level | Size | Weight | Color | Tracking |
|-------|------|--------|-------|----------|
| Display | text-5xl | font-light | gray-900 | tracking-tight |
| H1 | text-4xl | font-bold | gray-900 | tracking-tight |
| H2 | text-3xl | font-semibold | gray-900 | normal |
| H3 | text-2xl | font-semibold | gray-800 | normal |
| H4 | text-xl | font-medium | gray-800 | normal |
| Body | text-base | font-normal | gray-700 | normal |
| Caption | text-sm | font-normal | gray-500 | normal |
| Overline | text-xs | font-semibold | gray-500 | tracking-widest |

## Readability

### Line Length

The most critical factor for readability.

```
Optimal: 45-75 characters per line
Acceptable: 40-85 characters per line
Danger zone: <40 or >90 characters
```

**Tailwind implementation**:
```html
<p class="max-w-prose">
  <!-- max-w-prose = 65ch, perfect for reading -->
</p>

<!-- Or be explicit -->
<p class="max-w-[65ch]">
```

### Line Height (Leading)

Space between lines affects readability:

| Use Case | Line Height | Tailwind |
|----------|-------------|----------|
| Headings | 1.1-1.2 | leading-tight |
| UI text | 1.25-1.4 | leading-snug |
| Body text | 1.5-1.6 | leading-normal / leading-relaxed |
| Long form | 1.6-1.8 | leading-relaxed / leading-loose |

### Letter Spacing (Tracking)

```css
/* Headings: slightly tighter */
.heading {
  letter-spacing: -0.025em; /* tracking-tight */
}

/* Body: normal */
.body {
  letter-spacing: 0; /* tracking-normal */
}

/* All caps: wider */
.overline {
  text-transform: uppercase;
  letter-spacing: 0.1em; /* tracking-widest */
}
```

## Font Pairing

### Principles

1. **Contrast**: Pair fonts that are different enough to distinguish
2. **Complement**: Despite contrast, they should feel harmonious
3. **Purpose**: Each font should have a clear role

### Pairing Strategies

#### Serif + Sans-Serif
The classic pairing. High contrast, clear roles.
```
Heading: Playfair Display (serif)
Body: Source Sans Pro (sans-serif)
Feel: Editorial, sophisticated
```

#### Display + Text
One for headlines, one for reading.
```
Heading: Outfit (geometric display)
Body: Inter (humanist text)
Feel: Modern, balanced
```

#### Superfamily
Same family, different cuts.
```
Heading: IBM Plex Sans Bold
Body: IBM Plex Sans Regular
Caption: IBM Plex Sans Light
Feel: Unified, systematic
```

### Recommended Pairs

| Combination | Style | Use For |
|-------------|-------|---------|
| Playfair Display + Source Sans | Editorial | Magazines, blogs |
| Outfit + Inter | Modern | SaaS, tech products |
| Space Grotesk + IBM Plex Sans | Technical | Developer tools |
| Cal Sans + Geist | Startup | Modern apps |
| Cormorant + Lato | Elegant | Luxury, weddings |
| Fraunces + Work Sans | Warm | Friendly brands |

### Fonts to Avoid

| Font | Why |
|------|-----|
| Comic Sans | Overused, unprofessional |
| Papyrus | Overused, dated |
| Brush Script | Illegible, dated |
| Impact | Only for memes now |
| Times New Roman | Default = no thought |

## Web Font Performance

### Loading Strategies

```html
<!-- Preload critical fonts -->
<link rel="preload" href="/fonts/inter-var.woff2"
      as="font" type="font/woff2" crossorigin>

<!-- Use font-display for behavior -->
<style>
  @font-face {
    font-family: 'Inter';
    src: url('/fonts/inter-var.woff2') format('woff2');
    font-display: swap; /* Show fallback, then swap */
  }
</style>
```

### Font Display Options

| Value | Behavior | Use When |
|-------|----------|----------|
| `swap` | Show fallback immediately, swap when loaded | Most cases |
| `optional` | Only use if cached/fast | Non-critical fonts |
| `fallback` | Brief blank, then fallback, then font | Middle ground |
| `block` | Brief blank, then font | Critical branded text |

### Subset Fonts

Only load characters you need:

```css
/* Latin subset only */
@font-face {
  unicode-range: U+0000-00FF, U+0131, U+0152-0153;
}
```

## Responsive Typography

### Fluid Type Scale

```css
/* Base responsive size */
html {
  font-size: clamp(14px, 1vw + 12px, 18px);
}

/* Or with Tailwind */
<h1 class="text-3xl md:text-4xl lg:text-5xl">
```

### Responsive Line Length

```html
<article class="max-w-prose mx-auto">
  <!-- Stays readable at all sizes -->
</article>

<!-- Or explicit control -->
<article class="max-w-sm md:max-w-xl lg:max-w-2xl">
```

## Quick Reference

### Safe System Font Stacks

```css
/* Sans-serif (modern) */
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI',
             Roboto, 'Helvetica Neue', Arial, sans-serif;

/* Serif (traditional) */
font-family: Georgia, Cambria, 'Times New Roman',
             Times, serif;

/* Monospace (code) */
font-family: ui-monospace, SFMono-Regular, Menlo,
             Monaco, Consolas, monospace;
```

### Typography Checklist

- [ ] 2-3 fonts maximum
- [ ] Clear size hierarchy
- [ ] Line length 45-75 characters
- [ ] Adequate line height
- [ ] Sufficient contrast (4.5:1 minimum)
- [ ] Responsive scaling
- [ ] Performance optimized
- [ ] Fallbacks specified
