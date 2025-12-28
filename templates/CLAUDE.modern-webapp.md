# Modern Web App Design System

> A contemporary design system optimized for SaaS products, dashboards, and web applications.

---

## Design Philosophy

**Modern. Clean. Purposeful.**

- Glassmorphism accents on key elements
- Subtle gradients for depth
- Micro-interactions that delight
- Whitespace as a design element

---

## 🎨 Color System

### Brand Colors
```css
--primary:       #3B82F6;  /* blue-500 - Main actions, CTAs */
--primary-dark:  #2563EB;  /* blue-600 - Hover states */
--primary-light: #60A5FA;  /* blue-400 - Accents */
--accent:        #8B5CF6;  /* violet-500 - Special highlights */
```

### Surfaces
```css
--bg-primary:    #FFFFFF;  /* Main background */
--bg-secondary:  #F8FAFC;  /* slate-50 - Card backgrounds */
--bg-tertiary:   #F1F5F9;  /* slate-100 - Input backgrounds */
--bg-glass:      rgba(255, 255, 255, 0.8);  /* Glassmorphism */
```

### Text
```css
--text-primary:   #0F172A;  /* slate-900 */
--text-secondary: #475569;  /* slate-600 */
--text-muted:     #94A3B8;  /* slate-400 */
```

### Semantic
```css
--success: #10B981;  /* emerald-500 */
--warning: #F59E0B;  /* amber-500 */
--error:   #EF4444;  /* red-500 */
--info:    #0EA5E9;  /* sky-500 */
```

---

## 📝 Typography

### Font Stack
```css
font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
font-family-mono: 'JetBrains Mono', 'Fira Code', monospace;
```

### Scale
| Element | Class | Size | Weight |
|---------|-------|------|--------|
| Display | `text-5xl` | 48px | Bold |
| H1 | `text-4xl` | 36px | Bold |
| H2 | `text-3xl` | 30px | Semibold |
| H3 | `text-2xl` | 24px | Semibold |
| H4 | `text-xl` | 20px | Medium |
| Body | `text-base` | 16px | Normal |
| Small | `text-sm` | 14px | Normal |
| Tiny | `text-xs` | 12px | Medium |

---

## 📐 Spacing

### Base: 4px

| Token | Value | Use Case |
|-------|-------|----------|
| `space-1` | 4px | Icon gaps |
| `space-2` | 8px | Tight spacing |
| `space-3` | 12px | Button padding-y |
| `space-4` | 16px | Card padding, gaps |
| `space-6` | 24px | Section padding |
| `space-8` | 32px | Component gaps |
| `space-12` | 48px | Section gaps |
| `space-16` | 64px | Page sections |

---

## 🔲 Border Radius

| Token | Value | Use Case |
|-------|-------|----------|
| `rounded-md` | 6px | Inputs, small buttons |
| `rounded-lg` | 8px | **Default** for most |
| `rounded-xl` | 12px | Cards, containers |
| `rounded-2xl` | 16px | Modals, hero cards |
| `rounded-full` | 9999px | Pills, avatars |

---

## 🎭 Shadows

### Standard
```css
--shadow-sm:  0 1px 2px rgba(0, 0, 0, 0.05);
--shadow-md:  0 4px 6px -1px rgba(0, 0, 0, 0.1);
--shadow-lg:  0 10px 15px -3px rgba(0, 0, 0, 0.1);
--shadow-xl:  0 20px 25px -5px rgba(0, 0, 0, 0.1);
```

### Colored (for buttons)
```css
--shadow-primary: 0 4px 14px 0 rgba(59, 130, 246, 0.39);
--shadow-success: 0 4px 14px 0 rgba(16, 185, 129, 0.39);
```

---

## ⚡ Animations

### Timing
```css
--ease-out: cubic-bezier(0.33, 1, 0.68, 1);
--ease-in-out: cubic-bezier(0.65, 0, 0.35, 1);
--bounce: cubic-bezier(0.34, 1.56, 0.64, 1);

--duration-fast: 150ms;
--duration-normal: 200ms;
--duration-slow: 300ms;
```

### Standard Transitions
```css
/* Hover effects */
transition: all 200ms var(--ease-out);

/* Color changes */
transition: color 150ms ease-out, background-color 150ms ease-out;

/* Transform */
transition: transform 200ms var(--bounce);
```

---

## 🧩 Component Patterns

### Primary Button
```html
<button class="
  bg-blue-500 hover:bg-blue-600 active:bg-blue-700
  text-white font-semibold
  px-6 py-3 rounded-lg
  shadow-md hover:shadow-lg hover:shadow-blue-500/25
  transition-all duration-200
  active:scale-[0.98]
  focus:outline-none focus:ring-4 focus:ring-blue-500/20
">
  Get Started
</button>
```

### Secondary Button
```html
<button class="
  bg-white hover:bg-slate-50 active:bg-slate-100
  text-slate-700 font-semibold
  border-2 border-slate-200 hover:border-slate-300
  px-6 py-3 rounded-lg
  shadow-sm hover:shadow-md
  transition-all duration-200
  focus:outline-none focus:ring-4 focus:ring-slate-500/10
">
  Learn More
</button>
```

### Glass Card
```html
<div class="
  bg-white/80 backdrop-blur-xl
  border border-white/20
  rounded-2xl shadow-xl
  p-6
">
  <!-- Content -->
</div>
```

### Input Field
```html
<input
  type="text"
  class="
    w-full px-4 py-3
    bg-slate-50 border-2 border-slate-200
    rounded-lg
    text-slate-900 placeholder:text-slate-400
    focus:bg-white focus:border-blue-500
    focus:outline-none focus:ring-4 focus:ring-blue-500/10
    transition-all duration-200
  "
  placeholder="Enter your email"
/>
```

### Interactive Card
```html
<div class="
  bg-white rounded-xl shadow-md
  p-6
  cursor-pointer
  hover:shadow-xl hover:-translate-y-1
  transition-all duration-300
  group
">
  <div class="
    w-12 h-12 rounded-lg
    bg-blue-100 text-blue-600
    flex items-center justify-center
    group-hover:bg-blue-500 group-hover:text-white
    transition-colors duration-300
  ">
    <svg><!-- icon --></svg>
  </div>
  <h3 class="mt-4 font-semibold text-slate-900">Feature Title</h3>
  <p class="mt-2 text-slate-600">Description text here.</p>
</div>
```

---

## 📱 Responsive

### Breakpoints
```css
sm:  640px   /* Large phones */
md:  768px   /* Tablets */
lg:  1024px  /* Laptops */
xl:  1280px  /* Desktops */
2xl: 1536px  /* Large screens */
```

### Mobile-First Patterns
```html
<!-- Grid -->
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">

<!-- Typography -->
<h1 class="text-3xl md:text-4xl lg:text-5xl font-bold">

<!-- Spacing -->
<section class="px-4 md:px-6 lg:px-8 py-12 md:py-16 lg:py-20">
```

---

## 🎯 Component Library

**Primary:** [Shadcn UI](https://ui.shadcn.com/) (React + Tailwind + Radix)

**Animations:** [Motion Primitives](https://motion-primitives.com/)

**Icons:** [Lucide Icons](https://lucide.dev/)

---

## ✅ Checklist

When creating components:

- [ ] Uses design system colors (no custom hex)
- [ ] Follows spacing scale (4px base)
- [ ] Has hover/focus/active states
- [ ] Includes accessibility (ARIA labels)
- [ ] Mobile-responsive (mobile-first)
- [ ] Smooth transitions (200ms default)
- [ ] Consistent border-radius (lg default)
- [ ] Proper shadow depth

---

## 💡 Claude Instructions

When I ask for UI components:

1. **Use this design system** - Reference exact values
2. **Modern aesthetics** - Glassmorphism, gradients, micro-interactions
3. **Shadcn patterns** - Use Shadcn when component exists
4. **All states** - hover, focus, active, disabled
5. **Accessibility** - ARIA labels, semantic HTML, keyboard nav
6. **Responsive** - Mobile-first approach
7. **Transitions** - Smooth, purposeful animations
8. **Clean code** - Well-structured, readable

---

**Style:** Modern SaaS | **Vibe:** Professional yet approachable | **Era:** 2024-2025
