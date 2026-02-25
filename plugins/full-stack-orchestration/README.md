# Full-Stack Orchestration

> Multi-agent workflows for delivering complete features across backend, frontend, infrastructure, testing, security, and performance layers.

## Overview

This plugin orchestrates specialized agents through structured phases to deliver production-ready full-stack features. Rather than focusing on a single layer, it coordinates database design, backend implementation, frontend development, testing, security auditing, CI/CD setup, observability, and performance optimization into a cohesive workflow. Use it when building end-to-end features that span multiple system layers and require cross-cutting concerns like security, monitoring, and deployment.

## Contents

### Agents

- **test-automator** -- AI-powered test automation engineer covering TDD (Chicago and London schools), self-healing tests with Testsigma/Testim, cross-browser automation with Playwright, API testing with Postman/Karate, performance testing with K6/JMeter, contract testing with Pact, and CI/CD test pipeline integration. Tracks TDD metrics and test quality.

- **performance-engineer** -- End-to-end performance optimization specialist. Masters OpenTelemetry distributed tracing, APM platforms (DataDog, New Relic), multi-tier caching (Redis, CDN, browser), Core Web Vitals optimization, database query profiling, load testing with k6/Gatling, and cloud auto-scaling. Establishes performance budgets and SLI/SLO tracking.

- **deployment-engineer** -- Modern CI/CD and GitOps expert. Handles GitHub Actions workflows, ArgoCD/Flux GitOps, Docker multi-stage builds, Kubernetes deployment strategies (rolling, blue/green, canary), supply chain security (SLSA, SBOM, Sigstore), progressive delivery with Argo Rollouts, and platform engineering with self-service developer portals.

- **security-auditor** -- Comprehensive security and compliance specialist. Covers DevSecOps pipeline integration (SAST, DAST, container scanning), OAuth 2.0/OIDC/WebAuthn authentication, OWASP Top 10 assessment, threat modeling (STRIDE, PASTA), cloud security posture management, compliance frameworks (GDPR, HIPAA, SOC 2), and incident response planning.

### Commands

- **full-stack-feature** -- Orchestrates a 12-step, 4-phase workflow to deliver a complete feature: (1) Architecture and Design -- database schema, backend service architecture, frontend component architecture; (2) Parallel Implementation -- backend services, frontend components, database optimization; (3) Integration and Testing -- API contract tests, E2E tests, security audit; (4) Deployment and Operations -- infrastructure/CI/CD setup, observability stack, performance optimization. Configurable by tech stack, deployment target, API style, and compliance requirements.

### Skills

_None_

## Usage

Run the `full-stack-feature` command with a description of the feature to build. The workflow coordinates multiple agents through sequential phases, passing context between each step.

```
/full-stack-feature Build a user authentication system with OAuth2, profile management, and role-based access control using React/FastAPI/PostgreSQL
```

## Related Plugins

- **frontend-mobile-development** -- Detailed frontend and mobile agent capabilities used by the orchestration workflow
- **incident-response** -- Post-deployment incident handling and system reliability
- **git-pr-workflows** -- Code review and PR creation that complements the deployment pipeline
