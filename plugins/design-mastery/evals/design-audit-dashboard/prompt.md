---
name: design-audit-dashboard
description: A design audit of a described SaaS dashboard finds the hierarchy, contrast, and typography problems and gives concrete fixes.
tags: [audit, principles]
plugins: ["../.."]
max_turns: 8
allowed_tools: [Read, Glob, Grep, Skill, Agent]
---

Audit this SaaS analytics dashboard design and tell me what to fix first. Here is the design:

- Page background is white (#FFFFFF). Body text and table text are #9CA3AF at 12px.
- The page uses four typefaces: Montserrat for the page title, Lato for card titles, Georgia for table headers, and Roboto for everything else.
- The page title, the four card titles, and the table header are all 18px, weight 600.
- The top bar has five buttons of the same size and color: "Export", "Share", "Filter", "Settings", and "Upgrade plan". "Upgrade plan" is the action we most want people to take.
- Every gap on the page is 16px: between a label and its value, between cards, and between sections.
- Status in the table is shown only by a small colored dot (green, amber, red) with no text.
