# LibreUIUX Demo - Day-Of Checklist

**Presentation Day**: Friday
**Last Update**: December 3, 2025

---

## ✅ Pre-Presentation Setup (30 minutes before)

### Technical Setup

- [ ] **Start Demo Server**
  ```bash
  cd ~/projects/01-ACTIVE/LibreUIUX-Claude-Code/demo
  python3 -m http.server 8080
  ```

- [ ] **Test in Browser**
  - Open: http://localhost:8080
  - Check both buttons render
  - Test hover effects work
  - Verify all sections display
  - Set zoom to 125-150% for visibility

- [ ] **Open Claude Code**
  - Launch Claude Code application
  - Navigate to LibreUIUX directory
  - Have design-vocabulary.md ready
  - Have modern-button.md template ready

- [ ] **Repository Access**
  - Browser tab: GitHub repo open
  - Show: README.md, plugin structure
  - Bookmark: key files for quick access

### Window Layout

- [ ] **Screen 1** (presentation screen):
  - Slides full screen
  - Demo browser ready to alt-tab
  - Claude Code ready to alt-tab

- [ ] **Screen 2** (your screen):
  - TALKING_POINTS.md open
  - Timer/clock visible
  - Demo checklist (this file)

### Backup Materials

- [ ] **Screenshots taken** (in case demo fails):
  - Full demo page
  - Vague button close-up
  - Precise button close-up
  - Hover states
  - Additional examples

- [ ] **Files accessible**:
  - beginner/design-vocabulary.md
  - beginner/prompts/modern-button.md
  - PRESENTATION_OUTLINE.md (timing reference)
  - TALKING_POINTS.md (quick reference)

---

## 🎤 During Presentation

### Demo 1: Vague vs Precise (5 min)

- [ ] Show demo page (localhost:8080)
- [ ] Point to LEFT side (red - vague)
- [ ] Read vague request aloud
- [ ] Highlight issues (random color, basic padding, no polish)
- [ ] Ask: "Would you ship this?"

- [ ] Point to RIGHT side (green - precise)
- [ ] Read precise specifications aloud
- [ ] Highlight features (exact color, precise padding, modern effects)
- [ ] Say: "Same Claude. Different language. Perfect result."

- [ ] **Hover on both buttons**
- [ ] Show difference in interactions
- [ ] Emphasize: "First try, every time"

**Key Quote**:
> "When you speak design system language instead of vague aesthetics, you're giving coordinates instead of directions."

**Time Check**: 5 minutes

---

### Demo 2: Design Vocabulary (4 min)

- [ ] Scroll to "Design Vocabulary Quick Reference"
- [ ] Point to spacing scale table
- [ ] Say: "p-6 means exactly 24px. No ambiguity."

- [ ] Point to shadow scale
- [ ] Say: "Shadow-md to shadow-lg isn't vague—it's exact."

- [ ] Point to color scale
- [ ] Say: "Blue-600 is primary brand. Blue-700 is hover. System, not guessing."

- [ ] Scroll back up to show components using these specs

**Key Quote**:
> "This isn't just vocabulary—it's the mechanics of communicating design intent precisely."

**Time Check**: 9 minutes total

---

### Demo 3: Additional Examples (2 min)

- [ ] Scroll to "More Component Examples"
- [ ] Show modern card
- [ ] Hover over card (demonstrate lift effect)
- [ ] Say: "All specs documented: rounded-xl, shadow-lg hover:shadow-2xl"

- [ ] Show input field
- [ ] Click to show focus state
- [ ] Say: "Focus states specified: focus:border-blue-500, focus:ring-4"

- [ ] Show semantic badges
- [ ] Say: "Consistent color scale across all components"

**Time Check**: 11 minutes total

---

### Demo 4: Live Claude Code (Optional - Advanced)

⚠️ **Only do this if you're confident and practiced**

- [ ] Switch to Claude Code window
- [ ] Say: "Let me show you this live"

**Vague Request** (to show failure):
```
Create a modern, sleek button that looks professional
```

- [ ] Send to Claude
- [ ] Show mediocre result
- [ ] Say: "See? Generic, unpredictable."

**Precise Request** (to show success):
```
Create a button with:
- bg-blue-600
- hover:bg-blue-700
- active:bg-blue-800 scale-98
- text-white font-semibold
- px-6 py-3
- rounded-lg
- shadow-md hover:shadow-lg
- transition-all duration-200
- focus:ring-4 focus:ring-blue-100 focus:outline-none
```

- [ ] Send to Claude
- [ ] Show perfect result
- [ ] Say: "Perfect. First try. Every time."

**Backup Plan**: If Claude doesn't cooperate, say:
"This is why precision matters—even demos need exact specs! But you can see it works on the demo page."

---

## 🚨 Troubleshooting During Presentation

### Demo Page Won't Load

**Quick Fix**:
1. Show backup screenshots
2. Say: "Technical difficulties—but you can see the comparison here"
3. Continue with screenshots instead of live demo

### Browser Zoom Too Small

**Quick Fix**:
- Ctrl + Plus (zoom in)
- Aim for 125-150% zoom
- Make sure audience can see

### Hover Effects Not Working

**Quick Fix**:
- Refresh page (Ctrl + Shift + R)
- If still broken, describe the effects verbally
- Show backup screenshots

### Claude Code Won't Cooperate

**Quick Fix**:
1. Skip live Claude demo
2. Focus on demo HTML page
3. Say: "The demo page proves the concept—live Claude would show the same"

### Forgot What to Say

**Quick Actions**:
- Glance at TALKING_POINTS.md
- Fall back to core message: "Specifications > aesthetics"
- Point to demo visual differences
- Let the demo speak for itself

---

## 📊 Audience Engagement Checkpoints

### After Vague Demo
- [ ] Pause for reaction
- [ ] Ask: "Look familiar? Seen this Bootstrap-era design?"
- [ ] Wait for nods/agreement

### After Precise Demo
- [ ] Pause for comparison
- [ ] Ask: "See the difference?"
- [ ] Watch for note-taking

### During Vocabulary Section
- [ ] Check if people are taking photos of the reference tables
- [ ] Pause if people are writing down specs
- [ ] Offer: "This is all in the repository, don't worry"

### After All Demos
- [ ] Ask: "Who's going to try this tonight?"
- [ ] Wait for show of hands
- [ ] Say: "20 minutes reading the vocabulary guide, that's all you need"

---

## ⏱️ Time Management

### If Running Behind
**Skip** (in order of priority):
1. Live Claude Code demo (stick to HTML demo)
2. Additional examples deep dive (show quickly)
3. Plugin ecosystem detail (mention count only)

**Keep** (essential):
1. Vague vs precise comparison (core insight)
2. Design vocabulary reference (the value)
3. Call to action (star, read, try)

### If Ahead of Schedule
**Add**:
1. Live Claude Code demo
2. Additional examples walkthrough
3. Plugin ecosystem showcase
4. Q&A time

---

## 🎯 Success Indicators (Watch For)

### Strong Signs
- [ ] Audience leans forward during vague vs precise
- [ ] People take photos of vocabulary reference
- [ ] Questions about "where do I start?"
- [ ] Requests for repository link
- [ ] Note-taking during demo

### Medium Signs
- [ ] Nodding during explanation
- [ ] Visible "aha" moments
- [ ] Questions about specific Tailwind classes
- [ ] Interest in beginner guide

### Weak Signs (Adjust!)
- [ ] Distracted audience (speed up, show more visuals)
- [ ] Confused looks (slow down, explain more)
- [ ] No questions (ask them questions!)
- [ ] Checking phones (make it interactive)

**If engagement weak**:
- Ask direct questions
- Show more hover interactions
- Skip theory, show more demos
- Emphasize "try this tonight"

---

## 📝 Post-Demo Actions

### Immediately After
- [ ] Share repository URL in chat/slides
- [ ] Offer to answer questions
- [ ] Mention: "Star the repo if this was helpful"

### During Q&A
- [ ] Keep demo page open (may need to reference)
- [ ] Have TALKING_POINTS.md ready for Q&A answers
- [ ] Offer to show specific sections again

### After Presentation
- [ ] Kill the dev server: `pkill -f "http.server 8080"`
- [ ] Note what worked / what didn't
- [ ] Capture any great questions for FAQ
- [ ] Check GitHub for star increase

---

## 💡 Pro Tips

### During Demo
1. **Pause after key points** - Let insights land
2. **Point with cursor** - Guide attention
3. **Zoom as needed** - Make sure audience sees
4. **Describe while showing** - Don't assume they see details
5. **Use hover for emphasis** - Show interactions live

### If Demo Breaks
1. **Don't panic** - "This is why we have backups"
2. **Switch to screenshots** - Seamlessly
3. **Keep talking** - Describe what they'd see
4. **Make it light** - "Even demos need precise specs!"
5. **Move on quickly** - Don't dwell on tech issues

### Audience Engagement
1. **Ask rhetorical questions** - "Sound familiar?"
2. **Pause for reactions** - "See the difference?"
3. **Invite participation** - "Try this tonight"
4. **Acknowledge nods** - "Exactly, you get it"
5. **Read the room** - Adjust pace to engagement

---

## 🎬 Final Pre-Demo Checklist

### 5 Minutes Before

- [ ] Server running (localhost:8080 accessible)
- [ ] Browser open to demo page
- [ ] Zoom level correct (125-150%)
- [ ] Claude Code ready (if doing live demo)
- [ ] TALKING_POINTS.md visible
- [ ] Backup screenshots accessible
- [ ] Water nearby
- [ ] Timer/clock visible
- [ ] Phone on silent

### Mental Prep

- [ ] Review core insight: "Coordinates vs directions"
- [ ] Remember opening hook: "Every request felt like rolling dice"
- [ ] Prepare closing: "Star, read, try, share"
- [ ] Take deep breath
- [ ] Smile—you've got this!

---

## 🔥 Remember

**The demo proves everything**:
- Visual difference is undeniable
- Side-by-side comparison speaks for itself
- Hover interactions show the polish
- Vocabulary reference shows the path forward

**If all else fails**:
- Point to the demo
- Say: "Look at the difference"
- That's the whole presentation

**You're ready.** 🔥

**The craft grows when knowledge flows.**

---

**Good luck on Friday!**
