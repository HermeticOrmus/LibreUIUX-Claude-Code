# ✅ Pre-Request Checklist: Before Asking Claude for UI

Use this checklist **before every UI/UX request** to ensure you get modern, production-ready components.

---

## 🎯 The 2-Minute Checklist

### ✅ Layout & Structure

- [ ] **Container size defined**
  - Example: `max-w-md`, `w-full`, specific pixel width

- [ ] **Spacing specified**
  - Padding: `p-6`, `px-4 py-3`, etc.
  - Margin: `m-4`, `mx-auto`, etc.
  - Gaps between elements: `gap-4`, `space-y-2`

- [ ] **Responsive behavior described**
  - Mobile: `grid-cols-1`
  - Tablet: `md:grid-cols-2`
  - Desktop: `lg:grid-cols-3`

### ✅ Visual Design

- [ ] **Colors specified with scale**
  - Background: `bg-white`, `bg-gray-50`
  - Text: `text-gray-900`, `text-gray-600`
  - Accent: `bg-blue-600`, `text-blue-500`
  - **Not**: "make it blue" ❌
  - **Yes**: "bg-blue-600 hover:bg-blue-700" ✅

- [ ] **Typography defined**
  - Size: `text-sm`, `text-xl`, `text-4xl`
  - Weight: `font-normal`, `font-semibold`, `font-bold`
  - Line height: `leading-tight`, `leading-normal`

- [ ] **Border radius chosen**
  - `rounded-lg` (8px) - standard
  - `rounded-xl` (12px) - cards
  - `rounded-2xl` (16px) - prominent elements
  - `rounded-full` - pills, avatars

- [ ] **Shadows/elevation specified**
  - Rest state: `shadow-md`
  - Hover: `shadow-lg`
  - Modal: `shadow-2xl`
  - None: `shadow-none`

### ✅ Interactions & Animations

- [ ] **Hover states defined**
  - Color change: `hover:bg-blue-700`
  - Scale: `hover:scale-105`
  - Shadow: `hover:shadow-xl`
  - Transform: `hover:-translate-y-1`

- [ ] **Transition timing set**
  - Duration: `duration-200` (recommended)
  - Easing: `ease-in-out`, `ease-out`
  - Property: `transition-all`, `transition-colors`

- [ ] **Active/focus states considered**
  - Button active: `active:scale-95`
  - Input focus: `focus:ring-4 focus:ring-blue-100`

### ✅ Content & Context

- [ ] **Real content specified** (not "Lorem ipsum")
  - Actual button labels
  - Real heading text
  - Representative descriptions

- [ ] **Accessibility considered**
  - Contrast ratios mentioned
  - Focus states defined
  - Touch targets (min 44x44px on mobile)

### ✅ Reference & Examples

- [ ] **Modern pattern specified** (if applicable)
  - Glassmorphism: `backdrop-blur-lg bg-white/10`
  - Bento grid: varied card sizes
  - Gradient: `bg-gradient-to-r from-blue-500 to-purple-600`

- [ ] **Example reference provided** (when helpful)
  - "Similar to https://ui.shadcn.com/examples/cards"
  - "Like the Stripe pricing page"
  - "Reference: (attach screenshot)"

---

## 📋 Component-Specific Checklists

### For Buttons

- [ ] Primary, secondary, or tertiary?
- [ ] Size: small (`px-4 py-2`), medium (`px-6 py-3`), large (`px-8 py-4`)?
- [ ] Icon included? Position?
- [ ] Loading state design?
- [ ] Disabled state appearance?

### For Forms

- [ ] Input style: outlined, filled, or floating label?
- [ ] Validation states: error, success, warning?
- [ ] Label position: top, floating, inline?
- [ ] Error message placement and style?
- [ ] Required field indicator?

### For Cards

- [ ] Image aspect ratio: `aspect-video`, `aspect-square`?
- [ ] Padding consistent: `p-6` or custom?
- [ ] Clickable card? Hover effect?
- [ ] Card content hierarchy: title, description, action?
- [ ] Grid layout for multiple cards?

### For Navigation

- [ ] Desktop layout: horizontal or sidebar?
- [ ] Mobile behavior: hamburger menu or bottom nav?
- [ ] Sticky/fixed positioning?
- [ ] Active link indicator?
- [ ] Dropdown menu style (if applicable)?

---

## 🎨 Design System Check

Before requesting ANY component, have you defined:

- [ ] **Color palette**
  ```
  Primary: blue-600
  Secondary: slate-600
  Success: green-500
  Error: red-500
  Warning: yellow-500
  Background: white / gray-50
  Text: gray-900 / gray-600 / gray-400
  ```

- [ ] **Spacing scale**
  ```
  Tight: gap-2, p-2
  Normal: gap-4, p-4
  Loose: gap-6, p-6
  Section: p-12, p-16
  ```

- [ ] **Typography scale**
  ```
  H1: text-4xl font-bold
  H2: text-3xl font-bold
  H3: text-2xl font-semibold
  Body: text-base font-normal
  Small: text-sm
  ```

- [ ] **Border radius**
  ```
  Standard: rounded-lg
  Cards: rounded-xl
  Buttons: rounded-lg
  ```

**Don't have a design system?** → Use [Intermediate/Design Systems](../intermediate/design-systems/)

---

## 🚀 Example: Complete Request

### ❌ Bad Request (Vague)
```
"Create a login form"
```

### ✅ Good Request (Using Checklist)
```
Create a modern login form with these specifications:

CONTAINER:
- max-w-md (448px max width)
- mx-auto (centered)
- p-8 (32px padding)
- bg-white
- rounded-2xl (16px corners)
- shadow-xl

LAYOUT:
- flex flex-col gap-6

HEADING:
- text-3xl font-bold text-gray-900
- mb-2 (margin below)
- "Welcome back"

SUBHEADING:
- text-sm text-gray-600
- "Sign in to your account"

INPUTS:
- Floating label style
- border-2 border-gray-300
- focus: border-blue-500 ring-4 ring-blue-100
- rounded-lg
- py-3 px-4
- text-base
- transition-all duration-200

- Email input:
  - Type: email
  - Label: "Email address"
  - Placeholder: "you@example.com"

- Password input:
  - Type: password
  - Label: "Password"
  - Show/hide toggle icon
  - "Forgot password?" link (text-sm text-blue-600 hover:text-blue-700)

BUTTON:
- w-full (full width)
- bg-blue-600 hover:bg-blue-700
- active:scale-98
- text-white font-semibold
- py-3 px-6
- rounded-lg
- transition-all duration-200
- shadow-md hover:shadow-lg
- Label: "Sign in"

ERROR STATE:
- Input: border-red-500 ring-red-100
- Error message: text-sm text-red-600 mt-1
- Icon: red exclamation

FOOTER:
- text-sm text-gray-600 text-center
- "Don't have an account?"
- Link: text-blue-600 hover:text-blue-700 font-semibold "Sign up"

RESPONSIVE:
- Mobile: full width with px-4
- Desktop: max-w-md centered

ACCESSIBILITY:
- All inputs have labels
- Error messages tied to inputs (aria-describedby)
- Button shows loading state when submitting
```

**Result**: Production-ready, modern login form!

---

## 🎯 Quick Self-Test

Before submitting your request, answer these:

1. **Can I visualize it?** If you can't picture it, Claude can't build it
2. **Is it specific?** No vague terms like "modern" or "nice"
3. **Is it responsive?** Mobile, tablet, desktop behavior defined?
4. **Are transitions defined?** Hover, focus, active states?
5. **Would a designer approve?** Colors, spacing, typography on a scale?

If you answered **NO** to any question, revise your request!

---

## 📚 Resources

- New to design terms? → [Design Vocabulary](./design-vocabulary.md)
- Need a template? → [Prompt Templates](./prompts/)
- Want examples? → [Beginner Examples](./examples/)

---

## 💡 Pro Tips

1. **Start with a template**: Don't write from scratch, use [prompts/](./prompts/)
2. **Save successful prompts**: Build your own library
3. **Iterate with specifics**: Don't say "better", say "increase shadow to shadow-xl"
4. **Reference real sites**: "Like the Stripe checkout" is very helpful
5. **Test on mobile**: Always check responsive behavior

---

**Remember**: Specific requests = Beautiful results ✨

Print this checklist and keep it handy when working with Claude Code!
