# Color Theory for Digital Design

Color is the most emotional element of design. It's processed before form, before text, before meaning. Use it intentionally.

## The Science

### How We See Color
Colors are wavelengths of light. The eye has three types of cones:
- L-cones (red-sensitive)
- M-cones (green-sensitive)
- S-cones (blue-sensitive)

This is why RGB works for screens—we're directly stimulating the three cone types.

### Color Properties

| Property | Definition | Design Use |
|----------|------------|------------|
| **Hue** | The color itself (red, blue, green) | Brand identity, emotion |
| **Saturation** | Intensity (vivid to gray) | Energy level, sophistication |
| **Brightness/Value** | Light to dark | Hierarchy, contrast |

## Color Relationships

### The Color Wheel
```
        Yellow (60°)
           │
  Green    │    Orange
  (120°)   │    (30°)
     ╲     │     ╱
      ╲    │    ╱
       ╲   │   ╱
Cyan ───── + ───── Red (0°/360°)
       ╱   │   ╲
      ╱    │    ╲
     ╱     │     ╲
   Blue    │   Magenta
  (240°)   │   (300°)
           │
      Violet (270°)
```

### Harmony Types

#### Complementary
Colors opposite on wheel. High contrast, vibrant.
```
Primary: Blue (#2563eb)
Complement: Orange (#ea580c)
```
**Use**: CTAs against backgrounds, emphasis

#### Analogous
Colors adjacent on wheel. Harmonious, calm.
```
Primary: Blue (#2563eb)
Adjacent 1: Cyan (#0891b2)
Adjacent 2: Violet (#7c3aed)
```
**Use**: Cohesive palettes, subtle variation

#### Triadic
Three colors equally spaced. Balanced, dynamic.
```
Color 1: Blue (#2563eb)
Color 2: Yellow (#ca8a04)
Color 3: Red (#dc2626)
```
**Use**: Playful brands, data visualization

#### Split Complementary
One color + two adjacent to its complement. Less tension than complementary.
```
Primary: Blue (#2563eb)
Split 1: Yellow-orange (#d97706)
Split 2: Red-orange (#ea580c)
```
**Use**: Vibrant but balanced palettes

## The 60-30-10 Rule

Balance a color palette by proportion:

```
60% - Dominant color (backgrounds, large areas)
30% - Secondary color (supporting elements)
10% - Accent color (CTAs, highlights)
```

### Example Application
```css
/* Light mode */
--color-dominant: #f8fafc;   /* 60% - Background (slate-50) */
--color-secondary: #1e293b;  /* 30% - Text (slate-800) */
--color-accent: #2563eb;     /* 10% - CTAs (blue-600) */

/* Dark mode */
--color-dominant: #0f172a;   /* 60% - Background (slate-900) */
--color-secondary: #e2e8f0;  /* 30% - Text (slate-200) */
--color-accent: #3b82f6;     /* 10% - CTAs (blue-500) */
```

## Color Psychology

### Emotional Associations

| Color | Positive | Negative | Use For |
|-------|----------|----------|---------|
| **Red** | Energy, passion, action | Danger, aggression | CTAs, errors, alerts |
| **Orange** | Warmth, enthusiasm, creativity | Cheap, overwhelming | Secondary CTAs, highlights |
| **Yellow** | Optimism, happiness, attention | Caution, anxiety | Highlights, warnings |
| **Green** | Growth, health, success | Envy, inexperience | Success states, eco brands |
| **Blue** | Trust, calm, professional | Cold, distant | Enterprise, finance, tech |
| **Purple** | Luxury, creativity, wisdom | Artificial, arrogant | Premium, creative brands |
| **Pink** | Playful, feminine, kind | Immature, weak | Beauty, youth brands |
| **Brown** | Earthy, reliable, warm | Dirty, boring | Organic, artisanal brands |
| **Black** | Elegant, powerful, sophisticated | Death, evil | Luxury, fashion |
| **White** | Pure, clean, simple | Sterile, empty | Tech, healthcare |
| **Gray** | Neutral, balanced, mature | Boring, uncertain | Backgrounds, text |

### Cultural Considerations

Color meanings vary by culture:

| Color | Western | Eastern | Middle East |
|-------|---------|---------|-------------|
| White | Purity, weddings | Death, mourning | Purity |
| Red | Danger, passion | Luck, prosperity | Danger |
| Yellow | Happiness | Royalty, sacred | Happiness |
| Green | Nature, money | Fertility | Islam, paradise |
| Blue | Trust, sadness | Immortality | Protection |

## Accessibility

### WCAG Contrast Requirements

| Content Type | Minimum Ratio | Tailwind Example |
|--------------|---------------|------------------|
| Body text | 4.5:1 | gray-600 on white |
| Large text (18px+) | 3:1 | gray-500 on white |
| UI components | 3:1 | blue-600 for buttons |
| Non-essential | None | Decorative elements |

### Testing Tools
- WebAIM Contrast Checker
- Stark (Figma plugin)
- Chrome DevTools color picker

### Color Blindness

| Type | Affected Colors | Prevalence |
|------|-----------------|------------|
| Protanopia | Red-green | 1% of males |
| Deuteranopia | Red-green | 6% of males |
| Tritanopia | Blue-yellow | 0.01% of all |

**Solutions**:
- Never rely on color alone
- Add icons, patterns, or text
- Test with simulation tools
- Use color-blind safe palettes

## Building Palettes

### From Brand Color

Starting with one brand color, build a system:

```javascript
// Example: Starting with blue-600 (#2563eb)
const palette = {
  // Primary scale (tint/shade the brand color)
  primary: {
    50: '#eff6ff',   // Very light tint
    100: '#dbeafe',
    200: '#bfdbfe',
    300: '#93c5fd',
    400: '#60a5fa',
    500: '#3b82f6',  // Lighter than brand
    600: '#2563eb',  // Brand color
    700: '#1d4ed8',  // Darker
    800: '#1e40af',
    900: '#1e3a8a',
    950: '#172554',  // Very dark shade
  },

  // Neutrals (slight brand undertone optional)
  gray: {
    50: '#f9fafb',
    // ... standard gray scale
    900: '#111827',
  },

  // Semantic (choose accessible options)
  success: '#22c55e',  // green-500
  warning: '#f59e0b',  // amber-500
  error: '#ef4444',    // red-500
  info: '#3b82f6',     // blue-500
};
```

### Semantic Color System

```css
:root {
  /* Core */
  --color-primary: theme('colors.blue.600');
  --color-primary-hover: theme('colors.blue.700');
  --color-primary-light: theme('colors.blue.50');

  /* Semantic */
  --color-success: theme('colors.green.500');
  --color-success-light: theme('colors.green.50');
  --color-success-dark: theme('colors.green.700');

  --color-warning: theme('colors.amber.500');
  --color-warning-light: theme('colors.amber.50');
  --color-warning-dark: theme('colors.amber.700');

  --color-error: theme('colors.red.500');
  --color-error-light: theme('colors.red.50');
  --color-error-dark: theme('colors.red.700');

  /* Surface */
  --color-background: theme('colors.white');
  --color-surface: theme('colors.gray.50');
  --color-border: theme('colors.gray.200');

  /* Text */
  --color-text-primary: theme('colors.gray.900');
  --color-text-secondary: theme('colors.gray.600');
  --color-text-muted: theme('colors.gray.400');
}
```

## Dark Mode

### Inversion Strategy

Don't just invert—adjust:

| Light Mode | Dark Mode | Why |
|------------|-----------|-----|
| white bg | gray-900 bg | Pure black is too harsh |
| gray-900 text | gray-100 text | Slightly off-white is easier |
| blue-600 primary | blue-400 primary | Saturated colors need lightening |
| shadow-lg | shadow-none or subtle | Shadows work differently on dark |

### Implementation

```css
/* CSS variables approach */
:root {
  --bg: #ffffff;
  --text: #111827;
  --primary: #2563eb;
}

.dark {
  --bg: #0f172a;
  --text: #f1f5f9;
  --primary: #60a5fa;
}

/* Tailwind approach */
<div class="bg-white dark:bg-slate-900">
  <p class="text-gray-900 dark:text-gray-100">
    <a class="text-blue-600 dark:text-blue-400">Link</a>
  </p>
</div>
```

## Quick Reference

### Common Palettes by Industry

| Industry | Primary | Why |
|----------|---------|-----|
| Finance | Blue | Trust, stability |
| Healthcare | Blue/Green | Calm, healing |
| Tech | Blue/Purple | Innovation, trust |
| Food | Red/Orange | Appetite, energy |
| Eco | Green/Brown | Nature, earth |
| Luxury | Black/Gold | Elegance, premium |
| Creative | Purple/Pink | Imagination, bold |
| Education | Blue/Orange | Trust, enthusiasm |

### Tailwind Recommendations

```javascript
// Solid defaults for most projects
{
  primary: colors.blue,      // Trust, works universally
  gray: colors.slate,        // Warmer than pure gray
  success: colors.green,
  warning: colors.amber,     // More visible than yellow
  error: colors.red,
}
```
