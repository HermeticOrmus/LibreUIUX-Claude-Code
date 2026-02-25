# Accessibility Compliance

> WCAG-compliant accessibility auditing, visual validation, and inclusive design verification for digital products.

## Overview

This plugin provides tools for ensuring digital products meet accessibility standards and deliver inclusive experiences for all users. It combines automated testing with axe-core, manual verification checklists, and rigorous visual validation to catch accessibility barriers across keyboard navigation, screen reader compatibility, color contrast, and responsive design. Use it when building or auditing any user-facing interface.

## Contents

### Agents

- **ui-visual-validator** -- Rigorous visual validation specialist that verifies UI modifications through systematic screenshot analysis, design system compliance checking, and accessibility visual assessment. Defaults to skepticism: assumes goals are NOT met until proven by visual evidence. Covers pixel-diff analysis, cross-browser matrix testing, WCAG contrast verification, focus indicator checking, and responsive breakpoint validation.

### Commands

- **accessibility-audit** -- Conducts a comprehensive accessibility audit using automated and manual techniques. Runs axe-core with Puppeteer for WCAG 2.1/2.2 violation detection, validates color contrast ratios, tests keyboard navigation and focus indicators, checks screen reader compatibility (landmarks, headings, forms, ARIA patterns), and generates scored HTML reports. Includes CI/CD integration with GitHub Actions and remediation code examples.

## Key Capabilities

The accessibility-audit command provides a complete testing toolkit:

- **Automated scanning** with axe-core and Puppeteer for WCAG 2.1/2.2 AA and AAA compliance, including weighted scoring (critical: 10 points, serious: 5, moderate: 2, minor: 1).
- **Color contrast analysis** that calculates relative luminance and contrast ratios for every text element, flagging elements below the 4.5:1 threshold for normal text and 3:1 for large text. Includes high-contrast mode CSS media query patterns.
- **Keyboard navigation testing** that traverses all focusable elements via Tab, detects missing focus indicators, identifies keyboard traps, and validates logical tab order.
- **Screen reader compatibility** checks for landmark regions, heading hierarchy (no skipped levels, no missing h1), form label associations, and ARIA patterns for modals, tabs, and live regions.
- **Manual testing checklists** covering cognitive accessibility (clear instructions, reversible actions, no time limits) and visual accessibility (200% text resize, color not sole indicator, content reflow at 320px).
- **CI/CD pipeline integration** with GitHub Actions workflows that run axe and pa11y on every push and pull request.
- **Remediation code examples** including React accessible components (AccessibleButton, LiveRegion) and DOM fixes for missing alt text and labels.
- **HTML report generation** with scored results, violation details by severity, and links to remediation resources.

The ui-visual-validator agent complements automated testing with manual visual verification. It follows an eight-step analysis process: objective description, goal verification, measurement validation, reverse validation (actively seeking failure evidence), critical assessment, accessibility evaluation, cross-platform consistency, and edge case analysis. It requires a mandatory verification checklist before declaring any UI modification successful.

## Usage

Install the plugin into your Claude Code project:

```bash
claude plugin install accessibility-compliance
```

Then invoke the agent or command:

```
@ui-visual-validator Validate that the new button component meets WCAG contrast requirements
@ui-visual-validator Verify responsive navigation collapses correctly at mobile breakpoints
/accessibility-audit https://myapp.example.com --wcag-level AA
```

## Related Plugins

- **application-performance** -- The frontend-developer agent includes accessibility testing with axe-core and WCAG compliance.
- **agent-orchestration** -- The ui-agent-patterns skill includes review agents that audit accessibility as part of multi-agent UI workflows.
- **backend-development** -- API design principles ensure accessible data structures and error responses that assistive technologies can consume.
