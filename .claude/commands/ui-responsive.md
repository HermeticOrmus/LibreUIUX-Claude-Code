---
description: Check and fix responsive design issues across all breakpoints
---

# Responsive Design Checker

Analyze and fix responsive design issues to ensure your UI works perfectly on all devices.

## Usage

```
/ui-responsive
```

Run this command while viewing a component or page to check its responsive behavior.

---

## Instructions for Claude

When the user runs `/ui-responsive`, analyze the current component/page for responsive design issues and provide specific fixes.

### 1. Breakpoint Analysis

Check behavior at standard breakpoints:

```
Mobile:        320px - 639px   (sm:)
Tablet:        640px - 1023px  (md:)
Laptop:        1024px - 1279px (lg:)
Desktop:       1280px - 1535px (xl:)
Large Desktop: 1536px+         (2xl:)
```

### 2. Responsive Checklist

#### A. Layout Responsiveness

**Check for:**
```
Issues to detect:

❌ Fixed widths without responsive variants:
   - w-[600px] (breaks on mobile)
   - Fix: max-w-2xl mx-auto (flexible with max)

❌ No grid/flex breakpoints:
   - grid-cols-4 (too many on mobile)
   - Fix: grid-cols-1 md:grid-cols-2 lg:grid-cols-4

❌ Horizontal overflow:
   - Container wider than viewport
   - Fix: Add w-full or max-w-full

❌ Missing mobile-first approach:
   - Desktop styles without mobile base
   - Fix: Start with mobile, add md:, lg: variants
```

**Report:**
```
## Layout Analysis

### Mobile (320px - 639px)
❌ Issues found:
   - Grid has 3 columns, should be 1
   - Container has fixed width (800px)
   - Content overflows horizontally

Fixes:
   Line 15: grid-cols-3 → grid-cols-1 md:grid-cols-2 lg:grid-cols-3
   Line 8:  w-[800px] → max-w-4xl mx-auto w-full px-4

### Tablet (640px - 1023px)
✅ Looks good
   - 2 column grid works well
   - Spacing appropriate

### Desktop (1024px+)
⚠️  Minor issue:
   - Max width too large, content spreads too much
   - Change: max-w-7xl → max-w-6xl
```

#### B. Typography Responsiveness

**Check for:**
```
Issues to detect:

❌ Text too large on mobile:
   - text-6xl (72px on 320px screen = huge)
   - Fix: text-4xl md:text-5xl lg:text-6xl

❌ Text too small on mobile:
   - text-xs for body text (hard to read)
   - Fix: text-sm md:text-xs (larger on mobile)

❌ Fixed line heights:
   - leading-[100px] breaks on smaller text
   - Fix: leading-tight, leading-normal (relative)

❌ No responsive scaling:
   - Same size across all devices
   - Fix: Add breakpoint variants
```

**Report:**
```
## Typography Analysis

### Heading Sizes
❌ Issues:
   - H1: text-6xl on all screens (too big on mobile)
     Fix: text-4xl md:text-5xl lg:text-6xl

   - H2: text-4xl on all screens
     Fix: text-3xl md:text-4xl

✅ Good:
   - Body text scales appropriately

### Line Heights
⚠️  Could improve:
   - Headings: leading-tight works, but consider leading-none on large screens
   - Add: leading-tight lg:leading-none
```

#### C. Spacing Responsiveness

**Check for:**
```
Issues to detect:

❌ Too much padding on mobile:
   - p-24 (96px on 320px screen = cramped)
   - Fix: p-6 md:p-12 lg:p-24

❌ Too little padding on mobile:
   - p-2 (tight on touchscreens)
   - Fix: p-4 md:p-2 (more space on mobile)

❌ No responsive gaps:
   - gap-12 (too much on mobile)
   - Fix: gap-6 md:gap-8 lg:gap-12

❌ Fixed margins:
   - mx-24 (breaks on narrow screens)
   - Fix: mx-4 md:mx-12 lg:mx-24
```

**Report:**
```
## Spacing Analysis

### Padding Issues
❌ Found:
   - Section padding: p-20 on mobile (too much)
     Fix: p-8 md:p-16 lg:p-20

   - Card padding: p-4 feels tight on mobile
     Fix: p-6 md:p-4 (more on mobile for touch)

### Gap Issues
⚠️  Could improve:
   - Grid gap: gap-8 same across all sizes
     Consider: gap-4 md:gap-6 lg:gap-8
```

#### D. Component-Specific Checks

**Navigation:**
```
Mobile Nav Checklist:

❌ Desktop nav visible on mobile:
   - Links should be hidden: hidden md:flex

❌ Missing mobile menu:
   - Need hamburger icon: md:hidden
   - Need mobile drawer/overlay

❌ Touch targets too small:
   - Links need py-3 minimum (44px height)

✅ Good:
   - Logo visible on all sizes
   - Mobile-friendly layout
```

**Forms:**
```
Form Responsiveness:

❌ Multi-column on mobile:
   - grid-cols-2 (cramped on narrow screens)
   - Fix: grid-cols-1 md:grid-cols-2

❌ Input text too small:
   - text-sm on mobile (hard to read when focused)
   - Fix: text-base (16px prevents zoom on iOS)

✅ Good:
   - Buttons full width on mobile
   - Stack vertically
```

**Cards:**
```
Card Grid Responsiveness:

❌ Too many columns on mobile:
   - grid-cols-3 breaks layout
   - Fix: grid-cols-1 sm:grid-cols-2 lg:grid-cols-3

⚠️  Could improve:
   - Cards maintain same padding across sizes
   - Consider: p-6 md:p-4 lg:p-6
```

**Buttons:**
```
Button Responsiveness:

❌ Small on mobile:
   - px-4 py-2 (hard to tap accurately)
   - Fix: px-6 py-3 md:px-4 md:py-2

⚠️  Could improve:
   - Consider full width on mobile: w-full md:w-auto
```

#### E. Images & Media

**Check for:**
```
Issues to detect:

❌ Fixed image sizes:
   - w-[400px] h-[300px] (breaks responsive)
   - Fix: w-full h-auto (flexible)

❌ No object-fit:
   - Images distort
   - Fix: object-cover or object-contain

❌ Large images on mobile:
   - Loading 4K image on 360px screen
   - Fix: Use srcset or responsive images

❌ No aspect ratio:
   - Height jumps during load
   - Fix: aspect-video or aspect-square
```

**Report:**
```
## Media Analysis

### Images
❌ Issues:
   - Hero image: Fixed w-[800px] h-[600px]
     Fix: w-full h-auto aspect-video object-cover

   - Card images: No aspect ratio set
     Fix: aspect-square object-cover

✅ Good:
   - Using responsive image loading
```

#### F. Touch Targets

**Check mobile usability:**
```
Touch Target Requirements:

Minimum size: 44x44 pixels (Apple HIG)
Recommended: 48x48 pixels (Material Design)

Issues to detect:

❌ Small buttons on mobile:
   - px-2 py-1 = too small for finger
   - Fix: px-4 py-3 minimum on mobile

❌ Links too close:
   - gap-1 between links = hard to tap
   - Fix: gap-3 md:gap-1 (more space on mobile)

❌ Icon buttons without enough padding:
   - Icon-only buttons need w-12 h-12 minimum
```

**Report:**
```
## Touch Target Analysis

❌ Issues found:
   - Close button: w-6 h-6 (too small)
     Fix: w-12 h-12

   - Navigation links: py-1 (only 24px tall)
     Fix: py-3 (48px total with text)

   - Icon buttons: w-8 h-8
     Fix: w-12 h-12
```

### 3. Specific Fix Examples

Provide concrete before/after:

```
## Recommended Fixes

### Fix 1: Grid Layout
❌ Before:
```html
<div class="grid grid-cols-4 gap-6">
```

✅ After:
```html
<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 md:gap-6">
```

**What changed:**
- Mobile: 1 column (stacked)
- Small tablet: 2 columns
- Desktop: 3 columns
- Large desktop: 4 columns
- Gap: smaller on mobile (gap-4), larger on desktop (gap-6)

---

### Fix 2: Hero Section Typography
❌ Before:
```html
<h1 class="text-6xl font-bold">
<p class="text-xl">
```

✅ After:
```html
<h1 class="text-4xl md:text-5xl lg:text-6xl font-bold leading-tight">
<p class="text-lg md:text-xl lg:text-2xl leading-relaxed">
```

**What changed:**
- H1: Smaller on mobile (text-4xl), grows to text-6xl on large screens
- P: Scales from text-lg to text-2xl
- Added responsive line heights

---

### Fix 3: Section Padding
❌ Before:
```html
<section class="py-24">
```

✅ After:
```html
<section class="py-12 md:py-16 lg:py-24">
```

**What changed:**
- Mobile: py-12 (48px, more appropriate)
- Tablet: py-16 (64px)
- Desktop: py-24 (96px, original size)
```

### 4. Testing Checklist

Provide testing steps:

```
## How to Test Responsive Design

### Manual Testing:
1. Resize browser from 320px to 1920px
2. Check these specific widths:
   - 320px (iPhone SE)
   - 375px (iPhone 12/13)
   - 768px (iPad)
   - 1024px (iPad Pro)
   - 1440px (Desktop)

3. Check for:
   - No horizontal scroll
   - All content readable
   - Buttons tappable
   - Images not distorted
   - Layout makes sense

### DevTools Testing:
1. Open Chrome DevTools (F12)
2. Click device toolbar icon
3. Test these presets:
   - iPhone SE
   - iPhone 12 Pro
   - iPad Air
   - iPad Pro
   - Desktop

### Real Device Testing:
- Test on actual phone if possible
- Check landscape and portrait
- Test touch interactions
```

### 5. Common Patterns

Show responsive patterns:

```
## Common Responsive Patterns

### Pattern 1: Mobile Stack, Desktop Row
```html
<div class="flex flex-col md:flex-row gap-6">
  <div class="w-full md:w-1/2">Left</div>
  <div class="w-full md:w-1/2">Right</div>
</div>
```
Mobile: Stacks vertically
Desktop: Side-by-side

### Pattern 2: Progressive Grid
```html
<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
```
Mobile: 1 column
Tablet: 2 columns
Desktop: 3 columns
Large: 4 columns

### Pattern 3: Responsive Text
```html
<h1 class="text-3xl sm:text-4xl md:text-5xl lg:text-6xl">
```
Grows progressively with screen size

### Pattern 4: Hide/Show Elements
```html
<nav class="hidden lg:flex">Desktop Nav</nav>
<button class="lg:hidden">Mobile Menu</button>
```
Different UI for different sizes

### Pattern 5: Container Padding
```html
<div class="px-4 sm:px-6 lg:px-8">
```
More padding on larger screens
```

---

## Output Format

Structure the response like this:

```markdown
# Responsive Design Analysis

## Summary
[Quick overview of responsive state]

## Issues by Breakpoint

### Mobile (< 640px)
[List of issues and fixes]

### Tablet (640px - 1023px)
[List of issues and fixes]

### Desktop (1024px+)
[List of issues and fixes]

## Priority Fixes

### Critical (Do First)
[Must-fix responsive issues]

### Important (Do Soon)
[Should-fix issues]

### Polish (Nice to Have)
[Enhancement suggestions]

## Code Examples
[Before/after code with explanations]

## Testing Checklist
[Steps to verify fixes]

## Responsive Patterns Used
[Common patterns applied]
```

---

## Quality Checklist

Ensure the analysis:

- [ ] Checks all major breakpoints
- [ ] Identifies specific line numbers
- [ ] Provides exact before/after code
- [ ] Explains why changes improve UX
- [ ] Includes testing instructions
- [ ] Shows common responsive patterns

---

**Make your UI perfect on every device!** 📱💻🖥️
