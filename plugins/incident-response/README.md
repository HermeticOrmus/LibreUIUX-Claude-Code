# Incident Response

> Agents and commands for production incident management, DevOps troubleshooting, intelligent issue resolution, and SRE best practices.

## Overview

This plugin provides rapid-response capabilities for production incidents and systematic debugging workflows. It combines a DevOps troubleshooter for hands-on system debugging with an SRE incident responder for structured incident command, communication, and blameless post-mortems. The command workflows orchestrate multiple specialized agents through detection, investigation, resolution, and prevention phases. Use it during active outages, when debugging complex production issues, or when establishing incident response processes.

## Contents

### Agents

- **devops-troubleshooter** -- Hands-on debugging specialist for production systems. Covers modern observability (ELK, Prometheus, Grafana, Jaeger, OpenTelemetry), Kubernetes and container debugging (kubectl, CNI, service mesh), network analysis (tcpdump, DNS, load balancers), performance profiling (CPU, memory, I/O, database deadlocks), CI/CD pipeline failures, cloud platform troubleshooting (AWS, Azure, GCP), and infrastructure-as-code state issues. Follows systematic hypothesis-driven debugging with blameless postmortem documentation.

- **incident-responder** -- SRE incident command specialist acting with urgency during production incidents. Implements a structured response: severity assessment (P0-P3), incident command establishment (Commander, Communications Lead, Technical Lead), immediate stabilization (traffic throttling, feature flags, rollbacks), observability-driven investigation, stakeholder communication strategy (status page, executive updates, customer outreach), resolution with staged rollout, and blameless post-mortem with action items. Manages error budgets and SLI/SLO tracking.

### Commands

- **incident-response** -- Multi-agent incident response workflow with 5 phases and 13 steps: (1) Detection and Triage -- incident classification, observability sweep, initial mitigation; (2) Investigation -- deep system debugging, security assessment, performance analysis; (3) Resolution -- fix implementation, staged deployment with rollback; (4) Communication -- stakeholder updates, customer impact assessment; (5) Postmortem and Prevention -- blameless postmortem, monitoring enhancement, system hardening. Coordinates incident-responder, debugger, security-auditor, performance-engineer, and deployment-engineer agents.

- **smart-fix** -- Intelligent issue resolution pipeline with 5 phases: (1) Error detection and context gathering using observability data (Sentry, DataDog, OpenTelemetry); (2) Deep code analysis with automated git bisect and dependency compatibility checks; (3) Domain-specific fix implementation routed to the appropriate language agent (Python, TypeScript, Go, Rust, SQL); (4) Verification with regression testing, performance benchmarking, and security scanning; (5) Prevention with static analysis rules, monitoring, and architectural improvements. Configurable verification level (minimal/standard/comprehensive) and rollout strategy (immediate/canary/blue-green/feature-flag).

### Skills

_None_

## Usage

Use the agents directly for ad-hoc troubleshooting, or run the orchestrated commands for structured incident handling.

```
/incident-response P1 service outage on the checkout API affecting 30% of users, started 10 minutes ago
/smart-fix TypeError: Cannot read property 'map' of undefined -- 500+ occurrences in Sentry in the last hour
```

## Related Plugins

- **full-stack-orchestration** -- Performance engineer and security auditor agents used during incident investigation
- **git-pr-workflows** -- Code reviewer for post-incident fix review and PR creation
- **frontend-mobile-security** -- For security-specific incident analysis on client-side code
