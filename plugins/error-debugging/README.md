# Error Debugging

> Error analysis agents and commands for root cause diagnosis, error tracking, and multi-agent code review.

## Overview

The error-debugging plugin focuses on application-level error analysis and resolution. Use it when you need to diagnose specific errors with stack traces and log correlation, implement comprehensive error tracking and observability (Sentry, DataDog, OpenTelemetry), set up structured logging with correlation IDs, or orchestrate multi-perspective code reviews. It combines focused debugging agents with deep-dive error analysis commands and a unique multi-agent review system.

## Contents

### Agents

- **debugger** -- Root cause analysis specialist for errors, test failures, and unexpected behavior. Captures error messages and stack traces, identifies reproduction steps, isolates failure locations, implements minimal fixes, and verifies solutions. Focuses on fixing underlying issues rather than symptoms. Uses the `haiku` model.

- **error-detective** -- Log analysis and pattern recognition specialist. Parses logs with regex, analyzes stack traces across languages, correlates errors across distributed systems, queries log aggregation tools (Elasticsearch, Splunk), and detects anomalies in log streams. Provides error timelines, correlation analysis, root cause hypotheses with evidence, and monitoring queries. Uses the `haiku` model.

### Commands

- **error-analysis** -- Systematic error analysis and resolution for modern applications. Classifies errors by severity (critical/high/medium/low), type (runtime/logic/integration/performance/configuration/security), and observability (deterministic/intermittent/environmental/load-dependent). Implements multi-layered detection (Sentry, health checks, synthetic monitoring, RUM), structured logging with JSON schemas and correlation IDs, the Five Whys technique, distributed systems debugging, stack trace analysis with enrichment, and production incident response workflows with communication templates.

- **error-trace** -- Error tracking and monitoring setup. Analyzes current error handling patterns in codebases, implements Sentry integration (Node.js, Python, React), configures DataDog APM with custom spans, sets up OpenTelemetry with Go/Node.js/Python, creates intelligent alerting strategies (error rate, new error types, latency), implements error boundaries and circuit breaker patterns, and configures structured logging pipelines.

- **multi-agent-review** -- Multi-agent code review orchestration system. Coordinates specialized review agents (code quality, security, architecture, performance, compliance) using dynamic agent selection based on code characteristics. Supports parallel and sequential execution, context propagation between agents, intelligent conflict resolution, and result synthesis into unified prioritized reports.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add error-debugging
```

Then invoke the commands:

```
/error-analysis Investigate payment timeout errors in checkout service
/error-trace Set up Sentry and structured logging for our Node.js API
/multi-agent-review Review the authentication module for security and performance
```

## Related Plugins

- **error-diagnostics** -- Similar error analysis with a smart-debug command instead of multi-agent review
- **distributed-debugging** -- Infrastructure-level debugging across Kubernetes and cloud platforms
- **debugging-toolkit** -- General debugging with DX optimization focus
