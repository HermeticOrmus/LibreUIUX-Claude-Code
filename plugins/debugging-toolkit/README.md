# Debugging Toolkit

> Root cause analysis, developer experience optimization, and AI-assisted smart debugging workflows.

## Overview

The debugging-toolkit plugin provides agents and a command for systematic debugging and developer experience improvement. Use it when encountering errors, test failures, or unexpected behavior that needs root cause analysis, or when you want to reduce development friction through better tooling, workflows, and automation. The smart-debug command orchestrates a comprehensive AI-powered debugging workflow from triage through fix validation.

## Contents

### Agents

- **debugger** -- Debugging specialist for errors, test failures, and unexpected behavior. Captures error messages and stack traces, identifies reproduction steps, isolates failure locations, implements minimal fixes, and verifies solutions. Provides root cause explanations with evidence, specific code fixes, testing approaches, and prevention recommendations. Uses the `haiku` model.

- **dx-optimizer** -- Developer Experience (DX) specialist that reduces friction and automates repetitive tasks. Covers environment setup simplification (onboarding under 5 minutes), workflow automation (aliases, shortcuts, build optimization), tooling enhancement (IDE settings, git hooks, CLI commands), and documentation (setup guides, troubleshooting). Delivers measurable improvements to development velocity. Uses the `haiku` model.

### Commands

- **smart-debug** -- AI-assisted debugging workflow with 10 structured phases: initial triage with hypothesis generation, observability data collection (Sentry, DataDog, Jaeger), hypothesis ranking with probability scores, strategy selection (interactive, observability-driven, time-travel, chaos, statistical), intelligent instrumentation placement, production-safe techniques, root cause analysis, fix implementation with impact assessment, validation, and prevention through regression tests and monitoring.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add debugging-toolkit
```

Then invoke the command with your issue description:

```
/smart-debug Intermittent 504 timeout errors in checkout flow affecting 5% of users
```

## Related Plugins

- **error-debugging** -- Error-specific analysis with multi-agent review capabilities
- **error-diagnostics** -- Error classification, structured logging, and observability setup
- **distributed-debugging** -- Debugging across distributed systems and Kubernetes clusters
