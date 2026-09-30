# Visual hierarchy

Hierarchy is the order in which a person notices things. Every screen has one, whether you designed it or not. Good hierarchy makes that order match the order of importance: the one thing that matters most is seen first, the supporting information second, the details last.

## The tools

Each tool raises or lowers an element's position in the reading order. Use as few as you need; stacking every tool on one element flattens everything else into noise.

| Tool | Raises priority | Lowers priority | Tailwind levers |
|------|-----------------|-----------------|-----------------|
| **Size** | Larger | Smaller | `text-*`, `w-*`, `h-*` |
| **Weight** | Bolder | Lighter | `font-semibold`, `font-normal` |
| **Color** | Saturated, brand, warm | Muted, gray | `text-slate-900` vs `text-slate-500` |
| **Contrast** | High contrast with surroundings | Low contrast | Foreground/background pairs |
| **Position** | Top, start of reading direction, center of focus | Bottom, periphery | Order in the layout |
| **Spacing** | Isolated by white space | Packed with neighbors | `p-*`, `gap-*`, `my-*` |
| **Depth** | Elevated (shadow, overlay) | Flat, recessed | `shadow-*`, `ring-*`, `z-*` |
| **Motion** | Moving or changing | Static | `transition`, `animate-*` (sparingly) |

Motion is the strongest attention signal and the easiest to abuse. Reserve it for state changes the user needs to notice, and honor `prefers-reduced-motion`.

## Three levels are usually enough

Most views work with three tiers:

| Tier | Contains | Typical treatment |
|------|----------|-------------------|
| **Primary** | Page purpose, main headline, the main action | Largest type or strongest color, most isolation |
| **Secondary** | Section headings, key data, secondary actions | Medium size, full-contrast text |
| **Tertiary** | Metadata, captions, helper text, timestamps | Small size, muted color |

If you find yourself inventing a fifth or sixth distinct tier, the content usually needs regrouping rather than more styling.

## Emphasis by de-emphasis

Making the important thing louder is only half the job. Often the better move is to quiet everything else.

```html
<!-- Before: everything shouts -->
<div class="font-bold text-slate-900">
  <p class="text-lg">Revenue</p>
  <p class="text-lg">$48,200</p>
  <p class="text-lg">+12% vs last period</p>
</div>

<!-- After: one number leads, the rest supports -->
<div>
  <p class="text-sm font-medium text-slate-500">Revenue</p>
  <p class="text-3xl font-semibold tracking-tight text-slate-900">$48,200</p>
  <p class="text-sm text-emerald-700">+12% vs last period</p>
</div>
```

The label became smaller and grayer, the value became larger, and the delta kept a semantic color at small size. Hierarchy improved without adding anything.

## Scanning patterns

People scan before they read. Nielsen Norman Group eyetracking research documents several patterns:

| Pattern | Source | What happens | Design response |
|---------|--------|--------------|-----------------|
| **F-pattern** | Jakob Nielsen, NN/g, 2006; reconfirmed by Kara Pernice, NN/g, 2017 and 2019 | Readers scan across the top, then a shorter line lower down, then down the left edge | Put the key words at the start of headings and list items; do not bury the point at the end of a line |
| **Layer-cake** | Pernice, NN/g, 2019 ("Text Scanning Patterns: Eyetracking Evidence") | Eyes jump from heading to heading, skipping body text until a section looks relevant | Write headings that carry meaning on their own |
| **Spotted** | Same article | Eyes skip around looking for specific things (numbers, links, keywords) | Make target items visually findable (format numbers, style links clearly) |
| **Commitment** | Same article | Motivated readers read nearly everything | Still structure the page; committed readers benefit from clear hierarchy too |

NN/g frames the F-pattern as a symptom of content that gives readers no better path, not as a layout to aim for. Strong headings, front-loaded text, and chunking replace it with the more efficient layer-cake behavior.

The **Z-pattern** is a layout convention rather than an eyetracking finding: on sparse pages (landing pages, hero sections) designers place logo top left, navigation or CTA top right, content across the middle, and the action bottom right, following a zig-zag. Treat it as a heuristic for simple, low-text layouts.

## Type scale ratios (modular scale)

A consistent ratio between sizes makes hierarchy feel intentional. Multiply a base size by the ratio for each step up.

| Ratio | Name | Steps from 16px | Suits |
|-------|------|-----------------|-------|
| 1.125 | Major second | 16, 18, 20.25, 22.8 | Dense apps, dashboards |
| 1.2 | Minor third | 16, 19.2, 23, 27.6 | General UI |
| 1.25 | Major third | 16, 20, 25, 31.25 | Content sites, marketing |
| 1.333 | Perfect fourth | 16, 21.3, 28.4, 37.9 | Editorial, bold marketing |
| 1.5 | Perfect fifth | 16, 24, 36, 54 | Display-heavy pages |
| 1.618 | Golden ratio | 16, 25.9, 41.9, 67.8 | Dramatic heroes, few levels |

The Tailwind default scale is hand-tuned rather than a single ratio (`text-base` 16px, `text-lg` 18px, `text-xl` 20px, `text-2xl` 24px, `text-3xl` 30px, `text-4xl` 36px). Pick steps from it that keep a clear jump between tiers, for example `text-sm` / `text-base` / `text-2xl` / `text-4xl`. A tool such as modularscale.com (Tim Brown) generates exact values if you want a strict ratio.

See [typography-fundamentals.md](typography-fundamentals.md) for line length, leading, and tracking.

## One primary action per view

When two buttons are both styled as primary, neither is. Pick the single action the view exists for and give it the primary treatment; everything else steps down.

| Action type | Treatment | Example |
|-------------|-----------|---------|
| Primary | Filled brand color, largest button | "Create project" |
| Secondary | Outline or subtle fill | "Import" |
| Tertiary | Text or ghost button | "Learn more" |
| Destructive | Red, usually secondary weight until confirmation | "Delete" |

```html
<div class="flex gap-3">
  <button class="rounded-md bg-indigo-600 px-4 py-2 font-medium text-white">Create project</button>
  <button class="rounded-md px-4 py-2 font-medium text-slate-700 ring-1 ring-slate-300">Import</button>
</div>
```

Exceptions exist (a confirm dialog may give "Cancel" and "Delete" similar size), but the rule holds for the view as a whole.

## Dashboard hierarchy

Dashboards fail when every widget competes. Order the page by the decisions it supports.

1. **Answer first**: the few numbers that say whether things are fine (top row, largest values)
2. **Explanation second**: trend charts that explain the numbers
3. **Detail last**: tables, logs, breakdowns, below the fold or behind drill-down

| Element | Primary signal | Keep quiet |
|---------|----------------|------------|
| KPI card | The value | Label, period, sparkline |
| Chart | The data series that matters | Gridlines, axis labels, legend |
| Table | Row identifiers and the key column | Borders, secondary columns |
| Alert | Severity color + one-line message | Timestamp, IDs |

Muted gridlines (`stroke-slate-200`), right-aligned tabular numbers (`tabular-nums`), and one accent color for the series under discussion do more than any decoration.

## Testing hierarchy

**Squint or blur test**: Blur a screenshot (or squint). The primary element should still be obvious, the groups should still read as groups, and the main action should still be findable.

**Grayscale test**: Remove color. If the hierarchy collapses, it depended on color alone, which also fails users with color vision deficiency.

**First-glance test**: Show the screen briefly to someone unfamiliar with it, then ask what the page is for and what they would click. If the answers differ from your intent, the hierarchy is wrong.

**Five-word test**: Describe the reading order in five words ("headline, price, button, features, footer"). If you cannot, neither can the user.

## Common failures

| Symptom | Cause | Fix |
|---------|-------|-----|
| "Nothing stands out" | All elements at similar size/weight | Enlarge one element, mute the rest |
| "Everything stands out" | Too many bold, colored, or large items | Remove emphasis from all but the primary tier |
| "Users miss the button" | CTA color used elsewhere, or CTA lacks space | Reserve the CTA color, isolate the button |
| "Headings look like body" | Size step too small | Use a larger ratio or add weight contrast |
| "The page feels flat" | No depth or spacing variation | Group into regions; vary spacing between tiers |

## Related references

- [gestalt-principles.md](gestalt-principles.md): how grouping forms before hierarchy is read
- [composition-rules.md](composition-rules.md): position, balance, focal point
- [color-theory.md](color-theory.md): contrast and emphasis through color
- [../assets/principles-checklist.md](../assets/principles-checklist.md): evaluation checklist
