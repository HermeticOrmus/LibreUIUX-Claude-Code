# 🎨 Design Vocabulary: Speak Modern UI/UX

This guide teaches you the **language of modern design** so you can communicate precisely with Claude Code.

---

## 🎯 Why This Matters

Here's what's extraordinary: Claude understands design systems perfectly—not aesthetically, but **systematically**. It knows Tailwind's scale, spacing units, shadow depths. When you speak that language, you're giving coordinates, not directions.

**Vague Request** (rolling dice):
```
"Make the card look modern and nice"
```
Claude doesn't know what "modern" or "nice" means to you. Every generation becomes a negotiation.

**Precise Request** (hitting bullseye):
```
"Apply glassmorphism to the card: backdrop-blur-lg, bg-white/10,
border border-white/20, rounded-2xl, shadow-xl"
```
Claude knows **exactly** what to build. Same result, every time.

That's the power of shared vocabulary.

---

📝 **Field Notes from the Trenches**

Spent a month saying things like "make it pop" and "more modern." Results were chaos.

Then I learned Tailwind's scale: shadow-sm, shadow-md, shadow-lg. Suddenly: "change from shadow-md to shadow-lg" gave me exactly what I wanted, first try.

**Try this:** Use vague terms for five requests. Then use precise Tailwind classes for five requests. Compare your success rate.

**Watch for:** Precise requests succeed ~90% on first try. Vague requests? Maybe 20%.

**This works because:** You're speaking Claude's native language—systematic specifications. It's like switching from "go thataway" to GPS coordinates.

---

## 📐 Layout & Spacing

### Container Widths

| Term | Size | Use Case |
|------|------|----------|
| `max-w-xs` | 320px | Small cards, mobile-first |
| `max-w-sm` | 384px | Card components |
| `max-w-md` | 448px | Forms, modals |
| `max-w-lg` | 512px | Article content |
| `max-w-xl` | 576px | Wider content |
| `max-w-2xl` | 672px | Blog posts |
| `max-w-4xl` | 896px | Dashboard sections |
| `max-w-6xl` | 1152px | Full-width layouts |
| `max-w-screen-xl` | 1280px | Page containers |

### Spacing Scale (Tailwind)

| Term | Size | Use |
|------|------|-----|
| `p-1` / `m-1` | 4px | Tight spacing |
| `p-2` / `m-2` | 8px | Small components |
| `p-4` / `m-4` | 16px | Standard spacing |
| `p-6` / `m-6` | 24px | Card padding |
| `p-8` / `m-8` | 32px | Section spacing |
| `p-12` / `m-12` | 48px | Large sections |
| `p-16` / `m-16` | 64px | Hero sections |

**Remember**:
- `p` = padding (inside)
- `m` = margin (outside)
- `px` = horizontal, `py` = vertical
- `pt`, `pb`, `pl`, `pr` = individual sides

### Grid & Flex

**Grid**: For structured layouts
```css
grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6
```
- `grid-cols-X`: number of columns
- `gap-X`: space between items

**Flexbox**: For flexible layouts
```css
flex flex-col md:flex-row items-center justify-between gap-4
```
- `flex-col`: vertical stack
- `flex-row`: horizontal line
- `items-center`: align vertically
- `justify-between`: space out horizontally

---

## 🎨 Modern Design Patterns

### Glassmorphism (Frosted Glass)

**What it is**: Translucent, blurred background effect

Here's what's elegant about this pattern: instead of hiding the background, you're **composing with it**. The blur and transparency make the background part of the design. That's the difference between painting over something and painting with it.

**How to ask for it**:
```
Apply glassmorphism with:
- backdrop-blur-lg (16px blur) - Creates frosted glass effect
- bg-white/10 (10% white opacity) - Subtle tint, not blocking
- border border-white/20 (subtle border) - Defines the edge
- shadow-xl (pronounced shadow) - Adds depth
```

**Use cases**:
- Navigation bars (content visible underneath)
- Modal overlays (context preserved)
- Cards on busy backgrounds (image becomes part of design)
- Floating panels (depth without heaviness)

**Why these specific values?**
- Too much blur (xl) → can't read content behind
- Too little (md) → doesn't feel glassy
- Too opaque (/30) → just a white box
- These ratios—blur-lg + /10 opacity—hit the sweet spot

### Neumorphism (Soft UI)

**What it is**: Soft, extruded look with subtle shadows

**How to ask for it**:
```
Neumorphic style:
- bg-gray-100 (same as page background)
- Two shadows: inset and outset
- Subtle, low contrast
- Rounded corners (rounded-2xl)
```

**Use cases**:
- Buttons
- Input fields
- Toggles/switches
- Icons

**Warning**: Don't overuse - low contrast can hurt accessibility

### Bento Grid

**What it is**: Pinterest/masonry-style grid with varied item sizes

**How to ask for it**:
```
Bento grid layout:
- CSS Grid with different sized cells
- Some items span 2 columns or 2 rows
- Consistent gap (gap-4)
- Responsive breakpoints
```

**Use cases**:
- Dashboards
- Portfolio galleries
- Feature showcases

### Gradients

**Linear Gradient** (straight transition):
```
bg-gradient-to-r from-blue-500 to-purple-600
```
- Directions: `to-r` (right), `to-b` (bottom), `to-br` (diagonal)

**Radial Gradient** (circular):
```
bg-gradient-radial from-blue-500 to-purple-600
```

**Mesh Gradient** (modern, complex):
```
Multiple gradients overlapping with blur
```

---

## 🎭 Visual Effects

### Shadows

| Term | Effect | Use |
|------|--------|-----|
| `shadow-sm` | Subtle | Small elements |
| `shadow-md` | Moderate | Cards at rest |
| `shadow-lg` | Large | Elevated cards |
| `shadow-xl` | Extra large | Modals, popovers |
| `shadow-2xl` | Dramatic | Hero elements |
| `shadow-inner` | Inset shadow | Pressed buttons |
| `drop-shadow-lg` | Drop shadow | Images, SVGs |

**Custom shadows**:
```css
shadow-[0_8px_30px_rgb(0,0,0,0.12)]
```

### Blur

| Term | Blur | Use |
|------|------|-----|
| `blur-sm` | 4px | Subtle |
| `blur-md` | 12px | Moderate |
| `blur-lg` | 16px | Strong |
| `backdrop-blur-sm` | Background blur | Glassmorphism |
| `backdrop-blur-lg` | Strong background | Overlays |

### Opacity & Transparency

```css
bg-white/10    // 10% opaque white
bg-black/50    // 50% opaque black
text-gray-600/75   // 75% opaque text
```

---

## 🔤 Typography

### Font Sizes

| Term | Size | Use |
|------|------|-----|
| `text-xs` | 12px | Captions, labels |
| `text-sm` | 14px | Secondary text |
| `text-base` | 16px | Body text |
| `text-lg` | 18px | Emphasized body |
| `text-xl` | 20px | Small headings |
| `text-2xl` | 24px | H3 headings |
| `text-3xl` | 30px | H2 headings |
| `text-4xl` | 36px | H1 headings |
| `text-5xl` | 48px | Hero headings |
| `text-6xl` | 60px | Display text |

### Font Weights

| Term | Weight | Use |
|------|--------|-----|
| `font-light` | 300 | Delicate text |
| `font-normal` | 400 | Body text |
| `font-medium` | 500 | Emphasis |
| `font-semibold` | 600 | Subheadings |
| `font-bold` | 700 | Headings |
| `font-extrabold` | 800 | Strong headings |

### Line Height

| Term | Ratio | Use |
|------|-------|-----|
| `leading-tight` | 1.25 | Headings |
| `leading-snug` | 1.375 | Tight text |
| `leading-normal` | 1.5 | Body text |
| `leading-relaxed` | 1.625 | Comfortable reading |
| `leading-loose` | 2 | Spacious text |

---

## 🎨 Colors

### Using Color Scales

**Don't**: Random colors
```
"Make it blue-ish" ❌
```

**Do**: Use a scale
```
"Primary: blue-600, hover: blue-700, light bg: blue-50" ✅
```

### Tailwind Color Scales

Each color has shades from 50 (lightest) to 950 (darkest):

```
slate-50   → Very light gray
slate-100  → Light gray
slate-200  → Borders
...
slate-500  → Medium gray
...
slate-900  → Dark text
slate-950  → Almost black
```

Popular colors:
- **Blue**: Professional, trustworthy
- **Purple**: Creative, premium
- **Green**: Success, eco-friendly
- **Red**: Errors, urgent actions
- **Yellow/Amber**: Warnings, highlights
- **Slate/Gray**: Neutral, backgrounds

### Semantic Colors

```
Primary:   blue-600    (main brand color)
Secondary: slate-600   (supporting color)
Success:   green-500   (confirmations)
Error:     red-500     (errors, delete)
Warning:   yellow-500  (warnings)
Info:      blue-400    (information)
```

---

## 🎯 Borders & Corners

### Border Radius (Rounded Corners)

| Term | Radius | Use |
|------|--------|-----|
| `rounded-none` | 0px | Sharp corners |
| `rounded-sm` | 2px | Subtle |
| `rounded` | 4px | Standard |
| `rounded-md` | 6px | Moderate |
| `rounded-lg` | 8px | Cards, buttons |
| `rounded-xl` | 12px | Larger cards |
| `rounded-2xl` | 16px | Prominent elements |
| `rounded-3xl` | 24px | Very round |
| `rounded-full` | 9999px | Circles, pills |

### Border Widths

```css
border      // 1px all sides
border-2    // 2px all sides
border-4    // 4px all sides
border-t-2  // Top only
border-l-4  // Left only
```

---

## ✨ Animations & Transitions

### Transition Duration

| Term | Time | Feel |
|------|------|------|
| `duration-75` | 75ms | Instant |
| `duration-100` | 100ms | Very fast |
| `duration-150` | 150ms | Fast |
| `duration-200` | 200ms | Standard (recommended) |
| `duration-300` | 300ms | Smooth |
| `duration-500` | 500ms | Slow |

### Transition Timing

```css
ease-linear    // Constant speed
ease-in        // Slow start
ease-out       // Slow end (best for UI)
ease-in-out    // Slow start and end
```

### Common Transitions

**Hover lift**:
```css
transition-transform duration-200 hover:scale-105 hover:-translate-y-1
```

**Color change**:
```css
transition-colors duration-200 hover:bg-blue-700
```

**All properties**:
```css
transition-all duration-200 ease-in-out
```

### Animations

```css
animate-pulse      // Gentle pulsing
animate-bounce     // Bouncing
animate-spin       // Spinning (loaders)
animate-ping       // Ping effect
animate-fade-in    // Fade in
animate-slide-up   // Slide up
```

---

## 📱 Responsive Design

### Breakpoints

| Prefix | Size | Device |
|--------|------|--------|
| `sm:` | 640px+ | Large phone |
| `md:` | 768px+ | Tablet |
| `lg:` | 1024px+ | Laptop |
| `xl:` | 1280px+ | Desktop |
| `2xl:` | 1536px+ | Large desktop |

### Mobile-First Approach

**How to specify**:
```
Base: mobile styles (no prefix)
md:  tablet overrides
lg:  desktop overrides

Example:
"Create a grid: grid-cols-1 md:grid-cols-2 lg:grid-cols-4"

Translation:
- Mobile: 1 column
- Tablet: 2 columns
- Desktop: 4 columns
```

---

## 🎨 Advanced Terms

### Aspect Ratios

```css
aspect-square   // 1:1 (square)
aspect-video    // 16:9 (widescreen)
aspect-[4/3]    // Custom ratio
```

### Object Fit (Images)

```css
object-cover    // Fill container, crop overflow
object-contain  // Fit inside, show all
object-fill     // Stretch to fill
```

### Z-Index (Layering)

```css
z-0      // Base layer
z-10     // Above base
z-20     // Above that
z-50     // High (dropdowns, tooltips)
```

### Overflow

```css
overflow-hidden   // Hide overflow
overflow-auto     // Scrollbar when needed
overflow-scroll   // Always show scrollbar
```

---

## 💬 Putting It All Together

### Example: Modern Card Request

**Instead of**:
```
"Create a nice-looking product card"
```

**Say this**:
```
Create a product card with these specifications:

CONTAINER:
- max-w-sm (384px)
- rounded-xl (12px corners)
- bg-white
- shadow-lg hover:shadow-2xl
- transition-all duration-300

LAYOUT:
- p-6 (24px padding)
- flex flex-col gap-4

IMAGE:
- aspect-video (16:9)
- rounded-lg
- object-cover
- transition-transform duration-200
- hover:scale-105

TITLE:
- text-xl font-semibold
- text-gray-900
- line-clamp-2 (max 2 lines)

DESCRIPTION:
- text-sm text-gray-600
- leading-relaxed
- line-clamp-3

PRICE:
- text-2xl font-bold
- text-blue-600

BUTTON:
- w-full (full width)
- bg-blue-600 hover:bg-blue-700
- text-white font-semibold
- py-3 px-6
- rounded-lg
- transition-colors duration-200

RESPONSIVE:
- Base: w-full
- md: max-w-sm
- Grid: grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6
```

---

## 📚 Quick Reference Cheatsheet

### Must-Know Terms

1. **Layout**: `flex`, `grid`, `max-w-*`, `gap-*`
2. **Spacing**: `p-*`, `m-*`, `space-*`
3. **Colors**: `bg-*-500`, `text-*-600`, `opacity`
4. **Typography**: `text-*`, `font-*`, `leading-*`
5. **Borders**: `rounded-*`, `border-*`
6. **Effects**: `shadow-*`, `blur-*`, `backdrop-blur-*`
7. **Transitions**: `transition-*`, `duration-*`, `ease-*`
8. **Responsive**: `sm:`, `md:`, `lg:`, `xl:`
9. **Hover**: `hover:*`
10. **Modern patterns**: glassmorphism, bento grid, gradients

---

## 🎯 Practice Exercise

**Task**: Describe this button in proper design vocabulary:

A blue button with white text that gets slightly darker and grows a bit when you hover over it, with rounded corners and some spacing inside.

**Answer**:
```
Button with:
- bg-blue-600 hover:bg-blue-700
- text-white font-semibold
- px-6 py-3
- rounded-lg
- transition-all duration-200
- hover:scale-105
- shadow-md hover:shadow-lg
```

---

💛 **Gold Hat Note**
Topic: Design Vocabulary as Shared Language

This isn't just about you speaking more precisely. It's about all of us building a shared vocabulary for human-AI design collaboration.

When you discover a term that works perfectly, share it in discussions. When you notice Claude responds better to certain phrasings, document it. When you map a design pattern to specific Tailwind classes, tell the community.

Every term you master? That's one less ambiguity in our collective communication with AI.

Share what you discover. The craft grows when knowledge flows.

---

**Next**: Use these terms in [Prompt Templates](./prompts/) to create beautiful components!
