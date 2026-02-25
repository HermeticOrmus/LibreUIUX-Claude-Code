# Code Documentation

> Agents and commands for generating technical documentation, code explanations, and educational tutorials from existing codebases.

## Overview

The Code Documentation plugin transforms complex code into clear, accessible documentation for developers at all levels. It covers the full documentation spectrum: comprehensive architecture manuals, automated API docs, step-by-step tutorials, and interactive code explanations with visual diagrams. Use this plugin when onboarding new team members, creating reference documentation, or explaining unfamiliar codebases.

## Contents

### Agents

- **code-reviewer** -- Elite code review agent that also contributes to documentation quality by ensuring code clarity, naming conventions, and inline documentation standards. Analyzes code for readability and maintainability alongside security and performance concerns.

- **docs-architect** -- Technical documentation architect that analyzes codebases to produce long-form documentation including executive summaries, architecture overviews, design decision rationale, data models, integration points, deployment architecture, and security models. Outputs structured Markdown documents suitable for 10-100+ page technical manuals.

- **tutorial-engineer** -- Tutorial engineering specialist that transforms complex technical concepts into progressive, hands-on learning experiences. Designs pedagogically sound tutorials with learning objectives, prerequisite definitions, incremental exercises, troubleshooting sections, and multiple formats (quick starts, deep dives, workshop series, cookbooks).

### Commands

- **code-explain** -- Analyzes code complexity, identifies programming concepts and design patterns, then generates multi-level explanations with Mermaid flow diagrams, class diagrams, algorithm visualizations, interactive examples, and personalized learning path recommendations. Breaks down everything from decorators and generators to recursion and async patterns.

- **doc-generate** -- Automates documentation generation across five categories: API documentation (OpenAPI/Swagger), architecture documentation (diagrams and component relationships), code documentation (docstrings, READMEs, configuration docs), user documentation (guides and tutorials), and documentation CI/CD automation (linting, validation, deployment).

## Usage

```
# Install to your project
cp -r plugins/code-documentation .claude/plugins/

# Generate comprehensive docs for a module
# /doc-generate src/api

# Explain a complex file
# /code-explain src/core/scheduler.py

# Agents activate automatically when relevant tasks arise
```

## Related Plugins

- **context-management** -- Manages design system context and project knowledge across sessions, complementing documentation efforts.
- **comprehensive-review** -- Includes documentation completeness as part of its multi-dimensional review process.
- **code-refactoring** -- Pairs well with documentation by ensuring refactored code remains well-documented.
