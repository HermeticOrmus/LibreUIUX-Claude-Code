# Modern Navigation Component Prompt

Use this template to create beautiful, modern navigation components with Claude Code.

---

## 🎯 Copy-Paste Template

```
Create a modern navigation component with these specifications:

CONTAINER:
- Position: fixed top-0 left-0 right-0 z-50
- OR: sticky top-0 z-50
- Background: bg-white/80 backdrop-blur-lg
- Shadow: shadow-md (appears on scroll)
- Transition: transition-all duration-300

LAYOUT:
- max-w-7xl mx-auto px-4 sm:px-6 lg:px-8
- flex justify-between items-center
- Height: h-16 md:h-20

LOGO/BRAND:
- Left side
- flex items-center gap-2
- Logo image: h-8 w-auto
- Brand text: text-xl font-bold text-gray-900

NAVIGATION LINKS (Desktop):
- Desktop: flex gap-8 (hidden on mobile)
- md:flex (show on tablet+)
- Each link:
  - text-gray-700 hover:text-blue-600
  - font-medium text-sm
  - transition-colors duration-200
  - Active: text-blue-600 font-semibold
  - Underline on active: border-b-2 border-blue-600

CTA BUTTONS (Desktop):
- flex gap-4 items-center
- Primary button: See button template
- Secondary/Login button

MOBILE MENU:
- Hamburger icon: md:hidden (show only on mobile)
  - w-6 h-6 text-gray-700
  - 3 horizontal lines
  - Animated to X when open

- Mobile dropdown:
  - absolute top-full left-0 right-0
  - bg-white shadow-lg
  - Slide down animation
  - flex flex-col gap-4 p-6

RESPONSIVE:
- Mobile: Hamburger menu
- Desktop (md+): Horizontal navigation

SCROLL BEHAVIOR:
- Transparent when at top (optional)
- Solid with shadow when scrolled
- Shrink height on scroll (optional)

Example links: [Home, Features, Pricing, About, Contact]
```

---

## 🎨 Navigation Variants

### 1. Glassmorphism Nav

```
Create a modern glassmorphism navigation:

CONTAINER:
- fixed top-0 left-0 right-0 z-50
- backdrop-blur-lg bg-white/70
- border-b border-white/20
- Scroll: bg-white/90

CONTENT:
- max-w-7xl mx-auto px-6
- flex justify-between items-center h-20

LOGO:
- text-2xl font-bold
- bg-gradient-to-r from-blue-600 to-purple-600
- bg-clip-text text-transparent

LINKS:
- Desktop: flex gap-8
- Each link:
  - text-gray-700 hover:text-blue-600
  - font-medium
  - transition-colors
  - Active: text-blue-600
  - Pill background on hover: px-4 py-2 rounded-full bg-blue-50

BUTTON:
- bg-blue-600 hover:bg-blue-700
- text-white font-semibold
- px-6 py-2.5 rounded-full
- shadow-lg hover:shadow-xl

MOBILE:
- Full-screen overlay when open
- bg-white/95 backdrop-blur-xl
- Slide in from right
- Links: vertical, large text
```

### 2. Minimal Nav

```
Create a minimal, clean navigation:

CONTAINER:
- sticky top-0 z-50
- bg-white
- border-b border-gray-200

CONTENT:
- max-w-6xl mx-auto px-4
- flex justify-between items-center h-16

LOGO:
- text-lg font-bold text-gray-900
- Simple wordmark, no icon

LINKS:
- Desktop: flex gap-6
- text-sm text-gray-600 hover:text-gray-900
- Subtle, minimal design
- Active: text-gray-900 font-medium

BUTTON:
- Just text link, no button background
- text-blue-600 hover:text-blue-700 font-semibold

MOBILE:
- Dropdown below nav (not overlay)
- Slide down with ease-out
```

### 3. Dark Nav

```
Create a dark-themed navigation:

CONTAINER:
- fixed top-0 left-0 right-0 z-50
- bg-gray-900/95 backdrop-blur-lg
- border-b border-gray-800

CONTENT:
- max-w-7xl mx-auto px-6
- flex justify-between items-center h-20

LOGO:
- text-white font-bold text-xl

LINKS:
- Desktop: flex gap-8
- text-gray-300 hover:text-white
- Active: text-white
- Active indicator: border-b-2 border-blue-500

BUTTON:
- bg-blue-600 hover:bg-blue-700
- text-white
- shadow-xl

MOBILE:
- Dark overlay: bg-gray-900
- White text throughout
```

### 4. Sidebar Navigation

```
Create a sidebar navigation (for dashboards):

SIDEBAR:
- Position: fixed left-0 top-0 bottom-0
- Width: w-64
- Background: bg-gray-900
- z-50

HEADER (inside sidebar):
- Logo/brand: p-6
- text-white font-bold text-xl

NAVIGATION:
- flex flex-col gap-1 px-3

LINK ITEMS:
- flex items-center gap-3 px-4 py-3
- text-gray-300 hover:text-white
- hover:bg-gray-800
- rounded-lg
- transition-all duration-200
- Active: bg-gray-800 text-white
- Active indicator: border-l-4 border-blue-500

ICON:
- w-5 h-5 mr-3

FOOTER (bottom of sidebar):
- absolute bottom-0 left-0 right-0 p-6
- User profile section
- Avatar + name
- Logout button

MAIN CONTENT:
- ml-64 (offset by sidebar width)
- min-h-screen

MOBILE:
- Sidebar: -translate-x-full (hidden)
- Show: translate-x-0 (slide in)
- Overlay: fixed inset-0 bg-black/50
```

### 5. Bottom Tab Bar (Mobile)

```
Create a mobile bottom tab bar:

CONTAINER:
- fixed bottom-0 left-0 right-0
- bg-white border-t border-gray-200
- safe-area-padding-bottom (for iOS notch)
- z-50
- Only show on mobile: md:hidden

LAYOUT:
- flex justify-around items-center
- h-16

TAB ITEMS (4-5 items):
- flex flex-col items-center gap-1
- py-2
- Active: text-blue-600
- Inactive: text-gray-600

ICON:
- w-6 h-6

LABEL:
- text-xs font-medium

BADGE (optional):
- absolute top-0 right-0
- w-5 h-5 rounded-full bg-red-500
- text-white text-xs
- Count or dot
```

---

## 🎯 Advanced Navigation Features

### Mega Menu Dropdown

```
Dropdown trigger:
- Link with chevron down icon
- hover: show dropdown
- group (for group-hover)

Mega menu panel:
- absolute top-full left-0 right-0
- bg-white shadow-2xl
- border-t border-gray-200
- opacity-0 group-hover:opacity-100
- invisible group-hover:visible
- transition-all duration-300
- mt-0 (sits right below nav)

Content:
- max-w-7xl mx-auto px-6 py-8
- grid grid-cols-4 gap-8

Each section:
- Heading: text-sm font-bold text-gray-900 uppercase
- Links: space-y-3
- Each link:
  - flex items-start gap-3
  - Icon (w-6 h-6)
  - Content:
    - Title: font-semibold text-gray-900
    - Description: text-sm text-gray-600
  - hover:bg-gray-50 p-3 rounded-lg

Featured section:
- bg-blue-50 rounded-xl p-6
- Featured product/content
- Image + text + CTA
```

### Search in Nav

```
Search icon button:
- w-10 h-10 rounded-full
- hover:bg-gray-100
- flex items-center justify-center

Expanded search:
- On click: expand to full search bar
- Smooth width transition
- w-10 → w-64
- Show input field
- Focus input automatically
- Close button appears

Search results dropdown:
- Below search input
- bg-white shadow-2xl rounded-xl
- Recent searches
- Popular items
- Search suggestions
```

### Notification Badge

```
Notification icon:
- Relative container
- Bell icon

Badge:
- absolute -top-1 -right-1
- w-5 h-5 rounded-full
- bg-red-500 text-white
- text-xs font-bold
- flex items-center justify-center
- Unread count: "3"
- animate-pulse (when new)

Dropdown:
- Notification list
- Each: flex gap-3 p-4 hover:bg-gray-50
- Avatar + message + time
- Unread: bg-blue-50
- "Mark all as read" button
```

### User Menu Dropdown

```
Trigger:
- Avatar image: w-10 h-10 rounded-full
- With chevron down
- cursor-pointer
- hover:ring-4 ring-gray-100

Dropdown:
- Absolute top-full right-0 mt-2
- bg-white rounded-xl shadow-2xl
- w-64
- border border-gray-200

Header:
- p-4 border-b border-gray-200
- User info: name + email
- Avatar: w-12 h-12 rounded-full

Menu items:
- py-2
- Each link: px-4 py-2 hover:bg-gray-50
- Icon + text
- Divider: border-t my-2

Footer:
- p-4 border-t
- Logout button: text-red-600 hover:bg-red-50
```

---

## 📱 Responsive Behavior

### Mobile Menu Patterns

**Slide-Out Drawer:**
```
- Overlay: fixed inset-0 bg-black/50 z-40
- Drawer: fixed top-0 right-0 bottom-0 z-50
- Width: w-80
- Transform: translate-x-full → translate-x-0
- Transition: duration-300 ease-out
- Close button: top-right
```

**Full-Screen Overlay:**
```
- Fixed inset-0 z-50
- bg-white
- Slide from top: -translate-y-full → translate-y-0
- Close X: top-right, large (w-12 h-12)
- Links: vertical, centered, large text
- Fade in animation for each link
```

**Bottom Sheet:**
```
- Fixed bottom-0 left-0 right-0
- Slide up: translate-y-full → translate-y-0
- Rounded top: rounded-t-3xl
- Drag handle at top
- Max height: max-h-[80vh]
```

---

## ✨ Scroll Behaviors

### Navbar on Scroll

```
States:
1. At top (transparent):
   - bg-transparent
   - shadow-none
   - h-24 (taller)

2. Scrolled (solid):
   - bg-white/90 backdrop-blur-lg
   - shadow-md
   - h-16 (shorter)

Transition:
- transition-all duration-300

Implementation:
- useScroll hook
- Add/remove class on scroll > 50px
```

### Hide on Scroll Down, Show on Scroll Up

```
States:
- Default: translate-y-0
- Scroll down: -translate-y-full (hide)
- Scroll up: translate-y-0 (show)

Transition:
- transition-transform duration-300

Requires:
- Track scroll direction
- Hide when scrolling down
- Show when scrolling up
```

---

## ✅ Navigation Best Practices

### DO:
- ✅ Make logo/brand clickable (link to home)
- ✅ Indicate active/current page
- ✅ Use semantic HTML (nav element)
- ✅ Ensure keyboard navigation works
- ✅ Provide mobile menu for small screens
- ✅ Use proper z-index for sticky/fixed nav
- ✅ Add focus indicators
- ✅ Keep navigation items to 5-7 max

### DON'T:
- ❌ Use more than 2 levels of dropdowns
- ❌ Forget mobile menu
- ❌ Make nav too tall (wastes space)
- ❌ Hide navigation entirely on scroll
- ❌ Use tiny click targets on mobile
- ❌ Forget to close mobile menu on link click
- ❌ Overcomplicate with too many items

---

## 🚀 Quick Start: Complete Example

```
Create a modern navigation bar with these specifications:

CONTAINER:
- fixed top-0 left-0 right-0 z-50
- bg-white/90 backdrop-blur-lg
- border-b border-gray-200
- transition-all duration-300

CONTENT WRAPPER:
- max-w-7xl mx-auto px-4 sm:px-6 lg:px-8
- flex justify-between items-center
- h-20

LOGO (left):
- flex items-center gap-2
- Logo image: h-8 w-auto
- Brand text: "YourBrand" text-xl font-bold text-gray-900

NAVIGATION (center, desktop only):
- hidden md:flex gap-8
- Links: Home, Features, Pricing, About, Contact
- Each link:
  - text-gray-700 hover:text-blue-600
  - font-medium text-sm
  - transition-colors duration-200
  - Active (Home): text-blue-600 font-semibold
  - Active indicator: border-b-2 border-blue-600 pb-1

ACTIONS (right):
- flex items-center gap-4

- Sign In button (desktop):
  - hidden md:block
  - text-gray-700 hover:text-gray-900
  - font-medium text-sm

- Get Started button:
  - bg-blue-600 hover:bg-blue-700 active:scale-98
  - text-white font-semibold
  - px-6 py-2.5 rounded-lg
  - shadow-md hover:shadow-lg
  - transition-all duration-200
  - Text: "Get Started"

- Mobile menu button:
  - md:hidden (only on mobile)
  - w-10 h-10 rounded-lg hover:bg-gray-100
  - flex items-center justify-center
  - Hamburger icon (3 lines)

MOBILE MENU:
- fixed top-20 left-0 right-0 bottom-0 z-40
- bg-white
- transform: translate-x-full (hidden by default)
- When open: translate-x-0
- transition-transform duration-300
- Shadow: shadow-2xl

MOBILE MENU CONTENT:
- Padding: p-6
- Links: flex flex-col gap-4
- Each link:
  - text-lg font-medium text-gray-900
  - py-3 px-4 rounded-lg
  - hover:bg-gray-50
  - Active: bg-blue-50 text-blue-600

- Divider: border-t my-6

- Sign In button (mobile):
  - w-full text-center
  - border-2 border-gray-300
  - py-3 rounded-lg
  - font-semibold text-gray-700

- Get Started button (mobile):
  - w-full bg-blue-600
  - text-white py-3 rounded-lg
  - font-semibold
  - mt-3

SCROLL BEHAVIOR:
- When scrolled > 50px:
  - shadow-md appears
  - Slightly reduce height to h-16

ACCESSIBILITY:
- Keyboard navigable
- Focus indicators (ring-2 ring-blue-500)
- ARIA labels for icons
- Mobile menu: aria-expanded attribute
```

---

**Next Steps:**
- See other prompts: [Button](./modern-button.md), [Card](./modern-card.md), [Form](./modern-form.md)
- Check [Examples](../examples/)
- Learn [Design Vocabulary](../design-vocabulary.md)
