# Error Diagnostics

> Error classification, observability setup, and AI-powered smart debugging for systematic issue resolution.

## Overview

The error-diagnostics plugin provides agents and commands for structured error diagnosis and resolution. Use it when you need to classify and analyze errors systematically, set up observability infrastructure (logging, tracing, monitoring), or run an AI-assisted debugging workflow that triages issues, generates ranked hypotheses, and validates fixes. It shares some agents with the error-debugging plugin but includes the smart-debug command for a more automated debugging experience.

## Contents

### Agents

- **debugger** -- Root cause analysis specialist for errors, test failures, and unexpected behavior. Captures error messages and stack traces, identifies reproduction steps, isolates failure locations, implements minimal fixes, and verifies solutions. Focuses on underlying issues rather than symptoms. Uses the `sonnet` model (note: higher-capability model than the haiku variant in other plugins).

- **error-detective** -- Log analysis and pattern recognition specialist. Parses logs with regex, analyzes stack traces across languages, correlates errors across distributed systems, queries log aggregation tools (Elasticsearch, Splunk), and detects anomalies in log streams. Provides root cause hypotheses with evidence and monitoring queries for recurrence detection. Uses the `haiku` model.

### Commands

- **error-analysis** -- Systematic error analysis and resolution for modern applications. Classifies errors by severity, type, and observability characteristics. Implements detection strategies (Sentry, health checks, synthetic monitoring), structured logging with correlation IDs, the Five Whys technique, distributed systems debugging, stack trace analysis, and production incident response workflows with communication templates.

- **error-trace** -- Error tracking and monitoring implementation. Configures Sentry (Node.js/Python/React), DataDog APM with custom spans, OpenTelemetry with multiple languages, intelligent alerting strategies, error boundaries, circuit breaker patterns, and structured logging pipelines from application through aggregation to visualization.

- **smart-debug** -- AI-assisted debugging workflow with structured phases: initial triage with AI-powered pattern recognition and 3-5 ranked hypotheses, observability data collection from Sentry/DataDog/Jaeger/ELK, hypothesis generation with probability scores and falsification criteria, strategy selection (interactive, observability-driven, time-travel, chaos engineering, statistical), intelligent breakpoint/logpoint placement, production-safe techniques (dynamic instrumentation, feature-flagged logging, canary debugging), root cause analysis, fix implementation with impact assessment, validation through testing and canary deployment, and prevention through regression tests and runbooks.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add error-diagnostics
```

Then invoke the commands:

```
/smart-debug Checkout timeout errors intermittently affecting 5% of users
/error-analysis Classify and resolve database connection pool exhaustion
/error-trace Set up OpenTelemetry tracing and Sentry error tracking
```

## Related Plugins

- **error-debugging** -- Similar error analysis with multi-agent code review instead of smart-debug
- **distributed-debugging** -- Infrastructure-level debugging across distributed systems
- **debugging-toolkit** -- General debugging toolkit with DX optimization
