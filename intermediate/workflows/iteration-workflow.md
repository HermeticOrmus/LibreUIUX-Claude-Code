# The Iteration Workflow: Refining UI Components

Learn the systematic approach to iterate and refine UI components with Claude Code until they're perfect.

---

## 🎯 The Problem

**Common scenario:**
1. You request a component from Claude
2. Result is "okay" but not quite right
3. You say "make it better" (too vague)
4. Claude guesses what you want
5. Results get worse or random
6. Repeat frustratingly...

**Sound familiar?**

---

## ✨ The Solution: Systematic Iteration

The key is **specific, measured feedback** instead of vague requests.

### The 4-Step Iteration Loop

```
1. Get Initial Component
   ↓
2. View & Inspect in Browser
   ↓
3. Identify Specific Issues
   ↓
4. Request Targeted Changes
   ↓
(Repeat until perfect)
```

---

## 📋 Step 1: Get Initial Component

### Start with a Good Foundation

Use beginner prompts or design system specs:

**Good initial request:**
```
Following the design system, create a pricing card with:
- Container: max-w-sm bg-white rounded-xl shadow-md p-6
- Plan name: text-2xl font-bold
- Price: text-4xl font-extrabold with smaller /month text
- Features list with checkmark icons
- CTA button: primary button style, full width
- Hover: lift effect
```

**Not this:**
```
"Create a pricing card" ❌
```

### Save the Initial Version

```bash
# Save to file immediately
cp component.tsx component.v1.tsx
```

This lets you compare versions.

---

## 📱 Step 2: View & Inspect in Browser

### Open in Browser
```bash
npm run dev
# or
python -m http.server 8000
```

### Use Browser DevTools

**Chrome/Edge/Firefox DevTools:**
- Right-click element → "Inspect"
- View actual CSS values
- Test changes live
- Measure spacing/sizes

**Key DevTools features:**
1. **Element inspector**: See actual styles
2. **Edit live**: Test changes before committing
3. **Box model**: Visualize padding/margin
4. **Computed styles**: See final values
5. **Device toolbar**: Test responsive

---

## 🔍 Step 3: Identify Specific Issues

### Use the Checklist Method

Go through each aspect systematically:

#### ✅ Spacing Checklist
- [ ] Padding inside elements (too tight/loose?)
- [ ] Margin between elements (too close/far?)
- [ ] Gap in flex/grid layouts (consistent?)
- [ ] Section spacing (enough whitespace?)

#### ✅ Typography Checklist
- [ ] Font size (too small/large?)
- [ ] Font weight (too light/bold?)
- [ ] Line height (cramped/spaced?)
- [ ] Color (contrast sufficient?)
- [ ] Letter spacing (needed?)

#### ✅ Visual Checklist
- [ ] Colors (match design system?)
- [ ] Border radius (too sharp/round?)
- [ ] Shadows (too subtle/harsh?)
- [ ] Borders (thickness, color)
- [ ] Background (right shade?)

#### ✅ Interaction Checklist
- [ ] Hover effects (present, smooth?)
- [ ] Transitions (duration right?)
- [ ] Active states (clear?)
- [ ] Focus states (visible?)
- [ ] Cursor (correct type?)

#### ✅ Responsive Checklist
- [ ] Mobile view (usable?)
- [ ] Tablet view (layout ok?)
- [ ] Desktop view (not too wide?)
- [ ] Breakpoints (transitions smooth?)

### Document Specific Issues

**Bad (vague):**
```
- Card looks off
- Spacing is weird
- Colors don't pop
```

**Good (specific):**
```
- Card padding: currently p-4 (16px), needs p-6 (24px)
- Gap between title and price: currently gap-2, needs gap-4
- Shadow: currently shadow-md, needs shadow-lg for more depth
- Primary color: using blue-500, should be blue-600 (from design system)
- Hover: missing scale effect, add hover:scale-105
```

---

## 🎯 Step 4: Request Targeted Changes

### Use the "Change X to Y" Pattern

**Perfect change request:**
```
Make these specific changes to the pricing card:

1. SPACING:
   - Change card padding from p-4 to p-6
   - Change gap between features from gap-2 to gap-3
   - Add mb-4 to the plan name

2. SHADOWS:
   - Change card shadow from shadow-md to shadow-lg
   - On hover, change to shadow-2xl (currently shadow-lg)

3. COLORS:
   - Change primary button from bg-blue-500 to bg-blue-600
   - Change hover state to bg-blue-700

4. TYPOGRAPHY:
   - Change price from text-3xl to text-4xl
   - Make plan name font-extrabold instead of font-bold

5. HOVER EFFECTS:
   - Add scale-105 to card hover
   - Increase transition duration from 200ms to 300ms
```

**Why this works:**
- ✅ Specific values (not "make bigger")
- ✅ Current vs. desired state
- ✅ Organized by category
- ✅ No ambiguity

### Use Exact CSS Values

When you find the perfect value in DevTools:

```
In DevTools, I changed the shadow to:
box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.15);

Apply this exact shadow to the card.
```

---

## 🔄 The Iteration Loop in Practice

### Real Example: Hero Section

**Iteration 1:**
```
Request: Create a hero section
Result: Basic hero with title, subtitle, button
Issues: Spacing cramped, text too small, button generic
```

**Iteration 2:**
```
Request:
- Change heading from text-4xl to text-6xl
- Change subtitle from text-lg to text-xl
- Add mt-6 between heading and subtitle
- Change button to primary button style from design system
- Add py-20 to section

Result: Better! But still issues
Issues: Heading needs more line-height, button needs margin
```

**Iteration 3:**
```
Request:
- Add leading-tight to heading
- Add mt-8 to button (space from subtitle)
- Change section padding to py-24 on desktop (keep py-20 on mobile)

Result: Perfect! ✨
```

**Total time:** 10 minutes vs. 1 hour of vague back-and-forth

---

## 🛠️ Tools for Iteration

### 1. Browser DevTools (Essential)

**How to use:**
1. Inspect element
2. Edit CSS live
3. Find perfect values
4. Copy to Claude request

**Example:**
```
DevTools: padding: 24px works better than 16px
Request: "Change p-4 to p-6 on the card"
```

### 2. Design Tool Measurements

**Figma/Sketch users:**
- Measure exact spacing
- Export specific values
- Match in code

### 3. Screenshot Comparison

**Take screenshots:**
```bash
# Before iteration
screenshot-before.png

# After iteration
screenshot-after.png
```

**Side-by-side comparison** helps track progress.

### 4. Version Control

```bash
git commit -m "Hero section v1 - initial"
# Make changes
git commit -m "Hero section v2 - spacing fixes"
# Make changes
git commit -m "Hero section v3 - final"
```

Easy to revert if iteration goes wrong.

---

## 💡 Pro Tips

### 1. Fix One Category at a Time

**Don't mix concerns:**
```
❌ Bad:
"Change spacing, colors, and make it responsive"

✅ Good:
"First, fix spacing:
 - Card padding p-4 → p-6
 - Gap between items gap-4 → gap-6"

Then in next request:
"Now fix colors:
 - Primary bg-blue-500 → bg-blue-600
 - Text text-gray-600 → text-gray-700"
```

**Why:** Easier to track what changed, easier to revert if needed.

### 2. Test Responsive at Each Iteration

Don't wait until the end!

```
After each change:
1. Test mobile view
2. Test tablet view
3. Test desktop view
```

Catch responsive issues early.

### 3. Keep a "Changes Log"

```markdown
# Hero Section Iterations

## v1 → v2
- Heading: text-4xl → text-6xl
- Padding: py-16 → py-20
- Button: added shadow-lg

## v2 → v3
- Heading: added leading-tight
- Button: added mt-8
- Added responsive text sizes

## v3 (Final)
- Perfect! Shipped.
```

Great reference for future components.

### 4. Use "Show Me" Comparisons

When something works elsewhere:

```
The spacing on the pricing page cards is perfect.
Use that same padding (p-6) and gap (gap-6) on these feature cards.
```

Reference existing good work.

### 5. Batch Small Changes

**For tiny adjustments:**
```
Small refinements:
- Increase button font from text-base to text-lg
- Change border from border to border-2
- Add font-semibold to the heading
```

**But keep separate for major changes.**

---

## 🚫 Common Mistakes

### ❌ Mistake 1: Vague Feedback

**Bad:**
```
"The card doesn't look right"
"Make it more modern"
"Improve the spacing"
```

**Good:**
```
"Change card shadow from shadow-sm to shadow-md"
"Add rounded-xl corners (currently rounded-lg)"
"Increase padding from p-4 to p-6"
```

### ❌ Mistake 2: Too Many Changes at Once

**Bad:**
```
Change 15 different things simultaneously
```

**Good:**
```
Fix 3-4 related things, test, then iterate again
```

### ❌ Mistake 3: Not Testing Between Iterations

**Bad:**
```
Make 5 change requests without viewing results
```

**Good:**
```
Make change → View in browser → Assess → Next change
```

### ❌ Mistake 4: Accepting "Good Enough"

**Bad:**
```
"It's 80% there, I'll just ship it"
```

**Good:**
```
Iterate 1-2 more times to get it perfect
The extra 10 minutes is worth it
```

---

## 📊 Iteration Workflow Template

Copy this for your projects:

```markdown
# Component Iteration Log

## Component: [Name]
## Date: [Date]
## Initial Request:
[Paste your initial prompt]

---

### Version 1 (Initial)
**Issues identified:**
- [ ] Issue 1: [specific description]
- [ ] Issue 2: [specific description]
- [ ] Issue 3: [specific description]

**Changes requested:**
1. [Specific change 1]
2. [Specific change 2]
3. [Specific change 3]

---

### Version 2
**Issues identified:**
- [ ] Issue 1: [specific description]
- [ ] Issue 2: [specific description]

**Changes requested:**
1. [Specific change 1]
2. [Specific change 2]

---

### Version 3 (Final)
✅ **Approved and shipped**

**Final notes:**
[Any learnings or notes for future reference]
```

---

## 🎯 Quick Reference

### Before Iteration
1. ✅ View in browser
2. ✅ Test all breakpoints
3. ✅ Inspect with DevTools
4. ✅ Document specific issues
5. ✅ Save current version

### During Iteration
1. ✅ One category at a time
2. ✅ Specific "X to Y" changes
3. ✅ Test after each change
4. ✅ Keep changes log

### After Iteration
1. ✅ Final responsive check
2. ✅ Cross-browser test
3. ✅ Accessibility check
4. ✅ Commit final version
5. ✅ Document learnings

---

## 🎓 Practice Exercise

**Try this iteration workflow:**

1. **Request** a simple card component
2. **View** in browser
3. **Identify** 3 specific spacing issues
4. **Request changes** using "Change X to Y" format
5. **Repeat** until perfect
6. **Document** your process

**Goal:** Get comfortable with specific, measured feedback.

---

**Specific feedback = Perfect components** ✨

Next: [Browser Inspection Method](./browser-inspection.md)
