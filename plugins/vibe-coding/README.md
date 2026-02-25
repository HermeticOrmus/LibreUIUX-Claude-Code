# Vibe Coding

> A skill for rapid UI prototyping with disposable code, fast iteration loops, and the "vibe coding" philosophy.

## Overview

This plugin embraces the "vibe coding" approach to development -- rapid, throwaway prototyping where speed of learning matters more than code quality. It provides a comprehensive skill for building ephemeral UI prototypes, exploring design spaces with variant explosions, and knowing when to switch from vibe mode to craft mode. Use this plugin during discovery phases, when validating UI concepts with stakeholders, or when you need to quickly explore multiple design directions before committing to production code.

## Contents

### Agents

_None (directories exist but are empty)_

### Commands

_None (directories exist but are empty)_

### Skills

- **rapid-prototyping** -- Complete guide to vibe coding for UI exploration. Covers the two-mode philosophy (Vibe Mode vs Craft Mode) with clear criteria for when each applies. Includes concrete patterns: the 10-Minute Prototype protocol, Storyboard Prototypes for visualizing user flows, and Variant Explosion for rapidly generating design alternatives across dimensions (minimal vs dense, light vs dark, playful vs serious). Provides OODA loop optimization for fast feedback, prompt patterns for AI-assisted prototyping ("Just Make It", "More Like This", "Explode Options"), transition protocols from prototype to production, anti-patterns to avoid (polishing prototypes, prototype attachment, premature production), and tooling setup with shell aliases for quick project creation and cleanup.

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install vibe-coding
```

The rapid-prototyping skill activates when you're exploring UI concepts or asking for quick visual prototypes. It guides the approach: use React + Tailwind + Vite for fastest iteration, keep everything in single files with mock data, set iteration limits (3-5 rounds), and delete freely knowing regeneration is instant with AI assistance.

Key decision point the skill teaches: "If I deleted all this code and re-described what I want, would I get something better?" If yes, delete and regenerate.

## Related Plugins

- **tdd-workflows** -- The craft mode counterpart: switch to TDD when a validated concept is ready for production implementation.
- **unit-testing** -- For when prototypes graduate to production and need proper test coverage.
