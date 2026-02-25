# Performance Testing & Review

> AI-powered code review, test automation, and performance engineering for comprehensive quality assurance.

## Overview

This plugin combines performance engineering expertise with AI-assisted code review and test automation. Two specialized agents handle performance optimization and intelligent test generation respectively, while two commands provide single-agent and multi-agent code review workflows that integrate static analysis (SonarQube, CodeQL, Semgrep) with LLM-powered contextual review across 30+ languages.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **performance-engineer** | Application profiling (CPU, memory, I/O), load testing (k6, JMeter, Gatling, Locust), Core Web Vitals, multi-tier caching, distributed system performance, cloud optimization, and chaos engineering. |
| **test-automator** | AI-powered test automation with TDD (Chicago and London schools), self-healing tests (Testsigma, Applitools), Playwright/Selenium, Appium, contract testing (Pact), property-based testing, and CI/CD integration. |

### Commands

| Command | Description |
|---------|-------------|
| **ai-review** | AI-powered code review combining multi-tool static analysis (SonarQube, CodeQL, Semgrep, Snyk, TruffleHog) with LLM-assisted contextual analysis for security, performance, architecture, and maintainability issues with severity-classified, actionable comments. |
| **multi-agent-review** | Multi-agent code review orchestration that coordinates specialized reviewers (security auditor, architecture specialist, performance analyst, compliance validator) with parallel/sequential execution, conflict resolution, and consolidated reporting. |

## Usage

- **Code review**: Use ai-review for single-file or PR-level review, or multi-agent-review for comprehensive multi-perspective analysis of larger changes.
- **Performance optimization**: The performance-engineer agent profiles bottlenecks, designs load tests, and implements caching strategies.
- **Test strategy**: The test-automator agent designs test pyramids, generates tests using TDD practices, and sets up CI/CD quality gates.
- **CI/CD integration**: Both review commands include GitHub Actions, GitLab CI, and Azure DevOps pipeline configurations.
- **Quality gates**: Configure automated pass/fail thresholds on critical security issues, performance regressions, or coverage drops.

## Related Plugins

- **observability-monitoring** -- Performance monitoring that validates optimizations in production.
- **security-scanning** -- SAST and dependency scanning that complements AI-powered security review.
- **multi-platform-apps** -- Cross-platform code that benefits from multi-agent review.
