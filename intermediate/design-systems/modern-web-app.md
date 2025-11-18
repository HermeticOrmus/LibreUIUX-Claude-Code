# Modern Web App Design System

A comprehensive design system for modern web applications. Copy this into your `CLAUDE.md` or use as reference.

---

## 🎨 Color Palette

### Primary Colors
```
Primary:      #3B82F6  (blue-600)   - Main brand color, CTAs
Primary Dark: #2563EB  (blue-700)   - Hover states
Primary Light:#60A5FA  (blue-400)   - Accents, highlights
Primary Pale: #DBEAFE  (blue-100)   - Backgrounds, badges
```

### Neutral Colors
```
White:        #FFFFFF               - Backgrounds, cards
Gray 50:      #F9FAFB               - Subtle backgrounds
Gray 100:     #F3F4F6               - Borders, dividers (light)
Gray 200:     #E5E7EB               - Borders
Gray 300:     #D1D5DB               - Borders (prominent)
Gray 400:     #9CA3AF               - Placeholder text
Gray 500:     #6B7280               - Secondary text
Gray 600:     #4B5563               - Body text
Gray 700:     #374151               - Headings (secondary)
Gray 800:     #1F2937               - Headings
Gray 900:     #111827               - Primary text, headings
Black:        #000000               - Reserved for emphasis
```

### Semantic Colors
```
Success:      #10B981  (green-500)  - Success states, positive
Success Dark: #059669  (green-600)  - Success hover
Success Light:#D1FAE5  (green-100)  - Success backgrounds

Error:        #EF4444  (red-500)    - Errors, destructive
Error Dark:   #DC2626  (red-600)    - Error hover
Error Light:  #FEE2E2  (red-100)    - Error backgrounds

Warning:      #F59E0B  (amber-500)  - Warnings
Warning Dark: #D97706  (amber-600)  - Warning hover
Warning Light:#FEF3C7  (amber-100)  - Warning backgrounds

Info:         #3B82F6  (blue-500)   - Information
Info Light:   #DBEAFE  (blue-100)   - Info backgrounds
```

---

## 📝 Typography

### Font Families
```
Primary:   'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif
Monospace: 'JetBrains Mono', 'Fira Code', 'Courier New', monospace
```

### Type Scale
```
text-xs:    12px  |  leading-4     (1rem)      - Captions, labels
text-sm:    14px  |  leading-5     (1.25rem)   - Small text, secondary
text-base:  16px  |  leading-6     (1.5rem)    - Body text (default)
text-lg:    18px  |  leading-7     (1.75rem)   - Emphasized body
text-xl:    20px  |  leading-7     (1.75rem)   - Small headings, card titles
text-2xl:   24px  |  leading-8     (2rem)      - H3, section titles
text-3xl:   30px  |  leading-9     (2.25rem)   - H2, page titles
text-4xl:   36px  |  leading-10    (2.5rem)    - H1, hero headings
text-5xl:   48px  |  leading-tight (1.25)      - Large hero text
text-6xl:   60px  |  leading-tight (1.25)      - Display text
text-7xl:   72px  |  leading-tight (1.25)      - Extra large display
```

### Font Weights
```
font-light:      300  - Rare, decorative use
font-normal:     400  - Body text, default
font-medium:     500  - Slightly emphasized text
font-semibold:   600  - Subheadings, important text
font-bold:       700  - Headings, strong emphasis
font-extrabold:  800  - Hero headings, major emphasis
```

### Text Styles
```
Headings:
- H1: text-4xl font-bold text-gray-900 leading-tight
- H2: text-3xl font-bold text-gray-900 leading-tight
- H3: text-2xl font-semibold text-gray-900 leading-snug
- H4: text-xl font-semibold text-gray-800 leading-snug
- H5: text-lg font-semibold text-gray-800 leading-normal

Body:
- Large:   text-lg text-gray-600 leading-relaxed
- Default: text-base text-gray-600 leading-normal
- Small:   text-sm text-gray-500 leading-normal

Labels:
- Default: text-sm font-semibold text-gray-700
- Small:   text-xs font-semibold text-gray-600 uppercase tracking-wide

Links:
- Default: text-blue-600 hover:text-blue-700 underline-offset-4 hover:underline
```

---

## 📐 Spacing System

### Spacing Scale (4px base unit)
```
0:    0px      - No spacing
1:    4px      - Minimal spacing
2:    8px      - Tight spacing
3:    12px     - Small spacing
4:    16px     - Default spacing
5:    20px     - Medium spacing
6:    24px     - Large spacing
8:    32px     - Extra large spacing
10:   40px     - Section spacing (small)
12:   48px     - Section spacing (medium)
16:   64px     - Section spacing (large)
20:   80px     - Section spacing (extra large)
24:   96px     - Hero spacing
```

### Common Patterns
```
Card Padding:         p-6 (24px)
Modal Padding:        p-8 (32px)
Button Padding:       px-6 py-3 (horizontal: 24px, vertical: 12px)
Form Field Padding:   px-4 py-3 (horizontal: 16px, vertical: 12px)
Section Spacing:      my-16 (64px vertical margin)
Grid Gap:            gap-6 (24px)
Component Spacing:   space-y-4 (16px between stacked elements)
```

---

## 🔲 Border Radius

### Radius Scale
```
rounded-none:  0px      - Sharp corners
rounded-sm:    2px      - Subtle rounding
rounded:       4px      - Minimal rounding
rounded-md:    6px      - Slight rounding
rounded-lg:    8px      - Standard rounding (default for most)
rounded-xl:    12px     - Cards, larger elements
rounded-2xl:   16px     - Prominent cards, modals
rounded-3xl:   24px     - Extra round
rounded-full:  9999px   - Circular (buttons, avatars)
```

### Component Standards
```
Buttons:       rounded-lg (8px)
Input Fields:  rounded-lg (8px)
Cards:         rounded-xl (12px)
Modals:        rounded-2xl (16px)
Badges:        rounded-full
Avatars:       rounded-full
Images:        rounded-lg or rounded-xl
```

---

## 🎭 Shadows

### Shadow Scale
```
shadow-sm:   0 1px 2px 0 rgb(0 0 0 / 0.05)                    - Subtle
shadow:      0 1px 3px 0 rgb(0 0 0 / 0.1)                     - Light
shadow-md:   0 4px 6px -1px rgb(0 0 0 / 0.1)                  - Medium (default cards)
shadow-lg:   0 10px 15px -3px rgb(0 0 0 / 0.1)               - Large (elevated cards)
shadow-xl:   0 20px 25px -5px rgb(0 0 0 / 0.1)               - Extra large (modals)
shadow-2xl:  0 25px 50px -12px rgb(0 0 0 / 0.25)             - Dramatic (popups)
shadow-inner: inset 0 2px 4px 0 rgb(0 0 0 / 0.05)            - Inset
shadow-none: none                                             - No shadow
```

### Usage Guidelines
```
Cards at rest:        shadow-md
Cards on hover:       shadow-lg
Floating elements:    shadow-xl
Modals/Dialogs:       shadow-2xl
Buttons at rest:      shadow-sm
Buttons on hover:     shadow-md
Dropdowns:           shadow-lg
```

---

## ⚡ Transitions & Animations

### Transition Durations
```
duration-75:   75ms    - Instant feedback
duration-100:  100ms   - Very fast
duration-150:  150ms   - Fast
duration-200:  200ms   - Standard (default)
duration-300:  300ms   - Smooth
duration-500:  500ms   - Slow
duration-700:  700ms   - Very slow
```

### Timing Functions
```
ease-linear:    Constant speed
ease-in:        Slow start
ease-out:       Slow end (preferred for UI)
ease-in-out:    Slow start and end
```

### Common Transitions
```
Color changes:        transition-colors duration-200
Transform/scale:      transition-transform duration-200
All properties:       transition-all duration-200 ease-out
Shadow changes:       transition-shadow duration-200
Background:           transition-background duration-200
```

### Standard Hover Effects
```
Buttons:
- scale-105 hover:shadow-lg transition-all duration-200

Cards:
- hover:-translate-y-1 hover:shadow-xl transition-all duration-300

Links:
- hover:text-blue-700 transition-colors duration-200

Images:
- hover:scale-105 transition-transform duration-300
```

---

## 🧩 Component Standards

### Buttons

**Primary Button:**
```
bg-blue-600 hover:bg-blue-700 active:bg-blue-800 active:scale-98
text-white font-semibold
px-6 py-3
rounded-lg
shadow-md hover:shadow-lg
transition-all duration-200 ease-out
focus:ring-4 focus:ring-blue-100 focus:outline-none
```

**Secondary Button:**
```
bg-white hover:bg-gray-50
border-2 border-gray-300 hover:border-gray-400
text-gray-700 font-semibold
px-6 py-3
rounded-lg
transition-all duration-200
focus:ring-4 focus:ring-gray-100 focus:outline-none
```

**Danger Button:**
```
bg-red-600 hover:bg-red-700 active:bg-red-800 active:scale-98
text-white font-semibold
px-6 py-3
rounded-lg
shadow-md hover:shadow-lg
transition-all duration-200
focus:ring-4 focus:ring-red-100 focus:outline-none
```

### Cards

**Standard Card:**
```
Container:
- bg-white rounded-xl shadow-md hover:shadow-lg
- transition-shadow duration-300
- overflow-hidden

Padding:
- p-6

Layout:
- flex flex-col gap-4
```

**Interactive Card:**
```
Add to standard:
- cursor-pointer
- hover:-translate-y-1 hover:shadow-xl
- transition-all duration-300
- group (for group-hover effects)
```

### Forms

**Input Field:**
```
w-full
px-4 py-3
border-2 border-gray-300
rounded-lg
text-base text-gray-900
focus:border-blue-500 focus:ring-4 focus:ring-blue-100 focus:outline-none
transition-all duration-200
placeholder:text-gray-400

Error state:
- border-red-500 focus:ring-red-100

Success state:
- border-green-500 focus:ring-green-100

Disabled:
- bg-gray-100 cursor-not-allowed opacity-60
```

**Label:**
```
block text-sm font-semibold text-gray-700 mb-2
```

### Navigation

**Desktop Nav:**
```
Container:
- fixed top-0 left-0 right-0 z-50
- bg-white/90 backdrop-blur-lg
- border-b border-gray-200
- shadow-md

Content:
- max-w-7xl mx-auto px-6
- flex justify-between items-center h-20

Links:
- text-gray-700 hover:text-blue-600
- font-medium text-sm
- transition-colors duration-200
- Active: text-blue-600 font-semibold
```

---

## 📱 Responsive Breakpoints

```
sm:   640px+    - Large phone (landscape)
md:   768px+    - Tablet
lg:   1024px+   - Laptop
xl:   1280px+   - Desktop
2xl:  1536px+   - Large desktop
```

### Mobile-First Approach
Always design for mobile first, then enhance:
```
grid-cols-1 md:grid-cols-2 lg:grid-cols-3

Translation:
- Mobile: 1 column
- Tablet: 2 columns
- Desktop: 3 columns
```

---

## 🎯 Usage Examples

### Request Example 1: Hero Section
```
Following the Modern Web App design system, create a hero section with:
- H1 heading (text-5xl font-bold text-gray-900)
- Subheading (text-xl text-gray-600)
- Two CTAs: primary button + secondary button
- Background: subtle gradient (bg-gradient-to-br from-blue-50 to-white)
- Spacing: py-20 (80px vertical padding)
- Responsive: text-4xl on mobile, text-5xl on desktop
```

### Request Example 2: Feature Cards
```
Following the Modern Web App design system, create a 3-column feature card grid:
- Each card: standard card style (bg-white rounded-xl shadow-md p-6)
- Icon: w-12 h-12 rounded-lg bg-blue-100 text-blue-600
- Title: text-xl font-semibold text-gray-900
- Description: text-gray-600
- Grid: grid-cols-1 md:grid-cols-3 gap-6
- Hover: card lifts (hover:-translate-y-1 hover:shadow-xl)
```

### Request Example 3: Contact Form
```
Following the Modern Web App design system, create a contact form with:
- Container: max-w-md mx-auto bg-white rounded-2xl shadow-xl p-8
- Input fields: standard input style
- Submit button: primary button style, full width
- Floating labels
- Validation states (error/success)
```

---

## ✅ Quick Reference

When making requests to Claude, reference this design system:

```
"Following the Modern Web App design system, create [component]"
```

Claude will automatically apply:
- ✅ Color palette
- ✅ Typography scale
- ✅ Spacing system
- ✅ Border radius standards
- ✅ Shadow conventions
- ✅ Transition timing
- ✅ Component patterns

---

## 📝 Customization

To adapt this design system:

1. **Change primary color**:
   - Find-replace `blue-600` with your color
   - Update all blue variants (400, 500, 700, etc.)

2. **Adjust spacing**:
   - Modify spacing scale to match your preference
   - Keep consistent ratios (2x, 3x, 4x, etc.)

3. **Typography**:
   - Change font family
   - Adjust type scale if needed

4. **Save to CLAUDE.md**:
   - Copy this to your project's CLAUDE.md
   - Claude will reference it automatically

---

**This design system ensures consistency across all your components!** 🎨
