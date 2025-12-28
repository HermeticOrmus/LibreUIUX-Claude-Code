# SaaS Platform Design System

> Data-dense, dashboard-focused design for B2B SaaS applications.

---

## Design Philosophy

**Functional. Dense. Efficient.**

- Information-first layouts
- Compact spacing for data density
- Clear visual hierarchy
- Action-oriented interfaces
- Dark mode optimized

---

## 🎨 Color System

### Brand Colors
```css
--primary:       #6366F1;  /* indigo-500 - Primary actions */
--primary-dark:  #4F46E5;  /* indigo-600 - Hover */
--primary-light: #818CF8;  /* indigo-400 - Accents */
```

### Dark Mode Surfaces (Default)
```css
--bg-base:       #0F172A;  /* slate-900 - App background */
--bg-surface:    #1E293B;  /* slate-800 - Cards */
--bg-elevated:   #334155;  /* slate-700 - Elevated elements */
--bg-overlay:    #475569;  /* slate-600 - Overlays */
```

### Light Mode Surfaces
```css
--bg-base:       #F8FAFC;  /* slate-50 */
--bg-surface:    #FFFFFF;  /* white */
--bg-elevated:   #F1F5F9;  /* slate-100 */
```

### Data Colors
```css
--chart-1: #6366F1;  /* indigo */
--chart-2: #06B6D4;  /* cyan */
--chart-3: #8B5CF6;  /* violet */
--chart-4: #F59E0B;  /* amber */
--chart-5: #10B981;  /* emerald */
```

### Semantic
```css
--success:  #22C55E;  /* green-500 */
--warning:  #F59E0B;  /* amber-500 */
--error:    #EF4444;  /* red-500 */
--info:     #06B6D4;  /* cyan-500 */

/* Status badges */
--status-active:    #22C55E;
--status-pending:   #F59E0B;
--status-inactive:  #64748B;
--status-error:     #EF4444;
```

---

## 📝 Typography

### Font Stack
```css
font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
font-family-mono: 'JetBrains Mono', 'Fira Code', monospace;
```

### Scale (Compact)
| Element | Class | Size | Weight |
|---------|-------|------|--------|
| Page Title | `text-2xl` | 24px | Semibold |
| Section | `text-lg` | 18px | Semibold |
| Card Title | `text-base` | 16px | Medium |
| Body | `text-sm` | 14px | Normal |
| Label | `text-xs` | 12px | Medium |
| Metric | `text-3xl` | 30px | Bold |

---

## 📐 Spacing (Compact)

### Base: 4px

| Token | Value | Use Case |
|-------|-------|----------|
| `space-1` | 4px | Inline gaps |
| `space-2` | 8px | **Default** for most |
| `space-3` | 12px | Card padding |
| `space-4` | 16px | Section padding |
| `space-6` | 24px | Component gaps |
| `space-8` | 32px | Section gaps |

---

## 🔲 Border Radius

| Token | Value | Use Case |
|-------|-------|----------|
| `rounded` | 4px | Buttons, inputs |
| `rounded-md` | 6px | Cards, badges |
| `rounded-lg` | 8px | Modals |
| `rounded-full` | 9999px | Status dots |

---

## 🧩 Component Patterns

### Sidebar Navigation
```html
<nav class="w-64 bg-slate-900 border-r border-slate-800 h-screen">
  <div class="p-4">
    <img src="logo.svg" class="h-8" />
  </div>

  <div class="px-3 space-y-1">
    <!-- Active item -->
    <a href="#" class="
      flex items-center gap-3 px-3 py-2 rounded-md
      bg-indigo-500/10 text-indigo-400
      font-medium text-sm
    ">
      <svg class="w-5 h-5"><!-- icon --></svg>
      Dashboard
    </a>

    <!-- Inactive item -->
    <a href="#" class="
      flex items-center gap-3 px-3 py-2 rounded-md
      text-slate-400 hover:text-slate-200 hover:bg-slate-800
      transition-colors duration-150
      font-medium text-sm
    ">
      <svg class="w-5 h-5"><!-- icon --></svg>
      Analytics
    </a>
  </div>
</nav>
```

### Data Table
```html
<div class="bg-slate-800 rounded-lg overflow-hidden">
  <table class="w-full text-sm">
    <thead>
      <tr class="border-b border-slate-700">
        <th class="px-4 py-3 text-left text-xs font-medium text-slate-400 uppercase tracking-wider">
          Name
        </th>
        <!-- more headers -->
      </tr>
    </thead>
    <tbody class="divide-y divide-slate-700">
      <tr class="hover:bg-slate-700/50 transition-colors">
        <td class="px-4 py-3 text-slate-200">John Doe</td>
        <!-- more cells -->
      </tr>
    </tbody>
  </table>
</div>
```

### Metric Card
```html
<div class="bg-slate-800 rounded-lg p-4">
  <div class="flex items-center justify-between">
    <span class="text-xs font-medium text-slate-400 uppercase tracking-wider">
      Revenue
    </span>
    <span class="text-xs text-emerald-400 flex items-center gap-1">
      <svg class="w-3 h-3"><!-- arrow up --></svg>
      +12.5%
    </span>
  </div>
  <div class="mt-2">
    <span class="text-2xl font-bold text-slate-100">$45,231</span>
    <span class="text-sm text-slate-400 ml-2">this month</span>
  </div>
</div>
```

### Status Badge
```html
<!-- Active -->
<span class="
  inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full
  text-xs font-medium
  bg-emerald-500/10 text-emerald-400
">
  <span class="w-1.5 h-1.5 rounded-full bg-emerald-400"></span>
  Active
</span>

<!-- Pending -->
<span class="
  inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full
  text-xs font-medium
  bg-amber-500/10 text-amber-400
">
  <span class="w-1.5 h-1.5 rounded-full bg-amber-400"></span>
  Pending
</span>
```

### Form Input (Compact)
```html
<div>
  <label class="block text-xs font-medium text-slate-400 mb-1.5">
    Email address
  </label>
  <input
    type="email"
    class="
      w-full px-3 py-2 rounded-md text-sm
      bg-slate-700 border border-slate-600
      text-slate-200 placeholder:text-slate-500
      focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500
      focus:outline-none
      transition-colors duration-150
    "
    placeholder="you@company.com"
  />
</div>
```

### Primary Button (Compact)
```html
<button class="
  bg-indigo-500 hover:bg-indigo-600 active:bg-indigo-700
  text-white font-medium text-sm
  px-4 py-2 rounded-md
  transition-colors duration-150
  focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 focus:ring-offset-slate-900
">
  Save Changes
</button>
```

---

## 📊 Chart Colors

```css
/* Sequential palette for data viz */
--chart-blue:   #6366F1;
--chart-cyan:   #06B6D4;
--chart-violet: #8B5CF6;
--chart-amber:  #F59E0B;
--chart-green:  #10B981;
--chart-pink:   #EC4899;
```

---

## 📱 Responsive

### Breakpoints
```css
sm:  640px
md:  768px
lg:  1024px
xl:  1280px
2xl: 1536px
```

### Layout Patterns
```html
<!-- Sidebar + Main -->
<div class="flex h-screen">
  <aside class="hidden lg:block w-64 flex-shrink-0"><!-- sidebar --></aside>
  <main class="flex-1 overflow-auto"><!-- content --></main>
</div>

<!-- Header on mobile -->
<header class="lg:hidden sticky top-0 z-10 bg-slate-900 border-b border-slate-800">
  <!-- mobile header -->
</header>
```

---

## 🎯 Component Library

**Primary:** [Shadcn UI](https://ui.shadcn.com/) (with dark theme)

**Charts:** [Recharts](https://recharts.org/) or [Tremor](https://tremor.so/)

**Tables:** [TanStack Table](https://tanstack.com/table/)

**Icons:** [Lucide Icons](https://lucide.dev/)

---

## ✅ Checklist

When creating SaaS components:

- [ ] Dark mode first (light mode secondary)
- [ ] Compact spacing (8px default gaps)
- [ ] Small text (14px body, 12px labels)
- [ ] Data-dense layouts
- [ ] Clear visual hierarchy
- [ ] Action-oriented (what can user do?)
- [ ] Loading states
- [ ] Empty states

---

## 💡 Claude Instructions

When I ask for dashboard/SaaS components:

1. **Dark mode default** - Use slate-800/900 backgrounds
2. **Compact** - Smaller text (text-sm), tighter spacing
3. **Data-focused** - Prioritize information density
4. **Professional** - Subtle colors, minimal decoration
5. **Functional** - Every element has purpose
6. **States** - Loading, empty, error states
7. **Accessible** - High contrast in dark mode

---

**Style:** B2B SaaS | **Vibe:** Professional, efficient | **Mode:** Dark-first
