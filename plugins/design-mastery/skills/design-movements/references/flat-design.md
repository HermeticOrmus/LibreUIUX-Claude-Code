# Interface styles: skeuomorphism to flat, Material, and after (c. 2000-present)

This file covers the digital-native lineage the SKILL.md describes as Web 2.0 skeuomorphism, Flat Design, and Contemporary Eclecticism.

## Origins and context

| Phase | Where it came from | Reacting against | Core belief |
|-------|--------------------|------------------|-------------|
| Skeuomorphism (2000s to 2013) | Apple's Mac OS X Aqua (2000-01) and iPhone OS (2007 onward), web 2.0 glossy buttons | Gray, abstract desktop chrome | Borrow the look of physical objects so new interfaces feel familiar |
| Metro (2006 onward) | Microsoft: Windows Media Center, the Zune interface (2006), formally introduced with Windows Phone 7 (2010), then Xbox and Windows 8 (2012) | Icon-heavy, chrome-heavy mobile UI | Typography and content first; the team cited Swiss graphic design and transit signage |
| Flat (2013 onward) | Apple's iOS 7 (2013) redesign, following Metro | Skeuomorphic textures (felt, leather, wood) | Digital surfaces should look digital |
| Material Design (2014 onward) | Google, announced at Google I/O on 25 June 2014 (lead: Matías Duarte); Material You (Material Design 3) announced 2021 with Android 12 | Flat design's lack of hierarchy and affordance cues | Flat surfaces arranged in space: paper-like layers, elevation shadows, meaningful motion |
| Contemporary eclecticism (late 2010s onward) | Dribbble, design Twitter, OS vendors | Flat monotony | Many styles available at once, chosen for meaning |

Microsoft dropped the "Metro" name in 2012 over a trademark dispute and later moved to the Fluent Design System (2017), which reintroduced depth, light, and translucent "acrylic" material.

## Key works

| Product or person | Work | Year | What it shows |
|-------------------|------|------|---------------|
| Apple | Mac OS X Aqua interface | 2000-01 | Translucent, glossy, "lickable" controls |
| Apple (iOS under Scott Forstall) | Game Center felt table, Notes legal pad, iBooks wooden shelf | 2007-12 | Skeuomorphism at its peak |
| Microsoft | Zune HD and Windows Phone 7 (Metro) | 2009-10 | Big type, live tiles, content over chrome |
| Apple (Jony Ive) | iOS 7 | 2013 | Flat color, thin type, translucent layers with blur |
| Google (Matías Duarte) | Material Design | 2014 | Elevation and shadow as a hierarchy system |
| Alexander Plyuto | Skeuomorphic banking app concept on Dribbble | 2019 | The viral shot behind "neumorphism" |
| Michał Malewicz | Named "neumorphism" (with Jason Kelly) and "glassmorphism" | 2019-20 | Trend naming by practitioners |
| Apple | macOS Big Sur | 2020 | Translucent materials that popularized "glassmorphism" |
| Apple | Liquid Glass, announced at WWDC | 2025 | Refractive, translucent system material across Apple platforms |

## Visual markers and the principles behind them

| Style | Markers | Principle |
|-------|---------|-----------|
| Skeuomorphism | Textures, bevels, gloss, stitching, realistic icons | Familiarity through physical metaphor |
| Flat | Solid color, no shadows or gradients, simple icons, generous space | Honesty to the medium; scales cleanly across screen sizes |
| Material | Flat surfaces, consistent elevation shadows, bold color, motion that explains cause and effect | Depth as information, not decoration |
| Neumorphism | Same-color surfaces with paired light and dark soft shadows, extruded or pressed controls | Soft tactility |
| Glassmorphism | Translucent panels, background blur, thin light borders over vivid backgrounds | Layering and context: you can see what is behind |
| Web brutalism and anti-design | Raw HTML look, system fonts, harsh borders, visible structure | Reaction against polished template sameness |

## Applying it in UI work

- **Flat and Material** are the working default for most product UI. Use elevation (shadow) to encode hierarchy consistently, not as decoration.
- **Glassmorphism** fits overlays on rich imagery (media players, maps, wallpapers) where seeing the background matters.
- **Neumorphism** fits a small number of large, low-density controls (a smart-home dial). It fails for dense or text-heavy UI.
- **Skeuomorphic touches** still help where a physical metaphor carries meaning (a knob, a page curl in a reading app), used sparingly.

### Tokens

```css
/* Material-style elevation scale: shadow encodes hierarchy */
:root {
  --elev-1: 0 1px 2px rgb(0 0 0 / 0.12), 0 1px 3px rgb(0 0 0 / 0.08);
  --elev-2: 0 2px 6px rgb(0 0 0 / 0.14);
  --elev-3: 0 8px 24px rgb(0 0 0 / 0.16);
}

/* Glass panel with a readable fallback */
.glass {
  background: rgb(255 255 255 / 0.72);
  -webkit-backdrop-filter: blur(16px);
  backdrop-filter: blur(16px);
  border: 1px solid rgb(255 255 255 / 0.5);
}
@supports not (backdrop-filter: blur(1px)) {
  .glass { background: rgb(255 255 255 / 0.95); }
}
```

```html
<!-- Tailwind: glass card with enough opacity to keep text legible -->
<div class="rounded-2xl bg-white/70 backdrop-blur-lg border border-white/50 shadow-lg p-6 text-neutral-900">
  <p class="text-sm font-medium">Now playing</p>
</div>

<!-- Neumorphic toggle surface: pair it with a visible focus ring and a text label -->
<button class="rounded-2xl bg-[#e6e9ef] p-6 shadow-[8px_8px_16px_#c4c7cc,-8px_-8px_16px_#ffffff] focus-visible:ring-2 focus-visible:ring-blue-600">
  Lights
</button>
```

### Accessibility notes

- **Neumorphism** relies on faint shadows of the same hue as the background, so control boundaries often fall below the 3:1 non-text contrast that WCAG 1.4.11 asks for, and pressed versus unpressed states are hard to tell apart. Add borders, icons, or text state labels.
- **Glassmorphism** puts text over a changing, unknown background. Raise panel opacity until text meets 4.5:1 against the worst case behind it, and provide the `@supports` fallback. Respect `prefers-reduced-transparency` where browsers support it.
- **Flat** design can remove affordances. Buttons and links still need a visible shape, underline, or other cue that they are interactive.

## Common misreadings

- **"iOS 7 invented flat design."** Microsoft's Metro came first; iOS 7 made the direction mainstream.
- **"Material Design is flat design."** Material is a reaction to pure flat: it brings back shadow and depth as a structured system.
- **"Flat design was caused by responsive design."** The two developed in the same period and suit each other (flat assets scale easily), but neither caused the other.
- **"Neumorphism and glassmorphism are movements."** They are visual treatments named by practitioners; treat them as effects to use deliberately.

## Legacy and current state

The current moment is eclectic: flat and Material structure, translucency returning at the OS level (Fluent acrylic, Big Sur, Liquid Glass), dark modes, variable fonts, and revivals (Y2K, Memphis, brutalism) used as brand layers. The durable skill is choosing a treatment for what it communicates and keeping the functional layer accessible.

---

## Quick reference

**Reach for flat or Material when**: building product UI that must scale and stay clear.
**Reach for glass when**: the background carries meaning; **neumorphism** only for a few large, labeled controls.

**Recipe**:
1. Flat surfaces, one consistent elevation scale for hierarchy.
2. Translucency only over rich imagery, with an opaque fallback.
3. Every interactive element keeps a visible boundary, focus ring, and label.
