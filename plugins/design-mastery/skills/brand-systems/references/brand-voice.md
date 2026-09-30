# Brand voice

Voice is the brand's personality in words. It is part of the identity system in the same way color and type are, and in product UI it is often the part users meet most: button labels, error messages, empty states, and onboarding are all writing.

## Voice vs. tone

**Voice stays the same; tone adapts to the situation.** Mailchimp's public Content Style Guide puts it this way: "You have the same voice all the time, but your tone changes." A person keeps the same personality at a celebration and at a hospital bedside, but speaks differently in each.

| | Voice | Tone |
|---|-------|------|
| Changes? | No, it is constant | Yes, per context and reader state |
| Defined by | 3 to 4 personality attributes | A tone map per situation |
| Example | "Plainspoken, warm, precise" | Warmer in onboarding, calmer in errors, drier in legal |

Mailchimp describes its own voice as plainspoken, genuine, translators (explaining complex things simply), and dry humor. It is a useful public model of attributes that are specific enough to write with.

## Defining voice attributes

Pick three or four attributes. For each, write what it means, what it does not mean, and a do/don't pair. "Friendly" alone is too vague to guide anyone.

| Attribute | We are | We are not | Do | Don't |
|-----------|--------|------------|----|-------|
| **Plainspoken** | Direct, short sentences, common words | Blunt or cold | "Your card was declined." | "A payment authorization failure has occurred." |
| **Warm** | Human, considerate | Gushing or cute | "Welcome back, Ana." | "Yay!!! You're back, superstar!" |
| **Confident** | Clear recommendations | Arrogant or pushy | "We recommend the annual plan for teams." | "Only an amateur would pick monthly." |
| **Precise** | Specific numbers, names, next steps | Jargon-heavy | "Upload files up to 25 MB." | "Upload reasonably sized files." |

## The four dimensions of tone

Nielsen Norman Group (Kate Moran, "The Four Dimensions of Tone of Voice", 2016) describes tone along four spectrums. Copy can sit anywhere on each line:

| Dimension | One end | Other end |
|-----------|---------|-----------|
| Humor | Funny | Serious |
| Formality | Formal | Casual |
| Respect | Respectful | Irreverent |
| Enthusiasm | Enthusiastic | Matter-of-fact |

Place the brand's default on each spectrum, then define how far each situation may move from that default.

## Tone map by situation

| Situation | Reader state | Tone shift | Example |
|-----------|--------------|-----------|---------|
| **Onboarding** | Curious, uncertain | Warmer, encouraging, step by step | "Let's set up your first project. It takes three steps." |
| **Success** | Satisfied | Brief, lightly positive | "Invoice sent." |
| **Empty state** | Unsure what to do | Helpful, points to the first action | "No projects yet. Create one to start tracking work." |
| **Error** | Frustrated, blocked | Calm, serious, no jokes, clear fix | "We couldn't save your changes. Check your connection and try again." |
| **Destructive confirm** | Cautious | Serious, explicit about consequences | "Delete 12 files? This can't be undone." |
| **Marketing** | Evaluating | Most expressive the voice allows | "Close the books without the spreadsheet marathon." |
| **Legal and billing** | Careful | Formal, plain, complete | "Your card will be charged $20 for each billing period until you cancel." |

Humor belongs in low-stakes moments. It never belongs in errors, payment failures, security messages, or anything involving loss.

## Microcopy patterns

### Buttons
- Use a verb that names the outcome: "Create invoice", not "Submit"
- Match the button to the question: a dialog titled "Delete project?" gets "Delete project" and "Cancel", not "Yes" and "No"
- Keep labels consistent across the product: if it is "Save" in one place, it is not "Apply" elsewhere for the same action

### Error messages
A useful error says **what happened**, **why** (when known and useful), and **what to do next**, placed next to the problem.

```text
Bad:   Error 422
Bad:   Invalid input
Good:  Enter a date after today.
Good:  That email is already registered. Sign in instead?
```

Do not blame the user ("You entered an invalid value"); describe the fix.

### Empty states
State why it is empty, what will appear, and the first action. One sentence plus one button is usually enough.

### Form labels and help text
- Labels are nouns ("Company name"); help text explains format or purpose
- Do not use placeholder text as the label; it disappears when typing starts
- Mark optional fields rather than every required one when most are required

### Notifications
Lead with the change, then the detail: "Payment received: $1,200 from Acme Co."

## How voice maps onto UI components

| Component | Voice guidance to document |
|-----------|----------------------------|
| Buttons | Verb style, casing (sentence case or title case), length limit |
| Headings | Sentence case or title case, question headings allowed or not |
| Errors | Structure (what, why, next step), banned words |
| Toasts | Maximum length, past tense for completed actions |
| Empty states | Template: explanation + first action |
| Tooltips | When allowed, maximum length, no essential information hidden in them |
| Emails | Greeting and sign-off conventions, subject line style |

Pair this table with the design system so each component's documentation shows its copy rules next to its visual rules.

## Writing guidelines to specify

- **Person**: "we" and "you", or impersonal
- **Casing**: sentence case for UI is easier to scan and translate; pick one and apply it everywhere
- **Contractions**: allowed or not (contractions read as more conversational)
- **Numbers and dates**: numerals in UI, one date format per locale
- **Punctuation**: periods in single-sentence UI strings or not; no exclamation marks in errors
- **Word list**: preferred terms, banned terms, and product nouns with exact capitalization
- **Inclusive, plain language**: avoid idioms that do not translate; write for a broad reading level
- **Localization**: leave room for text expansion (many languages run longer than English), avoid text baked into images

## Voice checklist

- [ ] Three or four voice attributes, each with "we are / we are not" and a do/don't example
- [ ] Default position on each of the four tone dimensions
- [ ] Tone map for onboarding, success, empty, error, destructive, marketing, and legal contexts
- [ ] Button, error, empty state, and notification patterns documented
- [ ] Casing, person, punctuation, and number rules chosen
- [ ] Word list maintained with product terms
- [ ] Copy rules shown alongside component specs in the design system
- [ ] Sample screens rewritten in the voice and reviewed by someone outside the team

## Related references

- [../assets/brand-canvas-template.md](../assets/brand-canvas-template.md): personality and archetype inputs
- [typography-pairing.md](typography-pairing.md): making type personality agree with verbal voice
- [color-palettes.md](color-palettes.md): the visual counterpart of tone shifts (semantic colors for errors and success)
