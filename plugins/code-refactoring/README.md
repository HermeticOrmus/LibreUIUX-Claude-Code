# Code Refactoring

> Agents and commands for modernizing legacy code, managing technical debt, and performing structured refactoring with context preservation.

## Overview

The Code Refactoring plugin provides specialized tools for transforming and modernizing codebases safely. It combines a legacy modernization agent with commands for clean code refactoring, technical debt management, and context restoration across sessions. Use this plugin when migrating frameworks, decomposing monoliths, updating dependencies, or systematically improving code quality in existing projects.

## Contents

### Agents

- **code-reviewer** -- Elite code review agent that supports refactoring efforts by identifying code smells, SOLID violations, security vulnerabilities, and performance issues. Provides constructive feedback with specific code examples and alternatives, ensuring refactored code meets quality standards.

- **legacy-modernizer** -- Legacy modernization specialist focused on safe, incremental upgrades. Handles framework migrations (jQuery to React, Java 8 to 17, Python 2 to 3), database modernization (stored procedures to ORMs), monolith-to-microservices decomposition, dependency updates, test coverage for legacy code, and API versioning with backward compatibility.

### Commands

- **context-restore** -- Advanced semantic memory rehydration tool for recovering and reconstructing project context across distributed AI workflows. Supports full, incremental, and diff restoration modes with configurable token budgets and relevance thresholds. Uses semantic vector search to maintain historical knowledge integrity and decision traceability.

- **refactor-clean** -- Code refactoring command that analyzes code for smells, SOLID violations, and performance issues, then produces prioritized refactoring plans. Includes method extraction, class decomposition, design pattern application (Factory, Strategy, Observer, Repository, Decorator), before/after metrics comparison, and migration guides for breaking changes.

- **tech-debt** -- Technical debt analysis and remediation command that inventories debt across code, architecture, testing, documentation, and infrastructure. Calculates real cost impact (developer hours, bug rates, velocity loss), creates prioritized roadmaps with ROI projections, and establishes prevention strategies with automated quality gates and debt budgets.

## Usage

```
# Install to your project
cp -r plugins/code-refactoring .claude/plugins/

# Analyze and refactor code
# /refactor-clean src/services/order-processor.ts

# Assess technical debt
# /tech-debt src/

# Restore context from a previous session
# /context-restore --project my-app --mode full
```

## Related Plugins

- **codebase-cleanup** -- Broader cleanup toolkit including dependency auditing and test automation.
- **comprehensive-review** -- Multi-agent review that can identify refactoring opportunities across the full codebase.
- **context-management** -- Dedicated context save/restore workflows with design system context support.
