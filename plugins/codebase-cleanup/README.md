# Codebase Cleanup

> Agents and commands for identifying and resolving code quality issues, technical debt, and dependency vulnerabilities.

## Overview

The Codebase Cleanup plugin provides a comprehensive toolkit for maintaining healthy codebases. It combines AI-powered code review with automated dependency auditing, technical debt analysis, and structured refactoring workflows. Use this plugin when a project has accumulated quality issues, outdated dependencies, or needs a systematic approach to reducing complexity and improving maintainability.

## Contents

### Agents

- **code-reviewer** -- Elite code review agent specializing in AI-powered static analysis, security vulnerability detection, performance optimization, and production reliability assessment. Integrates with tools like SonarQube, CodeQL, Semgrep, and Snyk. Covers OWASP Top 10, SOLID principles, and language-specific best practices across JavaScript, Python, Java, Go, Rust, and more.

- **test-automator** -- Test automation engineer focused on building scalable testing ecosystems with AI-powered frameworks, self-healing tests, and CI/CD integration. Supports TDD workflows (Chicago and London schools), cross-platform testing, performance/load testing, and comprehensive test reporting with tools like Playwright, Appium, K6, and Allure.

### Commands

- **deps-audit** -- Performs comprehensive dependency security analysis including CVE vulnerability scanning, license compliance checking, outdated package detection, bundle size impact analysis, and supply chain security verification. Generates prioritized remediation plans with automated update scripts and PR templates.

- **refactor-clean** -- Analyzes code for smells (long methods, god classes, duplication, tight coupling) and SOLID violations, then produces a prioritized refactoring plan. Provides before/after comparisons, design pattern application guidance, code quality metrics interpretation, and migration strategies for breaking changes.

- **tech-debt** -- Conducts thorough technical debt inventory across code, architecture, testing, documentation, and infrastructure dimensions. Quantifies debt impact in developer hours and cost, creates prioritized remediation roadmaps with ROI projections, and establishes prevention strategies with automated quality gates.

## Usage

Copy the plugin directory into your Claude Code project's `.claude/plugins/` folder, or reference it from your global Claude configuration:

```
# From your project root
cp -r plugins/codebase-cleanup .claude/plugins/

# Use the agents and commands in Claude Code
# Agents are available automatically; commands via /deps-audit, /refactor-clean, /tech-debt
```

## Related Plugins

- **code-refactoring** -- Focused specifically on legacy modernization and structured refactoring workflows.
- **comprehensive-review** -- Multi-agent orchestrated review covering security, architecture, and code quality in a single pass.
- **code-review-ai** -- Streamlined AI-powered code review with automated static analysis integration.
