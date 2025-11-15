# Modern Card Component Prompt

Use this template to create beautiful, modern card components with Claude Code.

---

## 🎯 Copy-Paste Template

```
Create a modern card component with these specifications:

CONTAINER:
- Max width: max-w-sm (384px)
- Background: bg-white
- Border: border border-gray-200 (optional: use OR shadow, not both)
- OR Shadow: shadow-lg
- Rounded corners: rounded-xl (12px)
- Overflow: overflow-hidden
- Transition: transition-all duration-300 ease-out

HOVER EFFECTS:
- Transform: hover:-translate-y-1 (lift up 4px)
- Shadow: hover:shadow-2xl
- OR Border: hover:border-gray-300
- Cursor: cursor-pointer (if clickable)

LAYOUT:
- Display: flex flex-col
- Padding: p-6 (or p-0 if image extends to edges)

IMAGE (if included):
- Aspect ratio: aspect-video (16:9) OR aspect-square (1:1)
- Object fit: object-cover
- Width: w-full
- Position: rounded-t-xl (top corners only if full-bleed)
- Hover: hover:scale-105 (subtle zoom)
- Transition: transition-transform duration-300

CONTENT AREA:
- Padding: p-6 (if image is full-bleed)
- Gap: space-y-4 (16px between elements)

TITLE/HEADING:
- Size: text-xl OR text-2xl
- Weight: font-semibold OR font-bold
- Color: text-gray-900
- Line clamp: line-clamp-2 (max 2 lines)

DESCRIPTION/BODY:
- Size: text-sm OR text-base
- Color: text-gray-600
- Leading: leading-relaxed
- Line clamp: line-clamp-3 (max 3 lines)

FOOTER/ACTION (optional):
- Border top: border-t border-gray-200
- Padding: pt-4 mt-4
- Button or link placement

RESPONSIVE:
- Mobile: w-full
- Tablet: max-w-sm
- Grid layout: grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6

Example content: [Your actual content here]
```

---

## 🎨 Common Card Variants

### 1. Product Card

```
Create a product card:

STRUCTURE:
- max-w-sm bg-white rounded-xl shadow-lg overflow-hidden
- Hover: -translate-y-1 shadow-2xl
- transition-all duration-300

IMAGE:
- aspect-square w-full object-cover
- Product image
- Hover: scale-105
- transition-transform duration-300

CONTENT (p-6):
- Category badge:
  - text-xs font-semibold text-blue-600 bg-blue-50
  - px-3 py-1 rounded-full
  - Uppercase tracking-wide

- Product name:
  - text-xl font-bold text-gray-900
  - mt-2 line-clamp-2

- Description:
  - text-sm text-gray-600 mt-2
  - leading-relaxed line-clamp-2

- Price section (flex justify-between items-center mt-4):
  - Original price: text-sm text-gray-400 line-through
  - Sale price: text-2xl font-bold text-blue-600

- Add to cart button:
  - w-full bg-blue-600 hover:bg-blue-700
  - text-white font-semibold
  - py-3 rounded-lg
  - transition-colors duration-200
  - mt-4

GRID:
- grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6
```

### 2. Blog Post Card

```
Create a blog post card:

STRUCTURE:
- max-w-md bg-white rounded-xl shadow-md overflow-hidden
- Hover: shadow-xl
- transition-shadow duration-300

IMAGE:
- aspect-video w-full object-cover
- Featured image
- Rounded-t-xl

CONTENT (p-6):
- Meta info (flex items-center gap-2 text-sm text-gray-500):
  - Author avatar: w-8 h-8 rounded-full
  - Author name
  - Separator: "•"
  - Date

- Title:
  - text-2xl font-bold text-gray-900 mt-3
  - line-clamp-2
  - hover:text-blue-600 transition-colors

- Excerpt:
  - text-gray-600 mt-2 leading-relaxed
  - line-clamp-3

- Tags (flex gap-2 mt-4):
  - Each tag: text-xs bg-gray-100 text-gray-700
  - px-3 py-1 rounded-full

- Read more link:
  - text-blue-600 hover:text-blue-700 font-semibold
  - flex items-center gap-1
  - Arrow icon
  - mt-4
```

### 3. Profile/Team Card

```
Create a team member card:

STRUCTURE:
- max-w-xs bg-white rounded-2xl shadow-lg
- Hover: -translate-y-2 shadow-2xl
- transition-all duration-300
- p-8 text-center

IMAGE:
- Avatar: w-32 h-32 mx-auto
- rounded-full object-cover
- border-4 border-blue-100
- Shadow: shadow-xl

CONTENT:
- Name:
  - text-2xl font-bold text-gray-900 mt-4

- Role:
  - text-sm text-blue-600 font-semibold
  - uppercase tracking-wide

- Bio:
  - text-gray-600 text-sm mt-3
  - leading-relaxed line-clamp-3

- Social links (flex gap-3 justify-center mt-6):
  - Each link: w-10 h-10 rounded-full
  - bg-gray-100 hover:bg-blue-100
  - flex items-center justify-center
  - Icon: text-gray-600 hover:text-blue-600
  - transition-all duration-200

- Contact button:
  - border-2 border-blue-600 text-blue-600
  - hover:bg-blue-600 hover:text-white
  - w-full py-2 rounded-lg
  - font-semibold mt-4
  - transition-all duration-200
```

### 4. Stats/Dashboard Card

```
Create a dashboard stats card:

STRUCTURE:
- bg-white rounded-xl shadow-md
- p-6
- border-l-4 border-blue-600 (accent border)
- Hover: shadow-lg
- transition-shadow duration-200

LAYOUT:
- flex justify-between items-start

LEFT CONTENT:
- Label: text-sm font-semibold text-gray-600 uppercase tracking-wide
- Value: text-4xl font-bold text-gray-900 mt-2
- Change indicator:
  - flex items-center gap-1 mt-2
  - text-sm font-semibold
  - Green if positive: text-green-600
  - Red if negative: text-red-600
  - Arrow icon

RIGHT CONTENT:
- Icon container:
  - w-12 h-12 rounded-lg
  - bg-blue-100 flex items-center justify-center
  - Icon: text-blue-600 w-6 h-6
```

### 5. Pricing Card

```
Create a pricing card:

STRUCTURE:
- max-w-sm bg-white rounded-2xl shadow-xl
- border-2 border-gray-200
- overflow-hidden
- Hover: -translate-y-2 border-blue-600 shadow-2xl
- transition-all duration-300

POPULAR BADGE (if featured):
- bg-blue-600 text-white text-xs font-bold
- px-4 py-1 text-center
- "MOST POPULAR"

CONTENT (p-8):
- Plan name:
  - text-2xl font-bold text-gray-900

- Price:
  - text-5xl font-extrabold text-gray-900 mt-4
  - Dollar sign: text-2xl text-gray-600
  - Period: text-gray-600 text-lg "/month"

- Description:
  - text-gray-600 mt-2

- Features list (mt-8 space-y-3):
  - Each feature: flex items-start gap-3
  - Check icon: w-5 h-5 text-green-500 flex-shrink-0
  - Text: text-gray-700

- CTA button:
  - w-full bg-blue-600 hover:bg-blue-700
  - text-white font-bold py-4
  - rounded-xl mt-8
  - shadow-lg hover:shadow-xl
  - transition-all duration-200

POPULAR VARIANT:
- border-blue-600
- scale-105 (slightly larger)
```

---

## ✨ Modern Card Styles

### Glassmorphism Card

```
Create a glassmorphism card:

STRUCTURE:
- backdrop-blur-lg
- bg-white/10 (10% white opacity)
- border border-white/20
- rounded-2xl
- shadow-xl
- p-8

USAGE:
- Place over image/gradient backgrounds
- Modern, translucent effect

TEXT:
- Use white or very light text
- text-white / text-gray-100

HOVER:
- bg-white/20
- border-white/30
```

### Gradient Card

```
Create a gradient card:

BACKGROUND:
- bg-gradient-to-br from-blue-600 to-purple-700
- OR bg-gradient-to-r from-pink-500 via-purple-500 to-indigo-500
- rounded-2xl shadow-2xl
- p-8

TEXT:
- All text white: text-white
- Title: font-bold text-3xl
- Body: text-white/90

BUTTON:
- bg-white text-blue-600 hover:bg-gray-100
- Inverse colors from background
```

### Bento Card (Variable Sizes)

```
Create a bento grid with variable card sizes:

GRID:
- grid grid-cols-4 gap-4
- auto-rows-[200px]

CARDS:
- Small card: col-span-1 row-span-1
- Medium card: col-span-2 row-span-1
- Large card: col-span-2 row-span-2
- Wide card: col-span-3 row-span-1

CARD STYLE:
- bg-white rounded-xl shadow-lg p-6
- Hover: shadow-2xl
- Each card different size creates dynamic layout
```

### Neumorphic Card

```
Create a neumorphic card:

BACKGROUND:
- bg-gray-100 (same as page background)
- rounded-2xl
- p-8

SHADOW:
- shadow-[8px_8px_16px_#d1d9e6,-8px_-8px_16px_#ffffff]
- Creates soft, embossed effect

HOVER:
- shadow-[inset_8px_8px_16px_#d1d9e6,inset_-8px_-8px_16px_#ffffff]
- Pressed effect

TEXT:
- text-gray-800 (high contrast on gray-100)
```

---

## 📱 Responsive Card Grids

### Mobile-First Grid

```
Container:
- grid gap-6
- grid-cols-1 (mobile: 1 column)
- md:grid-cols-2 (tablet: 2 columns)
- lg:grid-cols-3 (desktop: 3 columns)
- xl:grid-cols-4 (large desktop: 4 columns)
- p-4 md:p-6 lg:p-8

Cards:
- Same width within grid
- Consistent height or auto
```

### Masonry Layout (Pinterest-style)

```
Container:
- columns-1 md:columns-2 lg:columns-3
- gap-6
- p-4

Cards:
- break-inside-avoid (don't split across columns)
- mb-6 (margin bottom for spacing)
- Variable height based on content
```

---

## 🔧 Interactive Cards

### Clickable Card

```
Add to card container:
- cursor-pointer
- group (for group-hover effects)
- onClick handler

Title:
- group-hover:text-blue-600
- transition-colors

Entire card is link:
- Wrap in <a> tag
- OR use onClick event
```

### Expandable Card

```
States:
- Collapsed: Fixed height (h-64), overflow-hidden
- Expanded: Auto height (h-auto)

Toggle button:
- Absolute bottom-4 right-4
- "Show more" / "Show less"
- Icon rotates: transform rotate-180

Transition:
- transition-all duration-300 ease-out
```

### Card with Actions

```
Action buttons (appear on hover):
- Absolute top-4 right-4
- opacity-0 group-hover:opacity-100
- transition-opacity duration-200

Actions:
- Edit icon button
- Delete icon button
- Share icon button
- Each: w-8 h-8 rounded-full bg-white shadow-lg
```

---

## ✅ Card Best Practices

### DO:
- ✅ Use consistent padding (p-6 or p-8)
- ✅ Include hover effects for interactive cards
- ✅ Maintain consistent card heights in grid
- ✅ Use appropriate shadows (shadow-md to shadow-xl)
- ✅ Add transitions (duration-200 to duration-300)
- ✅ Limit text with line-clamp
- ✅ Use proper image aspect ratios

### DON'T:
- ❌ Mix shadows and borders (choose one)
- ❌ Use too many colors per card
- ❌ Forget mobile responsiveness
- ❌ Make non-clickable cards look clickable
- ❌ Use different corner radius per card
- ❌ Overcrowd with too much content
- ❌ Forget hover states on interactive cards

---

## 🚀 Quick Start: Complete Example

```
Create a modern blog post card with these specifications:

CONTAINER:
- max-w-md
- bg-white
- rounded-xl
- shadow-lg hover:shadow-2xl
- overflow-hidden
- transition-all duration-300
- group (for group-hover effects)

IMAGE:
- aspect-video
- w-full
- object-cover
- Placeholder: tech blog featured image
- Hover: scale-105
- transition-transform duration-300

CONTENT (p-6):
- Category badge:
  - inline-block text-xs font-semibold
  - bg-blue-100 text-blue-600
  - px-3 py-1 rounded-full
  - uppercase tracking-wide

- Title:
  - text-2xl font-bold text-gray-900 mt-3
  - line-clamp-2
  - group-hover:text-blue-600
  - transition-colors

- Meta (flex items-center gap-4 text-sm text-gray-500 mt-2):
  - Author: "Sarah Johnson"
  - Separator: "•"
  - Date: "Dec 15, 2024"
  - Separator: "•"
  - Read time: "5 min read"

- Excerpt:
  - text-gray-600 mt-3 leading-relaxed
  - line-clamp-3
  - "Learn how to build modern web applications with the latest technologies..."

FOOTER (flex justify-between items-center pt-4 mt-4 border-t border-gray-100):
- Avatar group (flex -space-x-2):
  - 3 small avatars: w-8 h-8 rounded-full border-2 border-white

- Read more link:
  - text-blue-600 font-semibold
  - hover:text-blue-700
  - flex items-center gap-1
  - Arrow icon →
  - transition-colors

RESPONSIVE:
- Mobile: w-full
- Tablet+: max-w-md
- Grid: grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6
```

---

**Next Steps:**
- Try [Modern Form](./modern-form.md)
- See [Modern Button](./modern-button.md)
- Check [Examples](../examples/)
