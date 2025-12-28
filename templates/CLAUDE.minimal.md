# Minimal Design System

> Clean, content-focused design with intentional restraint.

---

## Design Philosophy

**Less. But better.**

- Content is king
- Whitespace creates focus
- Typography does the heavy lifting
- Color used sparingly
- No decoration for decoration's sake

---

## 🎨 Color System

### Monochrome Base
```css
--black:         #000000;
--gray-900:      #171717;  /* Primary text */
--gray-700:      #404040;  /* Secondary text */
--gray-500:      #737373;  /* Muted text */
--gray-300:      #D4D4D4;  /* Borders */
--gray-100:      #F5F5F5;  /* Subtle backgrounds */
--white:         #FFFFFF;  /* Background */
```

### Single Accent
```css
--accent:        #000000;  /* Black - links, CTAs */
/* OR choose ONE: */
--accent:        #2563EB;  /* Blue */
--accent:        #059669;  /* Green */
--accent:        #DC2626;  /* Red */
```

### Semantic (Subtle)
```css
--success:       #059669;  /* emerald-600 */
--error:         #DC2626;  /* red-600 */
--warning:       #D97706;  /* amber-600 */
```

---

## 📝 Typography

### Font Stack
```css
/* Elegant serif for headings (optional) */
font-family-heading: 'Playfair Display', 'Georgia', serif;

/* Clean sans for body */
font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;

/* Mono for code */
font-family-mono: 'JetBrains Mono', monospace;
```

### Scale
| Element | Class | Size | Weight |
|---------|-------|------|--------|
| Display | `text-6xl` | 60px | Normal |
| H1 | `text-4xl` | 36px | Normal |
| H2 | `text-2xl` | 24px | Normal |
| H3 | `text-xl` | 20px | Medium |
| Body | `text-base` | 16px | Normal |
| Small | `text-sm` | 14px | Normal |

### Line Height
```css
/* Generous for readability */
leading-loose: 1.75;
leading-relaxed: 1.625;
```

### Max Width for Text
```css
/* Optimal reading line length */
max-width: 65ch;
```

---

## 📐 Spacing

### Generous Whitespace

| Token | Value | Use Case |
|-------|-------|----------|
| `space-4` | 16px | Inline gaps |
| `space-8` | 32px | Paragraph gaps |
| `space-16` | 64px | Section spacing |
| `space-24` | 96px | Page sections |
| `space-32` | 128px | Hero spacing |

---

## 🔲 Border Radius

### Minimal or None
```css
--radius:      0;     /* Sharp edges - architectural */
/* OR */
--radius:      2px;   /* Barely rounded - subtle */
/* OR */
--radius:      4px;   /* Slightly rounded - friendly */
```

---

## 🎭 Shadows

### Avoid Unless Necessary
```css
/* If needed, very subtle */
--shadow: 0 1px 3px rgba(0, 0, 0, 0.08);
```

---

## 🧩 Component Patterns

### Text Link
```html
<a href="#" class="
  text-gray-900 underline underline-offset-4
  hover:text-gray-700
  transition-colors duration-150
">
  Read more
</a>
```

### Primary Button
```html
<button class="
  bg-black hover:bg-gray-900
  text-white font-medium
  px-6 py-3
  transition-colors duration-150
">
  Get Started
</button>
```

### Secondary Button
```html
<button class="
  bg-white hover:bg-gray-50
  text-gray-900 font-medium
  border border-gray-300
  px-6 py-3
  transition-colors duration-150
">
  Learn More
</button>
```

### Ghost Button
```html
<button class="
  text-gray-700 hover:text-gray-900
  underline underline-offset-4
  font-medium
  transition-colors duration-150
">
  View all
</button>
```

### Card (Border Only)
```html
<article class="border border-gray-200 p-8">
  <h3 class="text-xl font-medium text-gray-900">Title</h3>
  <p class="mt-4 text-gray-600 leading-relaxed">
    Content goes here with generous line height for readability.
  </p>
</article>
```

### Input Field
```html
<input
  type="text"
  class="
    w-full px-0 py-3
    bg-transparent
    border-0 border-b border-gray-300
    text-gray-900 text-base
    placeholder:text-gray-400
    focus:border-gray-900 focus:ring-0
    focus:outline-none
    transition-colors duration-150
  "
  placeholder="Enter your email"
/>
```

### Input Field (Boxed Alternative)
```html
<input
  type="text"
  class="
    w-full px-4 py-3
    bg-gray-50 border border-gray-200
    text-gray-900
    placeholder:text-gray-400
    focus:bg-white focus:border-gray-400
    focus:outline-none
    transition-all duration-150
  "
  placeholder="Enter your email"
/>
```

### Hero Section
```html
<section class="max-w-2xl mx-auto px-6 py-32 text-center">
  <h1 class="text-5xl font-normal text-gray-900 leading-tight">
    Simple words.<br>Powerful meaning.
  </h1>
  <p class="mt-8 text-xl text-gray-600 leading-relaxed">
    A single line that says everything without saying too much.
  </p>
  <div class="mt-12">
    <a href="#" class="
      inline-block bg-black text-white px-8 py-4
      hover:bg-gray-900 transition-colors duration-150
    ">
      Begin
    </a>
  </div>
</section>
```

### Feature List (No Cards)
```html
<div class="max-w-xl mx-auto space-y-12">
  <div>
    <h3 class="text-lg font-medium text-gray-900">Feature One</h3>
    <p class="mt-2 text-gray-600 leading-relaxed">
      Brief explanation that doesn't try too hard.
    </p>
  </div>

  <div>
    <h3 class="text-lg font-medium text-gray-900">Feature Two</h3>
    <p class="mt-2 text-gray-600 leading-relaxed">
      Another simple, clear description.
    </p>
  </div>
</div>
```

### Navigation
```html
<nav class="flex items-center justify-between py-6">
  <a href="/" class="text-lg font-medium text-gray-900">Logo</a>

  <div class="flex items-center gap-8">
    <a href="#" class="text-gray-600 hover:text-gray-900 transition-colors">About</a>
    <a href="#" class="text-gray-600 hover:text-gray-900 transition-colors">Work</a>
    <a href="#" class="text-gray-600 hover:text-gray-900 transition-colors">Contact</a>
  </div>
</nav>
```

### Footer
```html
<footer class="py-16 border-t border-gray-200">
  <div class="max-w-2xl mx-auto px-6 text-center">
    <p class="text-gray-500">
      © 2024 Company Name
    </p>
  </div>
</footer>
```

---

## 📱 Responsive

### Breakpoints
```css
sm:  640px
md:  768px
lg:  1024px
```

### Patterns
```html
<!-- Generous mobile padding, tighter on desktop -->
<section class="px-6 md:px-0">

<!-- Text scaling -->
<h1 class="text-3xl md:text-5xl">

<!-- Centered, constrained content -->
<div class="max-w-2xl mx-auto">
```

---

## ✅ Design Principles

### Do
- Use whitespace generously
- Let typography create hierarchy
- Use black, white, grays primarily
- Sharp or barely-rounded corners
- Border-based separation (not shadows)
- Underlined text links

### Don't
- ❌ Colorful gradients
- ❌ Drop shadows
- ❌ Heavy border radius
- ❌ Decorative icons
- ❌ Background patterns
- ❌ Animations for everything

---

## 🎯 Inspiration

- **Websites:** Apple, Stripe (text sections), Notion
- **Publications:** The New York Times, Medium
- **Style:** Swiss Design, Bauhaus, Japanese minimalism

---

## ✅ Checklist

When creating minimal components:

- [ ] Maximum 3 colors (black, white, one accent)
- [ ] Generous whitespace (err on more)
- [ ] Typography creates hierarchy
- [ ] No unnecessary decoration
- [ ] Border separation over shadows
- [ ] Readable line length (max 65ch)
- [ ] Relaxed line height (1.625+)

---

## 💡 Claude Instructions

When I ask for minimal components:

1. **Restrained palette** - Black, white, grays, one accent max
2. **Typography-first** - Let text do the work
3. **Whitespace** - More than you think you need
4. **No decoration** - Every element earns its place
5. **Sharp or subtle** - No bold border-radius
6. **Borders over shadows** - Clean separation
7. **Content focus** - Design serves the content

---

**Style:** Editorial Minimal | **Vibe:** Quiet confidence | **Rule:** Less, but better
