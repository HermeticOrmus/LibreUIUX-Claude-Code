# Application Performance

> End-to-end performance optimization, observability infrastructure, and frontend development with modern React and monitoring stacks.

## Overview

This plugin provides a comprehensive performance engineering toolkit spanning frontend, backend, and infrastructure layers. It combines a modern frontend developer agent (React 19, Next.js 15), a production-grade observability engineer for monitoring stacks, and a performance engineer for profiling, load testing, and caching architecture. Use it when optimizing application speed, building monitoring infrastructure, creating frontend components, or establishing SLI/SLO frameworks.

## Contents

### Agents

- **frontend-developer** -- Modern frontend expert specializing in React 19 (Server Components, Actions, async transitions), Next.js 15 App Router, TypeScript, and Tailwind CSS. Covers state management (Zustand, TanStack Query), code splitting, Core Web Vitals optimization, accessibility (WCAG 2.1/2.2), testing with React Testing Library and Playwright, and third-party integrations (NextAuth.js, Stripe, Contentful).

- **observability-engineer** -- Production-grade monitoring and reliability specialist. Implements Prometheus/Grafana dashboards, distributed tracing with OpenTelemetry/Jaeger, log management (ELK Stack, Loki, Splunk), PagerDuty alerting with noise reduction, SLI/SLO management with error budgets, chaos engineering, and compliance monitoring (SOC2, PCI DSS, HIPAA). Covers AI-powered anomaly detection and cost optimization for monitoring infrastructure.

- **performance-engineer** -- Full-stack performance optimization expert. Masters application profiling (flame graphs, heap analysis), load testing (k6, Gatling, Locust), multi-tier caching (Redis, CDN, browser), Core Web Vitals measurement, database query optimization, distributed system tuning (service mesh, message queues), cloud auto-scaling, and continuous performance regression detection in CI/CD.

### Commands

- **performance-optimization** -- Orchestrates a 13-step end-to-end performance optimization workflow across five phases: (1) profiling and baseline establishment, (2) database and backend optimization, (3) frontend and CDN optimization, (4) load testing and regression testing, (5) production monitoring and continuous optimization. Delegates to specialized agents at each step with context from previous phases. Includes configurable performance focus (latency/throughput/cost), optimization depth, and success criteria (P50 < 200ms, Core Web Vitals thresholds).

## Performance Optimization Workflow

The performance-optimization command orchestrates the three agents through five phases:

1. **Profiling and baseline** -- The performance-engineer profiles CPU (flame graphs), memory (heap dumps), I/O, and database queries. The observability-engineer assesses the current monitoring stack for gaps. The performance-engineer measures Core Web Vitals and user journey performance.
2. **Database and backend** -- Database queries are optimized with new indexes and caching. Backend code is refactored for async patterns, N+1 query elimination, and response compression. Distributed system communication is tuned (service mesh, message queues, serialization).
3. **Frontend and CDN** -- Bundle splitting, tree shaking, lazy loading, and resource hints are applied. CDN configuration is optimized with edge caching, image optimization (WebP/AVIF), HTTP/2 and HTTP/3, and Brotli compression. Mobile and PWA optimizations address offline functionality and adaptive loading.
4. **Load testing** -- Comprehensive load tests run against normal, peak, and stress scenarios using k6/Gatling/Artillery. Performance regression tests are integrated into CI/CD with automatic rollback triggers.
5. **Monitoring** -- APM dashboards are deployed with SLI/SLO definitions and error budgets. Continuous performance tracking catches regressions before they reach users.

Success criteria: P50 < 200ms, P95 < 1s, P99 < 2s, Core Web Vitals passing (LCP < 2.5s, FID < 100ms, CLS < 0.1), support for 2x peak load with less than 1% error rate.

## Usage

```bash
claude plugin install application-performance
```

Example workflows:

```
@frontend-developer Build a server component that streams data with Suspense boundaries
@observability-engineer Design a comprehensive monitoring strategy for 50+ microservices
@performance-engineer Analyze and optimize end-to-end API performance with distributed tracing
/performance-optimization my-ecommerce-app --performance_focus balanced --optimization_depth comprehensive
```

## Related Plugins

- **api-scaffolding** -- Backend framework agents (FastAPI, Django) whose APIs the performance engineers optimize.
- **agent-orchestration** -- Multi-agent optimization patterns complement the performance-optimization command workflow.
- **backend-development** -- Architecture patterns and backend architects provide the service designs that performance engineering tunes.
