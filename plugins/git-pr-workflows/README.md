# Git & PR Workflows

> Agents and commands for code review, PR enhancement, team onboarding, and end-to-end git workflow orchestration with quality gates.

## Overview

This plugin streamlines the entire git workflow from code review through pull request creation and team onboarding. It combines AI-powered code analysis with structured PR descriptions, automated review checklists, and multi-agent orchestration for Conventional Commits, testing, and deployment readiness. Use it when reviewing code, creating pull requests, onboarding new team members, or establishing consistent git practices across a team.

## Contents

### Agents

- **code-reviewer** -- Elite code review specialist combining AI-powered analysis (Trag, Bito, CodeQL, Semgrep) with manual expertise. Covers OWASP Top 10 vulnerability detection, performance and N+1 query analysis, configuration and infrastructure review, test coverage assessment, and language-specific patterns for JavaScript/TypeScript, Python, Java, Go, Rust, and C#. Provides constructive, educational feedback with specific code examples.

### Commands

- **onboard** -- Comprehensive team onboarding orchestrator covering the full new-hire lifecycle: pre-boarding preparation (accounts, hardware, documentation), Day 1 orientation, Week 1 codebase immersion, development environment setup, buddy system implementation, learning resource curation, and 30/60/90-day milestone tracking. Includes templates for software engineers, remote employees, and senior/lead engineers.

- **pr-enhance** -- Generates comprehensive PR descriptions with automated analysis: change summaries with file categorization, risk assessment scoring, test coverage comparison (before/after), architecture diff diagrams (Mermaid), context-aware review checklists, PR size optimization with split suggestions, and automated review bot checks for console logs, large functions, and security issues. Supports feature, bugfix, and refactor PR templates.

- **git-workflow** -- Multi-agent git workflow orchestrating 5 phases: (1) Pre-commit code quality and breaking change analysis, (2) Test execution with coverage and gap analysis, (3) Conventional Commit message generation, (4) Branch strategy and pre-push validation, (5) PR creation with description generation and metadata automation. Supports trunk-based and feature-branch strategies with flags for draft PRs, squashing, and test skipping.

### Skills

_None_

## Usage

Use the code-reviewer agent for on-demand code quality checks. Run the workflow commands to automate specific parts of the git lifecycle.

```
/git-workflow main --conventional --feature-branch
/pr-enhance Analyze current branch changes and generate PR description
/onboard Software Engineer, remote, React/Node.js stack, 15-person team
```

## Related Plugins

- **full-stack-orchestration** -- Deployment engineer and test automator agents referenced by the git-workflow
- **incident-response** -- Smart-fix command for resolving issues that surface during code review
- **javascript-typescript** -- Language-specific review patterns for JS/TS codebases
