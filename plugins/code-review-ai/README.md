# Code Review AI

> An AI-powered code review agent and command for automated, multi-layered code analysis integrated with modern static analysis tools.

## Overview

The Code Review AI plugin provides a streamlined, AI-first approach to code review. It combines an architectural review agent with a comprehensive automated review command that integrates AI tools (GitHub Copilot, Qodo, Claude, GPT) alongside battle-tested static analysis platforms (SonarQube, CodeQL, Semgrep). Use this plugin when you need fast, thorough pull request reviews that cover security, performance, architecture, maintainability, and testing concerns across 30+ programming languages.

## Contents

### Agents

- **architect-review** -- Master software architect that reviews system designs and code changes for architectural integrity, scalability, and maintainability. Specializes in clean architecture, hexagonal architecture, microservices, event-driven systems, and domain-driven design (DDD). Evaluates architectural decisions, boundary violations, coupling patterns, and design consistency.

### Commands

- **ai-review** -- Multi-layered code review command that performs initial triage (diff parsing, file classification, PR sizing), then executes parallel static analysis with CodeQL (vulnerability detection), SonarQube (code smells, complexity, duplication), Semgrep (organization-specific rules), Snyk/Dependabot (supply chain security), and GitGuardian/TruffleHog (secret detection). Generates review comments with line references, code examples, and actionable recommendations. Scales analysis depth based on PR size.

## Usage

```
# Install to your project
cp -r plugins/code-review-ai .claude/plugins/

# Run AI-powered review on current changes
# /ai-review

# The architect-review agent activates automatically for architectural discussions
```

## Related Plugins

- **comprehensive-review** -- Extends code review with additional agents for security auditing and multi-phase orchestrated reviews.
- **codebase-cleanup** -- Complements reviews with dependency auditing and technical debt analysis.
- **code-refactoring** -- Implements the improvements identified during code review.
