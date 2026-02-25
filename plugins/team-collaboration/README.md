# Team Collaboration

> Agent and commands for developer experience optimization, GitHub issue resolution, and async standup note generation.

## Overview

This plugin supports collaborative development workflows. It includes a developer experience optimizer for reducing friction in tooling and onboarding, a comprehensive GitHub issue resolution command that handles investigation through PR creation, and an async standup notes generator that synthesizes work updates from Git history, Jira, Obsidian, and calendar sources. Use this plugin to improve team coordination, streamline issue workflows, and maintain visibility across distributed teams.

## Contents

### Agents

- **dx-optimizer** -- Developer Experience specialist that reduces development friction and automates repetitive tasks. Profiles developer workflows, identifies pain points, simplifies onboarding (targeting under 5 minutes), configures IDE settings, sets up git hooks, creates project-specific CLI commands, and optimizes build/test feedback loops. Runs on Haiku for quick analysis.

### Commands

- **issue** -- End-to-end GitHub issue resolution workflow. Accepts a GitHub issue ID or URL and walks through systematic investigation: issue triage with priority classification (P0-P3), root cause analysis with `git bisect`, branch strategy, task breakdown into phases, test-driven implementation (unit, integration, E2E), PR creation with comprehensive description, and post-deployment verification. Produces resolution summaries, test results, and rollback plans.

- **standup-notes** -- Generates daily standup notes by collecting data from multiple sources: Git commit history (last 24-48 hours), Jira ticket updates, Obsidian vault changes, and calendar events. Uses AI to group related commits, translate technical changes into business value statements, identify potential blockers, and format notes for Slack or async channels. Supports fully async standup patterns, thread-based updates, and weekly retrospective analysis.

### Skills

_None_

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install team-collaboration
```

Resolve a GitHub issue end-to-end:

```
/issue 456
```

Generate standup notes from recent work:

```
/standup-notes focus on authentication and API work
```

Use the DX optimizer agent by asking it to analyze your project setup, onboarding process, or development workflow for friction points.

## Related Plugins

- **tdd-workflows** -- The issue command references TDD practices for implementing fixes with test coverage.
- **unit-testing** -- Test generation and debugging support used during issue resolution.
