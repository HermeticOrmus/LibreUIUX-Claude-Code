# Observability & Monitoring

> Production observability stack with Prometheus, Grafana, distributed tracing, SLO frameworks, and infrastructure monitoring.

## Overview

This plugin provides a complete observability and monitoring toolkit spanning metrics collection, visualization, distributed tracing, SLI/SLO frameworks, database optimization, and network engineering. Four specialized agents handle different infrastructure domains, two multi-agent commands orchestrate complex setups, and four skills provide detailed configuration guidance for the core observability tools.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **database-optimizer** | Database performance tuning, query optimization, advanced indexing (B-tree, GIN, BRIN), N+1 resolution, multi-tier caching, partitioning, and cloud database optimization across PostgreSQL, MySQL, MongoDB, and DynamoDB. |
| **network-engineer** | Cloud networking (AWS VPC, Azure VNet, GCP), load balancing, DNS, SSL/TLS, service mesh, zero-trust architecture, CDN optimization, and network troubleshooting. |
| **observability-engineer** | Production monitoring with Prometheus, Grafana, OpenTelemetry, Jaeger/Tempo, log aggregation (ELK, Loki), alerting, and SLI/SLO implementation. |
| **performance-engineer** | Application profiling, load testing (k6, JMeter, Gatling), multi-tier caching, Core Web Vitals, serverless optimization, and chaos engineering. |

### Commands

| Command | Description |
|---------|-------------|
| **monitor-setup** | Multi-agent workflow to deploy a full monitoring stack: Prometheus metrics, Grafana dashboards, OpenTelemetry tracing, Fluentd log aggregation, alerting rules, and SLO implementation. |
| **slo-implement** | SLO implementation command covering framework design, SLI selection, error budget calculation, burn rate alerts, reporting dashboards, and governance processes. |

### Skills

| Skill | Description |
|-------|-------------|
| **distributed-tracing** | Set up Jaeger or Grafana Tempo with OpenTelemetry instrumentation for Python, Node.js, and Go services including context propagation and sampling strategies. |
| **grafana-dashboards** | Build Grafana dashboards using RED and USE methods with panel types, template variables, provisioning as code, and alerting integration. |
| **prometheus-configuration** | Configure Prometheus scrape targets, recording rules, alerting rules, federation, and long-term storage with Thanos or Cortex. |
| **slo-implementation** | Define SLIs, set SLO targets, calculate error budgets, implement burn rate alerts, and build SLO dashboards with governance workflows. |

## Usage

- **Greenfield monitoring**: Use the monitor-setup command to deploy the full observability stack in one coordinated workflow.
- **SLO adoption**: The slo-implement command walks through the entire SLO lifecycle from SLI selection to error budget governance.
- **Database issues**: The database-optimizer agent handles query analysis, indexing strategy, and caching architecture.
- **Network problems**: The network-engineer agent troubleshoots connectivity, configures load balancers, and designs secure network topologies.
- **Individual tool setup**: Use the dedicated skills for Prometheus, Grafana, or tracing configuration.

## Related Plugins

- **kubernetes-operations** -- Kubernetes workloads that feed metrics into the observability stack.
- **performance-testing-review** -- Load testing that generates the traffic monitored by this plugin.
- **security-scanning** -- Security monitoring and SIEM integration.
