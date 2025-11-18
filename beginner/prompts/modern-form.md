# Modern Form Component Prompt

Use this template to create beautiful, modern form components with Claude Code.

---

## 🎯 Copy-Paste Template

```
Create a modern form with these specifications:

FORM CONTAINER:
- Max width: max-w-md (448px)
- Background: bg-white
- Padding: p-8
- Rounded: rounded-2xl
- Shadow: shadow-xl
- Margin: mx-auto (centered)

HEADING:
- Text: text-3xl font-bold text-gray-900
- Margin: mb-2

SUBHEADING:
- Text: text-sm text-gray-600
- Margin: mb-8

FORM LAYOUT:
- Display: flex flex-col
- Gap: space-y-6 (24px between fields)

INPUT FIELDS [Choose style: FLOATING LABEL / STANDARD / OUTLINED]:

FLOATING LABEL STYLE (Recommended):
- Container: relative
- Input:
  - w-full px-4 pt-6 pb-2
  - border-2 border-gray-300
  - rounded-lg
  - text-base text-gray-900
  - focus:border-blue-500 focus:ring-4 focus:ring-blue-100
  - focus:outline-none
  - transition-all duration-200
  - peer (for label interaction)
- Label:
  - absolute left-4 top-2
  - text-xs text-gray-600
  - transition-all duration-200
  - peer-placeholder-shown:top-4 peer-placeholder-shown:text-base
  - peer-focus:top-2 peer-focus:text-xs peer-focus:text-blue-600

STANDARD LABEL STYLE:
- Label:
  - block text-sm font-semibold text-gray-700 mb-2
- Input:
  - w-full px-4 py-3
  - border-2 border-gray-300 rounded-lg
  - text-base text-gray-900
  - focus:border-blue-500 focus:ring-4 focus:ring-blue-100
  - focus:outline-none
  - transition-all duration-200

VALIDATION STATES:
- Error state:
  - Input: border-red-500 focus:ring-red-100
  - Error message: text-sm text-red-600 mt-1 flex items-center gap-1
  - Icon: red exclamation circle
- Success state:
  - Input: border-green-500 focus:ring-green-100
  - Check icon: absolute right-3 top-1/2 -translate-y-1/2
- Disabled state:
  - bg-gray-100 cursor-not-allowed opacity-60

INPUT TYPES:
- Text: type="text"
- Email: type="email"
- Password: type="password" with show/hide toggle
- Number: type="number"
- Tel: type="tel"
- Date: type="date"
- Select: custom styled dropdown

SUBMIT BUTTON:
- w-full bg-blue-600 hover:bg-blue-700
- text-white font-semibold
- py-3 px-6 rounded-lg
- shadow-md hover:shadow-lg
- transition-all duration-200
- focus:ring-4 focus:ring-blue-100

HELPER TEXT:
- text-sm text-gray-600 mt-1

REQUIRED INDICATOR:
- Red asterisk: text-red-500
- Or "(required)" text

ACCESSIBILITY:
- Labels for all inputs
- Error messages with aria-describedby
- Focus indicators
- Keyboard navigation

Example fields: [Your form fields here]
```

---

## 🎨 Common Form Patterns

### 1. Contact Form

```
Create a contact form with:

STRUCTURE:
- max-w-lg mx-auto bg-white p-8 rounded-2xl shadow-xl

HEADING:
- "Get in Touch"
- text-3xl font-bold text-gray-900 mb-2

SUBHEADING:
- "We'll get back to you within 24 hours"
- text-gray-600 mb-8

FIELDS:
1. Name field:
   - Floating label "Full Name"
   - Required
   - Placeholder: ""

2. Email field:
   - Floating label "Email Address"
   - type="email"
   - Required
   - Validation: proper email format

3. Subject field:
   - Floating label "Subject"
   - Required

4. Message field:
   - Floating label "Message"
   - textarea rows="4"
   - Required
   - resize-none

SUBMIT:
- "Send Message"
- w-full bg-blue-600 hover:bg-blue-700
- py-3 rounded-lg
- Loading state with spinner

FOOTER:
- text-sm text-gray-600 text-center mt-4
- "We respect your privacy"
```

### 2. Login Form

```
Create a login form with:

STRUCTURE:
- max-w-md mx-auto bg-white p-8 rounded-2xl shadow-xl

HEADING:
- "Welcome back"
- text-3xl font-bold text-gray-900

SUBHEADING:
- "Sign in to your account"
- text-sm text-gray-600 mb-8

FIELDS:
1. Email field:
   - Floating label "Email address"
   - type="email"
   - autocomplete="email"

2. Password field:
   - Floating label "Password"
   - type="password"
   - Show/hide password toggle
   - Eye icon button absolute right-3

REMEMBER & FORGOT:
- flex justify-between items-center mb-6
- Checkbox: "Remember me"
  - Custom checkbox with checkmark
- Link: "Forgot password?"
  - text-sm text-blue-600 hover:text-blue-700

SUBMIT:
- "Sign in"
- w-full bg-blue-600 hover:bg-blue-700
- py-3 font-semibold

DIVIDER:
- "or" text centered with lines
- relative text-center my-6
- Before/after borders

SOCIAL LOGIN:
- "Continue with Google" button
- "Continue with GitHub" button
- Both: w-full border-2 hover:bg-gray-50

FOOTER:
- text-center text-sm text-gray-600
- "Don't have an account?"
- Link: "Sign up" text-blue-600 font-semibold
```

### 3. Registration Form

```
Create a registration form with:

STRUCTURE:
- max-w-2xl mx-auto bg-white p-8 rounded-2xl shadow-xl

MULTI-STEP INDICATOR (optional):
- Steps: 1. Account → 2. Profile → 3. Complete
- Progress bar

HEADING:
- "Create your account"
- text-3xl font-bold mb-8

LAYOUT:
- grid grid-cols-1 md:grid-cols-2 gap-6

FIELDS:
1. First Name (left column)
2. Last Name (right column)
3. Email (full width)
4. Password (left column)
   - Strength indicator below
   - Weak (red) / Medium (yellow) / Strong (green)
5. Confirm Password (right column)
6. Phone (optional)
7. Terms checkbox:
   - Custom checkbox
   - "I agree to the Terms and Privacy Policy"
   - Links in blue

PASSWORD REQUIREMENTS:
- List below password field
- Each requirement: gray if not met, green if met
- "At least 8 characters"
- "One uppercase letter"
- "One number"
- "One special character"

SUBMIT:
- "Create Account"
- w-full col-span-2
- bg-blue-600 hover:bg-blue-700
- py-4 text-lg font-semibold

FOOTER:
- "Already have an account? Sign in"
- text-center text-sm
```

### 4. Payment Form

```
Create a payment form with:

STRUCTURE:
- max-w-2xl mx-auto bg-white p-8 rounded-2xl shadow-xl

HEADING:
- "Payment Details"
- text-2xl font-bold mb-6

ORDER SUMMARY CARD:
- bg-gray-50 rounded-xl p-6 mb-8
- Item list
- Total amount: text-3xl font-bold

FIELDS:
1. Card holder name
   - Floating label
   - autocomplete="cc-name"

2. Card number
   - Floating label
   - Input mask: "1234 5678 9012 3456"
   - Card type icon (Visa/MC/etc) absolute right
   - autocomplete="cc-number"

3. Expiry & CVV (grid-cols-2 gap-4):
   - Expiry: "MM/YY" placeholder
   - CVV: 3-4 digits, help tooltip icon

SECURITY BADGES:
- flex gap-4 items-center mt-6
- Lock icon + "Secure checkout"
- Payment logos (Visa, Mastercard, etc)

BILLING ADDRESS:
- Checkbox: "Same as shipping"
- If unchecked, show address fields

SUBMIT:
- "Complete Payment $X.XX"
- w-full bg-green-600 hover:bg-green-700
- py-4 text-lg font-bold
- Lock icon + amount

FOOTER:
- text-xs text-gray-600 text-center
- "Your payment is secure and encrypted"
```

### 5. Search Form

```
Create a modern search form with:

CONTAINER:
- max-w-2xl mx-auto

SEARCH INPUT:
- relative w-full
- Input:
  - pl-12 pr-12 py-4
  - border-2 border-gray-300
  - rounded-full
  - text-lg
  - focus:border-blue-500 focus:ring-4 focus:ring-blue-100
  - shadow-lg focus:shadow-xl

- Search icon:
  - absolute left-4 top-1/2 -translate-y-1/2
  - text-gray-400 w-6 h-6

- Clear button (when text present):
  - absolute right-4 top-1/2 -translate-y-1/2
  - w-8 h-8 rounded-full hover:bg-gray-100
  - X icon

SUGGESTIONS DROPDOWN (optional):
- absolute top-full mt-2 w-full
- bg-white rounded-xl shadow-2xl
- max-h-96 overflow-y-auto
- Each suggestion:
  - px-4 py-3 hover:bg-gray-50 cursor-pointer
  - flex items-center gap-3
  - Icon + text

FILTERS (optional):
- flex gap-2 mt-4
- Filter pills: bg-gray-100 hover:bg-gray-200
- px-4 py-2 rounded-full text-sm
```

---

## ✨ Modern Form Enhancements

### Password Strength Indicator

```
Below password input:
- Progress bar:
  - h-2 w-full bg-gray-200 rounded-full mt-2
  - Fill: bg-red-500 (weak) → bg-yellow-500 (medium) → bg-green-500 (strong)
  - Width: w-1/3, w-2/3, w-full
  - transition-all duration-300

- Text indicator:
  - text-sm mt-1
  - "Weak" (text-red-600) / "Medium" (text-yellow-600) / "Strong" (text-green-600)
```

### File Upload Field

```
Custom file upload:
- Input: hidden (display:none)
- Label: cursor-pointer
  - border-2 border-dashed border-gray-300
  - rounded-lg p-8 text-center
  - hover:border-blue-500 hover:bg-blue-50
  - transition-all

- Content:
  - Upload icon (cloud upload)
  - "Drag and drop or click to upload"
  - "PNG, JPG up to 10MB"
  - text-sm text-gray-600

- Preview (when file selected):
  - Image thumbnail
  - File name
  - File size
  - Remove button
```

### Multi-Select Dropdown

```
Custom multi-select:
- Button trigger:
  - w-full px-4 py-3 border-2 rounded-lg
  - flex justify-between items-center
  - "Select options..."
  - Chevron down icon

- Dropdown panel:
  - absolute top-full mt-2 w-full
  - bg-white rounded-lg shadow-xl
  - max-h-64 overflow-y-auto
  - z-50

- Options:
  - Each: px-4 py-2 hover:bg-gray-50
  - Checkbox + label
  - Custom checkbox with checkmark

- Selected pills:
  - flex flex-wrap gap-2
  - Each: bg-blue-100 text-blue-700 px-3 py-1 rounded-full
  - text-sm
  - Remove X button
```

### Date Range Picker

```
Date range input:
- Two date inputs side by side
- "From" and "To"
- Calendar icon buttons
- Connected with "-" or "to"

- Calendar popup:
  - Dual month view
  - Highlight range selection
  - Quick selects: "Today", "Last 7 days", "Last 30 days"
```

---

## 📱 Responsive Form Layouts

### Mobile-First Form

```
Layout:
- Base: grid-cols-1 gap-4 (mobile)
- md: grid-cols-2 gap-6 (tablet)
- Some fields span full: col-span-full

Padding:
- p-4 md:p-6 lg:p-8

Font sizes:
- Mobile: text-base inputs, text-2xl headings
- Desktop: text-lg inputs, text-3xl headings

Buttons:
- Mobile: py-4 (larger touch target)
- Desktop: py-3
```

---

## 🎯 Form Validation

### Inline Validation

```
On blur (when user leaves field):
- Validate immediately
- Show error/success state
- Display error message

Error display:
- Input: border-red-500 ring-red-100
- Icon: red X or exclamation
- Message: text-sm text-red-600 mt-1
- "Please enter a valid email address"

Success display:
- Input: border-green-500
- Icon: green checkmark
- No message (or "Looks good!")
```

### Submit Validation

```
On submit:
- Disable button
- Show loading spinner
- Button text: "Submitting..."

On error:
- Re-enable button
- Scroll to first error
- Focus first error field
- Show error summary at top

On success:
- Show success message
- OR redirect
- OR clear form
```

---

## ✅ Form Accessibility

### Must-Haves:
- [ ] Labels for all inputs
- [ ] Proper input types (email, tel, etc)
- [ ] Autocomplete attributes
- [ ] Error messages linked (aria-describedby)
- [ ] Required fields marked
- [ ] Keyboard navigation works
- [ ] Focus indicators visible
- [ ] Touch targets 44x44px minimum (mobile)

---

## 🚀 Quick Start: Complete Example

```
Create a modern contact form with these specifications:

CONTAINER:
- max-w-lg mx-auto
- bg-white p-8 rounded-2xl shadow-xl

HEADER:
- Heading: "Let's talk" text-3xl font-bold text-gray-900
- Subheading: "Tell us about your project" text-gray-600 mb-8

FORM (space-y-6):

1. Name field:
   - Floating label style
   - Label: "Your name"
   - px-4 pt-6 pb-2 border-2 border-gray-300 rounded-lg
   - focus:border-blue-500 focus:ring-4 focus:ring-blue-100
   - Required

2. Email field:
   - Floating label style
   - Label: "Email address"
   - type="email"
   - Validation on blur
   - Error: "Please enter a valid email"

3. Budget field:
   - Standard label: "Project budget"
   - Custom select dropdown
   - Options: "$5k-$10k", "$10k-$25k", "$25k-$50k", "$50k+"
   - Chevron icon

4. Message field:
   - Floating label style
   - Label: "Tell us about your project"
   - textarea rows="5" resize-none
   - Character count: "0/500" text-sm text-gray-500
   - Real-time count

5. Attachments:
   - File upload (optional)
   - "Attach files (optional)"
   - Drag and drop zone
   - border-2 border-dashed border-gray-300
   - Max 5MB per file

SUBMIT:
- Button: "Send message"
- w-full bg-blue-600 hover:bg-blue-700 active:scale-98
- py-4 text-white font-semibold rounded-lg
- shadow-lg hover:shadow-xl
- transition-all duration-200
- Loading state: spinner + "Sending..."

FOOTER:
- text-sm text-gray-600 text-center mt-6
- "We'll respond within 24 hours"

RESPONSIVE:
- Mobile: w-full px-4
- Desktop: max-w-lg centered

VALIDATION:
- Inline validation on blur
- Error states with red borders and messages
- Submit validation with error summary
```

---

**Next Steps:**
- Try [Modern Navigation](./modern-nav.md)
- See [Modern Button](./modern-button.md)
- Check [Examples](../examples/)
