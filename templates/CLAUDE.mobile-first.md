# Mobile-First Design System

> Touch-optimized, performance-focused design for mobile-first applications.

---

## Design Philosophy

**Touch. Speed. Clarity.**

- Large touch targets (min 44px)
- Bottom navigation patterns
- Gesture-friendly interactions
- Optimized for thumb reach
- Performance-first loading

---

## 🎨 Color System

### Brand Colors
```css
--primary:       #0EA5E9;  /* sky-500 - Vibrant, visible */
--primary-dark:  #0284C7;  /* sky-600 - Press states */
--primary-light: #38BDF8;  /* sky-400 - Accents */
```

### Surfaces
```css
--bg-app:        #FFFFFF;  /* App background */
--bg-card:       #F8FAFC;  /* slate-50 - Card background */
--bg-overlay:    rgba(0, 0, 0, 0.5);  /* Modal overlays */
```

### Text
```css
--text-primary:   #0F172A;  /* slate-900 - High contrast */
--text-secondary: #475569;  /* slate-600 */
--text-muted:     #94A3B8;  /* slate-400 */
```

### Safe Area Colors (iOS)
```css
/* Status bar area */
--safe-area-top: env(safe-area-inset-top);
--safe-area-bottom: env(safe-area-inset-bottom);
```

---

## 📝 Typography

### Font Stack
```css
font-family: -apple-system, BlinkMacSystemFont, 'SF Pro', 'Segoe UI', sans-serif;
```

### Scale (Mobile Optimized)
| Element | Class | Size | Weight |
|---------|-------|------|--------|
| Large Title | `text-3xl` | 30px | Bold |
| Title | `text-2xl` | 24px | Bold |
| Headline | `text-xl` | 20px | Semibold |
| Body | `text-base` | 16px | Normal |
| Subhead | `text-sm` | 14px | Normal |
| Caption | `text-xs` | 12px | Normal |

### Line Height
```css
/* Tighter for headings */
leading-tight: 1.25;

/* Relaxed for body text (easier mobile reading) */
leading-relaxed: 1.625;
```

---

## 📐 Spacing

### Touch Targets
```css
/* Minimum touch target: 44px × 44px (Apple HIG) */
min-height: 44px;
min-width: 44px;
```

### Thumb Zone Optimization
```
Top of screen:     Hard to reach - less frequent actions
Middle:            Comfortable - navigation, main content
Bottom:            Easy reach - primary actions, FAB
```

### Common Spacing
| Token | Value | Use Case |
|-------|-------|----------|
| `space-2` | 8px | Inline gaps |
| `space-3` | 12px | Button padding |
| `space-4` | 16px | Card padding |
| `space-5` | 20px | Safe padding from edges |
| `space-6` | 24px | Section gaps |

---

## 🔲 Border Radius

| Token | Value | Use Case |
|-------|-------|----------|
| `rounded-lg` | 8px | Buttons, inputs |
| `rounded-xl` | 12px | Cards |
| `rounded-2xl` | 16px | Modals, sheets |
| `rounded-3xl` | 24px | Bottom sheets |
| `rounded-full` | 9999px | FAB, pills |

---

## 🧩 Component Patterns

### Bottom Navigation
```html
<nav class="
  fixed bottom-0 inset-x-0
  bg-white border-t border-slate-200
  pb-[env(safe-area-inset-bottom)]
">
  <div class="flex justify-around items-center h-14">
    <!-- Active tab -->
    <a href="#" class="flex flex-col items-center gap-1 text-sky-500">
      <svg class="w-6 h-6"><!-- icon --></svg>
      <span class="text-xs font-medium">Home</span>
    </a>

    <!-- Inactive tab -->
    <a href="#" class="flex flex-col items-center gap-1 text-slate-400">
      <svg class="w-6 h-6"><!-- icon --></svg>
      <span class="text-xs">Search</span>
    </a>
  </div>
</nav>
```

### Bottom Sheet
```html
<div class="
  fixed inset-x-0 bottom-0
  bg-white rounded-t-3xl shadow-2xl
  transform transition-transform duration-300
  pb-[env(safe-area-inset-bottom)]
">
  <!-- Handle -->
  <div class="flex justify-center pt-3 pb-2">
    <div class="w-10 h-1 rounded-full bg-slate-300"></div>
  </div>

  <div class="px-5 pb-6">
    <!-- Content -->
  </div>
</div>
```

### Large Touch Button
```html
<button class="
  w-full min-h-[48px] px-6 py-3
  bg-sky-500 hover:bg-sky-600 active:bg-sky-700
  text-white font-semibold text-base
  rounded-xl
  active:scale-[0.98]
  transition-all duration-150
">
  Continue
</button>
```

### List Item (Tappable)
```html
<a href="#" class="
  flex items-center gap-4 px-5 py-4
  active:bg-slate-100
  transition-colors duration-150
">
  <div class="w-12 h-12 rounded-full bg-slate-200 flex-shrink-0"></div>
  <div class="flex-1 min-w-0">
    <p class="font-medium text-slate-900 truncate">John Doe</p>
    <p class="text-sm text-slate-500 truncate">Last message preview...</p>
  </div>
  <svg class="w-5 h-5 text-slate-400 flex-shrink-0"><!-- chevron --></svg>
</a>
```

### Input Field (Touch Optimized)
```html
<div class="px-5">
  <label class="block text-sm font-medium text-slate-700 mb-2">
    Email
  </label>
  <input
    type="email"
    inputmode="email"
    autocomplete="email"
    class="
      w-full h-12 px-4
      bg-slate-100 border-0 rounded-xl
      text-base text-slate-900
      placeholder:text-slate-400
      focus:bg-white focus:ring-2 focus:ring-sky-500
      focus:outline-none
      transition-all duration-150
    "
    placeholder="you@example.com"
  />
</div>
```

### Floating Action Button (FAB)
```html
<button class="
  fixed bottom-24 right-5
  w-14 h-14 rounded-full
  bg-sky-500 hover:bg-sky-600 active:bg-sky-700
  text-white shadow-lg shadow-sky-500/30
  flex items-center justify-center
  active:scale-95
  transition-all duration-150
">
  <svg class="w-6 h-6"><!-- plus icon --></svg>
</button>
```

### Pull-to-Refresh Indicator
```html
<div class="flex justify-center py-4">
  <div class="w-6 h-6 border-2 border-sky-500 border-t-transparent rounded-full animate-spin"></div>
</div>
```

### iOS-Style Toggle
```html
<button
  role="switch"
  aria-checked="true"
  class="
    relative w-[51px] h-[31px] rounded-full
    bg-sky-500
    transition-colors duration-200
    focus:outline-none focus:ring-2 focus:ring-sky-500 focus:ring-offset-2
  "
>
  <span class="
    absolute top-[2px] left-[22px]
    w-[27px] h-[27px] rounded-full
    bg-white shadow-md
    transition-transform duration-200
  "></span>
</button>
```

---

## 📱 Safe Areas

```html
<!-- Full-screen layout with safe areas -->
<div class="
  min-h-screen
  pt-[env(safe-area-inset-top)]
  pb-[env(safe-area-inset-bottom)]
  pl-[env(safe-area-inset-left)]
  pr-[env(safe-area-inset-right)]
">
  <!-- content -->
</div>
```

---

## 🎯 Gestures

### Swipe Actions
```html
<div class="relative overflow-hidden">
  <!-- Swipe background -->
  <div class="absolute inset-y-0 right-0 w-20 bg-red-500 flex items-center justify-center">
    <svg class="w-6 h-6 text-white"><!-- trash icon --></svg>
  </div>

  <!-- Swipeable content -->
  <div class="relative bg-white transform transition-transform">
    <!-- list item -->
  </div>
</div>
```

---

## ⚡ Performance

### Image Loading
```html
<img
  src="image.jpg"
  loading="lazy"
  decoding="async"
  class="w-full h-48 object-cover"
/>
```

### Skeleton Loading
```html
<div class="animate-pulse">
  <div class="h-12 w-12 bg-slate-200 rounded-full"></div>
  <div class="mt-3 h-4 bg-slate-200 rounded w-3/4"></div>
  <div class="mt-2 h-3 bg-slate-200 rounded w-1/2"></div>
</div>
```

---

## 📱 Responsive

### Breakpoints
```css
/* Mobile-first: base styles are mobile */
sm:  640px   /* Large phones, landscape */
md:  768px   /* Tablets */
lg:  1024px  /* Desktop (tablet + sidebar) */
```

### Pattern
```html
<!-- Stack on mobile, side-by-side on tablet+ -->
<div class="flex flex-col md:flex-row gap-4">
  <div class="flex-1"><!-- content --></div>
  <div class="flex-1"><!-- content --></div>
</div>
```

---

## 🎯 Component Library

**Primary:** [Shadcn UI](https://ui.shadcn.com/) (mobile-optimized)

**Gestures:** [use-gesture](https://use-gesture.netlify.app/)

**Icons:** [Lucide Icons](https://lucide.dev/)

---

## ✅ Checklist

When creating mobile components:

- [ ] Touch targets ≥ 44px
- [ ] Safe area padding
- [ ] Bottom navigation preferred
- [ ] Large, readable text (≥16px body)
- [ ] Skeleton loading states
- [ ] Input types with `inputmode`
- [ ] System font stack
- [ ] Reduced motion support

---

## 💡 Claude Instructions

When I ask for mobile components:

1. **Touch-first** - Minimum 44px touch targets
2. **Bottom-focused** - Primary actions at bottom
3. **Safe areas** - Account for notches, home indicators
4. **Large text** - 16px minimum for body text
5. **Performance** - Lazy loading, skeletons
6. **Native feel** - iOS/Android patterns
7. **Accessibility** - VoiceOver/TalkBack support

---

**Style:** Native Mobile | **Vibe:** Smooth, responsive | **Priority:** Touch UX
