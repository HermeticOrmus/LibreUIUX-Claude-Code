# Project Design System & Guidelines

This file contains the design system and development guidelines for this project. Claude Code will reference this file when generating UI components.

---

## 🎨 Color Palette

### Brand Colors
```
Primary:      #3B82F6  (blue-600)   - Main brand color, CTAs, links
Primary Dark: #2563EB  (blue-700)   - Hover states, emphasis
Primary Light:#60A5FA  (blue-400)   - Accents, highlights
```

### Neutral Colors
```
Background:   #FFFFFF  (white)      - Page backgrounds
Surface:      #F9FAFB  (gray-50)    - Card backgrounds, sections
Border:       #E5E7EB  (gray-200)   - Borders, dividers
Text Primary: #111827  (gray-900)   - Headings, primary text
Text Secondary:#6B7280 (gray-500)   - Secondary text, labels
```

### Semantic Colors
```
Success:      #10B981  (green-500)  - Success states
Error:        #EF4444  (red-500)    - Errors, destructive actions
Warning:      #F59E0B  (amber-500)  - Warnings, caution
Info:         #3B82F6  (blue-500)   - Information, tips
```

---

## 📝 Typography

### Font Families
```
Primary: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif
Code:    'JetBrains Mono', 'Fira Code', monospace
```

### Type Scale
```
H1:      text-4xl (36px)  font-bold     - Page titles
H2:      text-3xl (30px)  font-bold     - Section titles
H3:      text-2xl (24px)  font-semibold - Subsection titles
H4:      text-xl  (20px)  font-semibold - Card titles
Body:    text-base (16px) font-normal   - Default text
Small:   text-sm  (14px)  font-normal   - Secondary text
Tiny:    text-xs  (12px)  font-normal   - Captions, labels
```

### Line Heights
```
Headings:    leading-tight   (1.25)
Body:        leading-normal  (1.5)
Relaxed:     leading-relaxed (1.625)
```

---

## 📐 Spacing System

### Base Unit: 4px

```
xs:   4px   (space-1, p-1, m-1, gap-1)    - Minimal spacing
sm:   8px   (space-2, p-2, m-2, gap-2)    - Tight spacing
md:   16px  (space-4, p-4, m-4, gap-4)    - Default spacing
lg:   24px  (space-6, p-6, m-6, gap-6)    - Comfortable spacing
xl:   32px  (space-8, p-8, m-8, gap-8)    - Large spacing
2xl:  48px  (space-12, p-12, m-12, gap-12) - Section spacing
3xl:  64px  (space-16, p-16, m-16, gap-16) - Hero spacing
```

### Common Patterns
```
Card Padding:      p-6 (24px)
Button Padding:    px-6 py-3 (24px x 12px)
Form Field:        px-4 py-3 (16px x 12px)
Section Margin:    my-16 (64px)
Component Gap:     gap-6 (24px)
```

---

## 🔲 Border Radius

```
sm:   2px   (rounded-sm)   - Subtle rounding
md:   6px   (rounded-md)   - Slight rounding
lg:   8px   (rounded-lg)   - Standard (default for most)
xl:   12px  (rounded-xl)   - Cards, containers
2xl:  16px  (rounded-2xl)  - Modals, prominent cards
full: 9999px (rounded-full) - Pills, avatars, circular
```

### Component Standards
```
Buttons:      rounded-lg
Input Fields: rounded-lg
Cards:        rounded-xl
Modals:       rounded-2xl
Badges:       rounded-full
Avatars:      rounded-full
```

---

## 🎭 Shadows

```
sm:   shadow-sm   - Subtle shadow
md:   shadow-md   - Default cards
lg:   shadow-lg   - Elevated cards
xl:   shadow-xl   - Modals, prominent elements
2xl:  shadow-2xl  - Dramatic depth
```

### Usage
```
Cards at rest:     shadow-md
Cards on hover:    shadow-lg
Buttons:           shadow-sm
Modals/Dropdowns:  shadow-xl
```

---

## ⚡ Transitions & Animations

### Default Timing
```
Fast:     duration-150  - Instant feedback
Standard: duration-200  - Default (use this most)
Smooth:   duration-300  - Smooth transitions
Slow:     duration-500  - Dramatic effects
```

### Easing
```
Default: ease-out (preferred for UI)
Smooth:  ease-in-out
```

### Common Patterns
```
Hover Effects:
- Colors:     transition-colors duration-200
- Transform:  transition-transform duration-200
- Shadow:     transition-shadow duration-200
- All:        transition-all duration-200 ease-out
```

---

## 🧩 Component Standards

### Buttons

**Primary Button:**
```
bg-blue-600 hover:bg-blue-700 active:bg-blue-800
text-white font-semibold
px-6 py-3 rounded-lg
shadow-md hover:shadow-lg
transition-all duration-200
focus:ring-4 focus:ring-blue-100 focus:outline-none
active:scale-98
```

**Secondary Button:**
```
bg-white hover:bg-gray-50
border-2 border-gray-300 hover:border-gray-400
text-gray-700 font-semibold
px-6 py-3 rounded-lg
transition-all duration-200
focus:ring-4 focus:ring-gray-100 focus:outline-none
```

### Cards

**Standard Card:**
```
bg-white rounded-xl shadow-md hover:shadow-lg
p-6
transition-shadow duration-300
```

**Interactive Card:**
```
bg-white rounded-xl shadow-md hover:shadow-xl
p-6
cursor-pointer
hover:-translate-y-1
transition-all duration-300
```

### Forms

**Input Field:**
```
w-full px-4 py-3
border-2 border-gray-300
rounded-lg
focus:border-blue-500 focus:ring-4 focus:ring-blue-100 focus:outline-none
transition-all duration-200
```

**Label:**
```
block text-sm font-semibold text-gray-700 mb-2
```

**Error State:**
```
border-red-500 focus:ring-red-100
text-red-600 text-sm (error message)
```

---

## 📱 Responsive Breakpoints

```
sm:   640px+   (Large phone)
md:   768px+   (Tablet)
lg:   1024px+  (Laptop)
xl:   1280px+  (Desktop)
2xl:  1536px+  (Large desktop)
```

### Mobile-First Approach
Always specify base (mobile) styles, then enhance:
```
grid-cols-1 md:grid-cols-2 lg:grid-cols-3
p-4 md:p-6 lg:p-8
text-2xl md:text-3xl lg:text-4xl
```

---

## 📦 Component Library

We use **Shadcn UI** components:

- Website: https://ui.shadcn.com/
- Stack: React + Tailwind CSS + Radix UI
- Installation: Components copied into /components/ui/

### When creating components:
1. Check if Shadcn has this component
2. If yes, use Shadcn's pattern
3. If no, follow our design system above
4. Use Radix UI primitives for accessibility when needed

---

## ✅ Development Guidelines

### Code Style
- Use TypeScript for type safety
- Functional components with hooks
- Tailwind for styling (avoid custom CSS)
- Keep components small and focused

### Accessibility
- Always use semantic HTML
- Include ARIA labels where needed
- Ensure 4.5:1 contrast ratio minimum
- Keyboard navigation must work
- Focus indicators must be visible

### Performance
- Lazy load images
- Use next/image for optimization
- Keep bundle size small
- Avoid excessive animations

### File Structure
```
/components
  /ui          - Shadcn components
  /layout      - Layout components
  /features    - Feature-specific components
```

---

## 🎯 Common Patterns

### Hero Section
```
Container:  max-w-6xl mx-auto px-4 py-20
Heading:    text-5xl md:text-6xl font-bold leading-tight
Subheading: text-xl md:text-2xl text-gray-600 mt-4
CTA:        Primary + Secondary buttons, mt-8 gap-4
```

### Feature Grid
```
Container:  grid grid-cols-1 md:grid-cols-3 gap-6
Cards:      Standard card pattern (bg-white rounded-xl p-6)
Icons:      w-12 h-12 rounded-lg bg-blue-100 text-blue-600
```

### Form Layout
```
Container:  max-w-md mx-auto bg-white rounded-2xl shadow-xl p-8
Fields:     space-y-6 (24px gap)
Submit:     w-full primary button
```

---

## 🚫 Don'ts

- ❌ Don't use random colors (use the palette)
- ❌ Don't use custom font sizes outside the scale
- ❌ Don't mix border and shadow on same element
- ❌ Don't use transitions longer than 500ms
- ❌ Don't forget mobile responsive styles
- ❌ Don't ignore accessibility requirements
- ❌ Don't create components that already exist in Shadcn

---

## 💡 Notes for Claude

When I ask you to create UI components:

1. **Reference this file** for all design decisions
2. **Use Shadcn UI** components when available
3. **Follow mobile-first** approach
4. **Include all states** (hover, focus, active, disabled)
5. **Add accessibility** attributes (ARIA labels, semantic HTML)
6. **Use the exact color/spacing values** from this file
7. **Include transitions** on interactive elements
8. **Provide usage examples** with your component
9. **Make it responsive** across all breakpoints
10. **Write clean, readable code** with comments where helpful

---

## 📝 Changelog

### v1.0.0 (YYYY-MM-DD)
- Initial design system
- Color palette defined
- Typography scale established
- Component standards set

---

**This design system ensures consistency across our entire application.**

Last updated: [Current Date]
