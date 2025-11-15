---
description: Generate a modern UI component with best practices and design system compliance
---

# Modern UI Component Generator

Generate modern, production-ready UI components that follow current design trends and best practices.

## Usage

```
/ui-modern [component-type] [variant]
```

**Examples:**
- `/ui-modern button`
- `/ui-modern card pricing`
- `/ui-modern form contact`
- `/ui-modern nav sidebar`

---

## Instructions for Claude

When the user runs `/ui-modern [component]`, create a modern component with these requirements:

### 1. Design System Compliance

**Check for existing design system:**
- Look for `CLAUDE.md`, `DESIGN_SYSTEM.md`, or similar
- If found, use those tokens and conventions
- If not found, use modern defaults below

### 2. Modern Design Patterns (2024-2025)

Apply current design trends:

**Visual Style:**
- Clean, minimal aesthetics
- Generous whitespace
- Subtle shadows (shadow-lg, shadow-xl)
- Smooth rounded corners (rounded-lg to rounded-2xl)
- Modern color palette (vibrant but professional)

**Interactive Elements:**
- Smooth transitions (duration-200 to duration-300)
- Hover effects (scale, shadow, color change)
- Clear focus states (ring-4 with brand color)
- Active states (slight scale-down: scale-98)

**Modern Patterns to Consider:**
- Glassmorphism (backdrop-blur + transparency) for overlays
- Subtle gradients (not excessive)
- Micro-interactions
- Smooth animations
- Card-based layouts

### 3. Component-Specific Guidelines

#### Buttons
```
Modern button should include:
- Primary: bg-[brand] with hover state darker
- Shadow: shadow-md hover:shadow-lg
- Rounded: rounded-lg
- Padding: px-6 py-3 (comfortable click target)
- Transition: transition-all duration-200
- Focus: ring-4 ring-[brand]/20
- Active: active:scale-98
- Text: font-semibold
```

#### Cards
```
Modern card should include:
- Background: bg-white
- Shadow: shadow-lg hover:shadow-xl
- Rounded: rounded-xl or rounded-2xl
- Padding: p-6 or p-8
- Hover: subtle lift (hover:-translate-y-1)
- Transition: transition-all duration-300
- Overflow: overflow-hidden (for images)
```

#### Forms
```
Modern form should include:
- Floating labels or clear label positioning
- Focus states: ring-4 with brand color
- Error states: red border + message
- Success states: green border + checkmark
- Validation: inline validation feedback
- Accessibility: proper labels, aria attributes
```

#### Navigation
```
Modern nav should include:
- Sticky or fixed positioning
- Backdrop blur (backdrop-blur-lg bg-white/80)
- Mobile responsive (hamburger menu)
- Smooth transitions
- Active state indicators
- Logo/brand on left
- CTAs on right
```

### 4. Responsive Behavior

**Mobile-first approach:**
```
- Base styles: mobile (320px+)
- sm: 640px+ (large phone)
- md: 768px+ (tablet)
- lg: 1024px+ (laptop)
- xl: 1280px+ (desktop)
```

**Common patterns:**
```
- Grids: grid-cols-1 md:grid-cols-2 lg:grid-cols-3
- Spacing: p-4 md:p-6 lg:p-8
- Text: text-2xl md:text-3xl lg:text-4xl
- Hidden on mobile: hidden md:block
```

### 5. Accessibility

**Always include:**
- Semantic HTML (button, nav, header, etc.)
- ARIA labels where needed
- Keyboard navigation support
- Focus indicators (visible and clear)
- Color contrast compliance (WCAG AA minimum)
- Touch targets 44x44px minimum on mobile

### 6. Default Modern Palette

**If no design system exists, use:**
```
Primary:      #3B82F6 (blue-600)
Primary Dark: #2563EB (blue-700)
Success:      #10B981 (green-500)
Error:        #EF4444 (red-500)
Warning:      #F59E0B (amber-500)
Text:         #111827 (gray-900)
Text Muted:   #6B7280 (gray-500)
Background:   #FFFFFF (white)
Background 2: #F9FAFB (gray-50)
Border:       #E5E7EB (gray-200)
```

### 7. Code Quality

**Ensure:**
- Clean, readable code
- Proper indentation
- Comments for complex logic
- Reusable class names
- DRY principles
- Framework best practices (React, Vue, etc.)

### 8. Output Format

Provide:
1. **Component code** (fully implemented)
2. **Usage example**
3. **Props/API** (if applicable)
4. **Responsive behavior notes**
5. **Customization hints**

### 9. Common Variants

**If user specifies variant, adjust:**
- `pricing` → Pricing card with plan, price, features, CTA
- `contact` → Contact form with validation
- `sidebar` → Sidebar navigation
- `hero` → Hero section with headline, subtext, CTAs
- `dashboard` → Dashboard stats card

### 10. Technology Awareness

**Adapt to project stack:**
- React: Use JSX, functional components, hooks
- Vue: Use Vue 3 composition API
- HTML/CSS: Pure semantic HTML with utility classes
- Tailwind: Use Tailwind utility classes
- CSS-in-JS: Use styled-components or emotion if detected

---

## Example Output

When user types: `/ui-modern button`

**You should create:**

```jsx
// Modern Primary Button Component
function ModernButton({ children, variant = 'primary', ...props }) {
  const baseStyles = `
    px-6 py-3
    font-semibold text-base
    rounded-lg
    shadow-md hover:shadow-lg
    transition-all duration-200 ease-out
    focus:ring-4 focus:outline-none
    active:scale-98
  `;

  const variants = {
    primary: `
      bg-blue-600 hover:bg-blue-700 active:bg-blue-800
      text-white
      focus:ring-blue-100
    `,
    secondary: `
      bg-white hover:bg-gray-50
      border-2 border-gray-300 hover:border-gray-400
      text-gray-700
      focus:ring-gray-100
    `,
    danger: `
      bg-red-600 hover:bg-red-700 active:bg-red-800
      text-white
      focus:ring-red-100
    `,
  };

  return (
    <button
      className={`${baseStyles} ${variants[variant]}`}
      {...props}
    >
      {children}
    </button>
  );
}

// Usage Example:
<ModernButton variant="primary">
  Get Started
</ModernButton>

<ModernButton variant="secondary">
  Learn More
</ModernButton>

<ModernButton variant="danger">
  Delete
</ModernButton>

// Customization:
- Change colors by modifying bg-* classes
- Adjust size with different padding (px-8 py-4 for large)
- Add icons with flex gap-2 layout
```

---

## Quality Checklist

Before delivering, verify:

- [ ] Follows modern design patterns
- [ ] Includes hover/focus/active states
- [ ] Responsive on mobile, tablet, desktop
- [ ] Accessible (ARIA, keyboard nav)
- [ ] Uses design system (if available)
- [ ] Clean, readable code
- [ ] Includes usage example
- [ ] Customization hints provided

---

**Create beautiful, modern components effortlessly!** ✨
