# Distributed Debugging

> DevOps troubleshooting, error detection, and debug trace configuration for distributed systems and Kubernetes environments.

## Overview

The distributed-debugging plugin provides agents and a command tailored to debugging issues in distributed systems, microservices, and cloud-native infrastructure. Use it when troubleshooting production incidents across multiple services, analyzing distributed traces, debugging Kubernetes pods, investigating network and DNS issues, or setting up comprehensive debugging and tracing environments. The agents specialize in the operational side of debugging where issues span service boundaries.

## Contents

### Agents

- **devops-troubleshooter** -- Expert in rapid incident response, advanced debugging, and modern observability. Covers logging platforms (ELK, Loki, Fluentd), APM solutions (DataDog, New Relic, Dynatrace), distributed tracing (Jaeger, Zipkin, OpenTelemetry), Kubernetes debugging (pod troubleshooting, service mesh, CNI, storage), network analysis (tcpdump, DNS, load balancers), performance profiling (CPU, memory, database), CI/CD pipeline debugging, and cloud platform troubleshooting (AWS, Azure, GCP). Uses the `haiku` model.

- **error-detective** -- Specializes in log analysis and error pattern recognition. Parses logs with regex patterns, analyzes stack traces across languages, correlates errors across distributed systems, queries log aggregation tools (Elasticsearch, Splunk), and detects anomalies in log streams. Works backward from symptoms to causes, identifies cascading failures, and provides monitoring queries to detect recurrence. Uses the `haiku` model.

### Commands

- **debug-trace** -- Sets up comprehensive debugging environments and distributed tracing. Configures VS Code debug launches for Node.js, Python, Go, and multi-service setups, implements OpenTelemetry distributed tracing with exporters, sets up structured logging with correlation IDs, configures browser debugging with React/Vue DevTools, implements performance profiling and memory leak detection, and establishes production-safe debugging techniques including feature-flagged logging and sampling-based profiling.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add distributed-debugging
```

Then invoke the command or use the agents:

```
/debug-trace Set up OpenTelemetry tracing for our Node.js microservices

Task(subagent_type="distributed-debugging::devops-troubleshooter")
"Debug intermittent 504 timeout errors in production load balancer"
```

## Related Plugins

- **error-debugging** -- Application-level error analysis with multi-agent code review
- **error-diagnostics** -- Error classification, observability setup, and smart debugging workflows
- **debugging-toolkit** -- General-purpose debugging and developer experience optimization
