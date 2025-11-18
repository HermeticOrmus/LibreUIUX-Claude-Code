# Modern Button Component Prompt

Use this template to create beautiful, modern buttons with Claude Code.

---

## 🎯 Copy-Paste Template

```
Create a modern button component with these specifications:

[Choose a variant: PRIMARY / SECONDARY / DANGER / GHOST]

PRIMARY BUTTON:
- Background: bg-blue-600
- Hover: bg-blue-700
- Active: bg-blue-800 scale-98
- Text: text-white font-semibold
- Padding: px-6 py-3
- Rounded: rounded-lg
- Shadow: shadow-md hover:shadow-lg
- Transition: transition-all duration-200 ease-out
- Focus: focus:ring-4 focus:ring-blue-100 focus:outline-none

SECONDARY BUTTON:
- Background: bg-white
- Border: border-2 border-gray-300
- Hover: bg-gray-50 border-gray-400
- Text: text-gray-700 font-semibold
- Padding: px-6 py-3
- Rounded: rounded-lg
- Transition: transition-all duration-200 ease-out
- Focus: focus:ring-4 focus:ring-gray-100 focus:outline-none

DANGER BUTTON:
- Background: bg-red-600
- Hover: bg-red-700
- Active: bg-red-800 scale-98
- Text: text-white font-semibold
- Padding: px-6 py-3
- Rounded: rounded-lg
- Shadow: shadow-md hover:shadow-lg
- Transition: transition-all duration-200 ease-out
- Focus: focus:ring-4 focus:ring-red-100 focus:outline-none

GHOST BUTTON:
- Background: bg-transparent
- Hover: bg-gray-100
- Text: text-gray-700 font-semibold
- Padding: px-6 py-3
- Rounded: rounded-lg
- Transition: transition-all duration-200 ease-out

SIZES:
- Small: px-4 py-2 text-sm
- Medium: px-6 py-3 text-base (default)
- Large: px-8 py-4 text-lg

STATES:
- Disabled: opacity-50 cursor-not-allowed (no hover effects)
- Loading: show spinner icon, text "Loading...", disabled state

OPTIONAL ICON:
- Icon position: [left / right]
- Icon size: w-5 h-5
- Icon spacing: [left: mr-2] [right: ml-2]

ACCESSIBILITY:
- Keyboard focusable
- Clear focus indicator (ring)
- Aria-label if icon-only
- Disabled attribute when disabled

Example content: "[Your button text here]"
```

---

## 🎨 Common Variations

### 1. Icon Button
```
Create an icon-only button:
- Size: w-10 h-10 (40x40px)
- Rounded: rounded-lg
- Background: bg-gray-100 hover:bg-gray-200
- Icon: [specify icon, e.g., "trash icon", "edit icon"]
- Icon color: text-gray-600
- Center icon: flex items-center justify-center
- aria-label: "[action description]"
```

### 2. Button with Icon
```
Create a button with left icon:
- Use PRIMARY template above
- Add icon: [e.g., "download icon"]
- Icon position: left of text (mr-2)
- Icon size: w-5 h-5
- Text: "[button label]"
```

### 3. Full-Width Button
```
Use PRIMARY template above, add:
- Width: w-full
- Justify: justify-center
- Use for: mobile CTAs, form submissions
```

### 4. Button Group
```
Create a button group (multiple buttons together):
- Container: inline-flex rounded-lg overflow-hidden
- Buttons: connect seamlessly (no individual border-radius on middle buttons)
- First button: rounded-l-lg
- Last button: rounded-r-lg
- Middle buttons: no rounding
- All buttons same height
- Divide with borders: divide-x divide-gray-300
```

### 5. Loading Button
```
Create a button with loading state:
- Base: PRIMARY template
- When loading:
  - Disable button (opacity-50 cursor-not-allowed)
  - Show spinner icon (animate-spin)
  - Text changes to "Loading..."
  - Width stays constant (prevent layout shift)
```

---

## 📋 Real-World Examples

### Example 1: Submit Form Button
```
Create a form submit button:
- Primary style: bg-blue-600 hover:bg-blue-700
- Full width: w-full
- Text: "Create Account" font-semibold
- Padding: py-3 px-6
- Rounded: rounded-lg
- Shadow: shadow-md hover:shadow-lg
- Transition: transition-all duration-200
- Loading state: spinner + "Creating account..."
```

### Example 2: Delete Confirmation
```
Create a danger button for delete action:
- Background: bg-red-600 hover:bg-red-700
- Text: "Delete Forever" text-white font-semibold
- Icon: trash icon on left (w-5 h-5 mr-2)
- Padding: px-6 py-3
- Rounded: rounded-lg
- Shadow: shadow-md hover:shadow-lg
- Focus: focus:ring-4 focus:ring-red-100
```

### Example 3: Download Button
```
Create a download button:
- Secondary style: border-2 border-blue-600
- Text: "Download PDF" text-blue-600 font-semibold
- Icon: download icon on left (mr-2)
- Hover: bg-blue-50 border-blue-700
- Padding: px-6 py-3
- Rounded: rounded-lg
- Transition: transition-all duration-200
```

### Example 4: Social Login
```
Create a "Continue with Google" button:
- Background: bg-white
- Border: border-2 border-gray-300
- Hover: bg-gray-50
- Google icon: left side (mr-3)
- Text: "Continue with Google" text-gray-700 font-medium
- Full width: w-full
- Padding: py-3 px-6
- Rounded: rounded-lg
- Shadow: shadow-sm hover:shadow-md
```

---

## 🎯 Customization Guide

### Change Colors

**From Blue to Purple:**
```
Replace:
- bg-blue-600 → bg-purple-600
- bg-blue-700 → bg-purple-700
- focus:ring-blue-100 → focus:ring-purple-100
```

**From Blue to Custom Color:**
```
Replace:
- bg-blue-600 → bg-[#YOUR_HEX]
- hover:bg-blue-700 → hover:bg-[#DARKER_HEX]
```

### Change Size

**Make Smaller:**
```
- px-6 py-3 → px-4 py-2
- text-base → text-sm
- Icon: w-5 h-5 → w-4 h-4
```

**Make Larger:**
```
- px-6 py-3 → px-8 py-4
- text-base → text-lg
- Icon: w-5 h-5 → w-6 h-6
```

### Change Shape

**More Rounded (Pill-shaped):**
```
- rounded-lg → rounded-full
```

**Sharp Corners:**
```
- rounded-lg → rounded-none
```

---

## ✨ Modern Enhancements

### Gradient Button
```
Add to PRIMARY template:
- bg-gradient-to-r from-blue-600 to-purple-600
- hover:from-blue-700 hover:to-purple-700
- Remove solid bg-blue-600
```

### Glassmorphism Button
```
Create a glass-style button:
- backdrop-blur-lg
- bg-white/10
- border border-white/20
- text-white font-semibold
- hover: bg-white/20
- shadow-xl
- Use on dark/image backgrounds
```

### Neumorphism Button
```
Create a soft-UI button:
- bg-gray-100 (same as background)
- shadow: shadow-[6px_6px_12px_#d1d9e6,-6px_-6px_12px_#ffffff]
- hover: shadow-[inset_6px_6px_12px_#d1d9e6,inset_-6px_-6px_12px_#ffffff]
- text-gray-700
- Subtle, low contrast
```

---

## 🔧 Framework-Specific

### React Component
```jsx
<button
  className="
    bg-blue-600 hover:bg-blue-700 active:scale-98
    text-white font-semibold
    px-6 py-3
    rounded-lg
    shadow-md hover:shadow-lg
    transition-all duration-200 ease-out
    focus:ring-4 focus:ring-blue-100 focus:outline-none
  "
>
  Click Me
</button>
```

### Vue Component
```vue
<button
  class="
    bg-blue-600 hover:bg-blue-700 active:scale-98
    text-white font-semibold
    px-6 py-3
    rounded-lg
    shadow-md hover:shadow-lg
    transition-all duration-200 ease-out
    focus:ring-4 focus:ring-blue-100 focus:outline-none
  "
>
  Click Me
</button>
```

---

## 📱 Responsive Considerations

```
Mobile-specific adjustments:
- Full width on mobile: w-full md:w-auto
- Larger touch target: py-4 (min 44px height)
- Sticky bottom on mobile: fixed bottom-0 left-0 right-0 md:relative
```

---

## ✅ Accessibility Checklist

- [ ] Keyboard accessible (naturally focusable)
- [ ] Clear focus indicator (ring)
- [ ] Sufficient color contrast (WCAG AA: 4.5:1 minimum)
- [ ] Disabled state clear and not clickable
- [ ] Icon-only buttons have aria-label
- [ ] Loading state announced to screen readers

---

## 🚀 Quick Start

**Copy this complete request:**

```
Create a modern primary button component with these specifications:

STYLE:
- Background: bg-blue-600
- Hover: bg-blue-700
- Active: bg-blue-800 with scale-98
- Text: text-white font-semibold text-base
- Padding: px-6 py-3
- Border radius: rounded-lg
- Shadow: shadow-md, hover:shadow-lg
- Transition: transition-all duration-200 ease-out
- Focus: focus:ring-4 focus:ring-blue-100 focus:outline-none

STATES:
- Disabled: opacity-50 cursor-not-allowed
- Loading: show spinner, text "Loading...", disabled

CONTENT:
- Text: "Get Started"

RESPONSIVE:
- Mobile: w-full
- Desktop: w-auto

ACCESSIBILITY:
- Keyboard focusable
- Clear focus ring
- Screen reader friendly
```

---

**Next Steps:**
- Try [Modern Card](./modern-card.md)
- See [Examples](../examples/)
- Learn [Design Vocabulary](../design-vocabulary.md)
