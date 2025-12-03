---
description: Create UI components with categorical composition - buttons, cards, forms, navigation
---

# UI Component Generator

A compositional component generator inspired by category theory. Each component is a morphism from specification to implementation with clear input/output contracts.

## Usage

```
/ui-component <type> [variant] [options]
```

**Types:** `button`, `card`, `form`, `nav`

**Examples:**
```
/ui-component button
/ui-component button primary --with-icon
/ui-component card pricing
/ui-component form login
/ui-component nav glassmorphism
```

---

## Categorical Framework

This command applies category-theoretic principles:

```
F: Spec -> Component

Where:
- Objects: Component specifications (type, variant, constraints)
- Morphisms: Transformations preserving design system invariants
- Composition: Components compose (button in card in form)
- Identity: Default variants maintain type semantics
```

**Quality Functor Q: Component -> [0,1]**
- Accessibility score
- Responsiveness score
- Design system compliance

---

## Instructions for Claude

### OBSERVE: Context Detection

1. **Detect design system:**
   - Check for `CLAUDE.md`, `DESIGN_SYSTEM.md`, `tailwind.config.js`
   - Extract: colors, spacing, typography, radius, shadows
   - If none found, use modern defaults

2. **Detect framework:**
   - React (JSX, .tsx/.jsx files)
   - Vue (SFC, .vue files)
   - Svelte (.svelte files)
   - HTML/CSS (pure markup)

3. **Detect existing patterns:**
   - Scan for existing components
   - Match naming conventions
   - Preserve code style

### REASON: Specification Mapping

Map user input to component specification:

```
Input: /ui-component <type> [variant] [options]

Specification = {
  type: button | card | form | nav,
  variant: type-specific variant,
  options: parsed flags,
  context: detected environment,
  constraints: design system rules
}
```

### CREATE: Component Generation

Generate component following the type-specific templates below.

---

## Component Types

### BUTTON

**Variants:** `primary`, `secondary`, `danger`, `ghost`, `outline`

**Options:**
- `--with-icon` - Include icon slot
- `--loading` - Include loading state
- `--full-width` - Full width button
- `--size=sm|md|lg` - Size variant

**Specification:**
```
BUTTON = {
  base: px-6 py-3 font-semibold rounded-lg transition-all duration-200,

  variants: {
    primary: bg-blue-600 hover:bg-blue-700 text-white shadow-md hover:shadow-lg,
    secondary: bg-white border-2 border-gray-300 hover:border-gray-400 text-gray-700,
    danger: bg-red-600 hover:bg-red-700 text-white shadow-md,
    ghost: bg-transparent hover:bg-gray-100 text-gray-700,
    outline: border-2 border-blue-600 text-blue-600 hover:bg-blue-50
  },

  states: {
    focus: focus:ring-4 focus:ring-{color}-100 focus:outline-none,
    active: active:scale-98,
    disabled: opacity-50 cursor-not-allowed,
    loading: relative cursor-wait [show spinner]
  },

  sizes: {
    sm: px-4 py-2 text-sm,
    md: px-6 py-3 text-base,
    lg: px-8 py-4 text-lg
  }
}
```

**Output Structure:**
```jsx
// Composable: Button composes with icons, text, loading states
<Button variant="primary" size="md" loading={false}>
  {icon && <Icon className="w-5 h-5 mr-2" />}
  {children}
  {loading && <Spinner />}
</Button>
```

---

### CARD

**Variants:** `default`, `product`, `blog`, `profile`, `pricing`, `stats`, `glass`, `gradient`

**Options:**
- `--interactive` - Add hover effects, cursor-pointer
- `--with-image` - Include image section
- `--with-footer` - Include footer section

**Specification:**
```
CARD = {
  base: bg-white rounded-xl overflow-hidden,

  variants: {
    default: shadow-md p-6,
    product: shadow-lg [image + content + price + CTA],
    blog: shadow-md [image + meta + title + excerpt],
    profile: shadow-lg p-8 text-center [avatar + name + role],
    pricing: shadow-xl border-2 [plan + price + features + CTA],
    stats: shadow-md border-l-4 border-blue-600 [label + value + change],
    glass: backdrop-blur-lg bg-white/10 border border-white/20,
    gradient: bg-gradient-to-br from-blue-600 to-purple-700 text-white
  },

  structure: {
    container: flex flex-col,
    image: aspect-video w-full object-cover,
    content: p-6 space-y-4,
    footer: pt-4 mt-auto border-t border-gray-100
  },

  interactive: {
    hover: hover:-translate-y-1 hover:shadow-xl transition-all duration-300,
    cursor: cursor-pointer,
    group: group [for group-hover effects]
  }
}
```

---

### FORM

**Variants:** `contact`, `login`, `register`, `payment`, `search`, `newsletter`

**Options:**
- `--floating-labels` - Use floating label pattern
- `--inline-validation` - Add validation states
- `--multi-step` - Multi-step form structure

**Specification:**
```
FORM = {
  container: max-w-md mx-auto bg-white p-8 rounded-2xl shadow-xl,

  variants: {
    contact: [name, email, subject, message, submit],
    login: [email, password, remember, forgot, submit, social],
    register: [name, email, password, confirm, terms, submit],
    payment: [cardholder, number, expiry, cvv, submit],
    search: [search input + suggestions],
    newsletter: [email + subscribe button, inline]
  },

  field: {
    label: block text-sm font-semibold text-gray-700 mb-2,
    input: w-full px-4 py-3 border-2 border-gray-300 rounded-lg
           focus:border-blue-500 focus:ring-4 focus:ring-blue-100
           transition-all duration-200,
    error: border-red-500 focus:ring-red-100 + error message,
    success: border-green-500 focus:ring-green-100 + checkmark
  },

  floatingLabel: {
    container: relative,
    input: pt-6 pb-2 peer,
    label: absolute left-4 top-2 text-xs text-gray-600
           peer-placeholder-shown:top-4 peer-placeholder-shown:text-base
           peer-focus:top-2 peer-focus:text-xs peer-focus:text-blue-600
           transition-all duration-200
  },

  submit: {
    base: w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold
          py-3 rounded-lg shadow-md hover:shadow-lg transition-all duration-200,
    loading: [spinner + "Submitting..."]
  }
}
```

---

### NAV

**Variants:** `default`, `glassmorphism`, `minimal`, `dark`, `sidebar`, `bottom-tabs`

**Options:**
- `--with-search` - Include search
- `--with-user-menu` - Include user dropdown
- `--mega-menu` - Enable mega menu dropdowns

**Specification:**
```
NAV = {
  container: fixed top-0 left-0 right-0 z-50,

  variants: {
    default: bg-white/90 backdrop-blur-lg border-b border-gray-200,
    glassmorphism: backdrop-blur-lg bg-white/70 border-b border-white/20,
    minimal: bg-white border-b border-gray-200,
    dark: bg-gray-900/95 backdrop-blur-lg border-b border-gray-800,
    sidebar: fixed left-0 top-0 bottom-0 w-64 bg-gray-900,
    bottom-tabs: fixed bottom-0 left-0 right-0 bg-white border-t md:hidden
  },

  structure: {
    wrapper: max-w-7xl mx-auto px-4 sm:px-6 lg:px-8,
    layout: flex justify-between items-center h-20,
    logo: flex items-center gap-2 text-xl font-bold,
    links: hidden md:flex gap-8,
    actions: flex items-center gap-4,
    mobile: md:hidden hamburger + slide-out
  },

  link: {
    base: text-gray-700 hover:text-blue-600 font-medium text-sm transition-colors,
    active: text-blue-600 font-semibold
  },

  scroll: {
    transparent: bg-transparent -> bg-white/90 on scroll,
    shrink: h-24 -> h-16 on scroll
  }
}
```

---

## ORCHESTRATE: Composition Patterns

Components compose naturally:

```jsx
// Card containing Form with Buttons
<Card variant="default">
  <Form variant="contact">
    <Input label="Name" />
    <Input label="Email" type="email" />
    <Textarea label="Message" />
    <Button variant="primary" fullWidth>Send</Button>
  </Form>
</Card>

// Nav with Button CTAs
<Nav variant="glassmorphism">
  <Logo />
  <NavLinks />
  <Button variant="secondary">Sign In</Button>
  <Button variant="primary">Get Started</Button>
</Nav>
```

---

## VERIFY: Quality Checklist

Before output, verify Q(component) >= 0.9:

### Accessibility (weight: 0.3)
- [ ] Semantic HTML elements
- [ ] ARIA labels where needed
- [ ] Keyboard navigable
- [ ] Focus indicators visible
- [ ] Color contrast >= 4.5:1
- [ ] Touch targets >= 44x44px

### Responsiveness (weight: 0.3)
- [ ] Mobile-first base styles
- [ ] Breakpoints: sm, md, lg, xl
- [ ] Flexible layouts (flex/grid)
- [ ] Readable at all sizes

### Design System (weight: 0.2)
- [ ] Uses design system tokens
- [ ] Consistent spacing
- [ ] Correct typography scale
- [ ] Proper color usage

### Interactions (weight: 0.2)
- [ ] Hover states
- [ ] Focus states
- [ ] Active states
- [ ] Transitions smooth (200-300ms)
- [ ] Loading states (if applicable)

---

## DEPLOY: Output Format

```
## [Component Type]: [Variant]

[Component code - complete implementation]

### Usage
[How to use the component]

### Props/API
[Available props with types]

### Composition
[How to compose with other components]

### Customization
[Quick tips for customization]
```

---

## Examples

**Input:** `/ui-component button primary --with-icon --size=lg`

**Output:**
```jsx
function PrimaryButton({ children, icon: Icon, loading, ...props }) {
  return (
    <button
      className="
        inline-flex items-center justify-center gap-2
        px-8 py-4 text-lg font-semibold
        bg-blue-600 hover:bg-blue-700 active:bg-blue-800
        text-white rounded-lg
        shadow-md hover:shadow-lg
        transition-all duration-200 ease-out
        focus:ring-4 focus:ring-blue-100 focus:outline-none
        active:scale-98
        disabled:opacity-50 disabled:cursor-not-allowed
      "
      disabled={loading}
      {...props}
    >
      {Icon && <Icon className="w-6 h-6" />}
      {loading ? 'Loading...' : children}
    </button>
  );
}
```

---

**Compose beautifully. Build systematically.**
