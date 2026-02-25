# Framework Migration

> Complete migration toolkit with architects, modernizers, migration commands, and hands-on skills for Angular, React, database, and dependency upgrades.

## Overview

The framework-migration plugin is the most comprehensive migration toolkit in the collection, combining agents, commands, and skills. Use it when migrating between frameworks (AngularJS to Angular, class components to hooks), upgrading major dependencies, modernizing legacy codebases with the strangler fig pattern, performing database migrations across ORMs, or transitioning between API paradigms (REST to GraphQL). It provides both high-level architectural guidance and hands-on code transformation patterns.

## Contents

### Agents

- **architect-review** -- Master software architect for reviewing system designs and code changes. Covers clean architecture, hexagonal architecture, microservices with DDD bounded contexts, event-driven architecture with CQRS, distributed systems design (service mesh, Saga, Outbox patterns), SOLID principles, cloud-native patterns, security architecture (zero-trust, OAuth2), and C4 model documentation. Assesses architectural impact and identifies violations. Uses the `sonnet` model.

- **legacy-modernizer** -- Specialist in safe, incremental legacy code upgrades. Handles framework migrations (jQuery to React, Java 8 to 17, Python 2 to 3), database modernization (stored procedures to ORMs), monolith-to-microservices decomposition, and dependency updates. Uses the strangler fig pattern, adds tests before refactoring, maintains backward compatibility, and provides rollback procedures for each phase. Uses the `haiku` model.

### Commands

- **code-migrate** -- Comprehensive code migration assistant. Performs migration assessment with complexity scoring and risk identification, generates phased migration plans, handles framework-specific migrations (React to Vue, Python 2 to 3, REST to GraphQL), performs database migrations (SQL to NoSQL), implements testing strategies with side-by-side comparison, provides rollback planning (blue/green, canary, feature flags), and generates CLI tools and progress monitoring dashboards.

- **deps-upgrade** -- Safe dependency upgrade planning and execution. Analyzes outdated dependencies across npm and Python ecosystems, detects breaking changes with framework-specific knowledge (React, Webpack, Angular, Vue), generates step-by-step migration guides, plans incremental upgrade paths through safe intermediate versions, provides automated testing strategies (pre/post upgrade comparison, smoke tests), builds compatibility matrices, and implements batch update strategies prioritized by security, patch, minor, and major.

- **legacy-modernize** -- Multi-phase legacy system modernization workflow using the strangler fig pattern. Orchestrates comprehensive assessment (technical debt inventory, dependency mapping, business impact analysis), test coverage establishment (characterization tests, contract testing, test data management), incremental migration with API gateway traffic routing and feature flags, security hardening, performance validation, progressive rollout (5% to 100% with automated rollback), and documentation generation.

### Skills

- **angular-migration** -- Hands-on guide for migrating AngularJS (1.x) to Angular (2+). Covers hybrid app setup with ngUpgrade, controller-to-component conversion, directive-to-component migration, service migration ($http to HttpClient), dependency injection changes (downgrading and upgrading), routing migration, forms migration (template-driven and reactive), and phased timelines from setup through cleanup.

- **database-migration** -- Database schema and data migrations across ORMs (Sequelize, TypeORM, Prisma). Covers schema transformations (adding columns, renaming with zero downtime, changing types), complex data transformations, rollback strategies (transaction-based, checkpoint-based), zero-downtime migration patterns (blue-green with multi-phase column changes), and cross-database migrations (PostgreSQL to MySQL).

- **dependency-upgrade** -- Managing major dependency version upgrades. Covers semantic versioning, dependency analysis and audit tools (npm outdated, npm-check-updates), compatibility matrices, staged upgrade strategies (plan, upgrade incrementally, validate), breaking change handling with codemods, testing strategies (unit, integration, visual regression, E2E), automated updates with Renovate and Dependabot, and rollback procedures.

- **react-modernization** -- Upgrading React applications and migrating to modern patterns. Covers the React 16 to 17 to 18 upgrade path, class-to-hooks migration (state, lifecycle, context, HOCs), React 18 concurrent features (createRoot, automatic batching, transitions, Suspense), automated codemods (jscodeshift), performance optimization (useMemo, useCallback, code splitting), and TypeScript migration with typed components.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add framework-migration
```

Then invoke the commands or use the agents:

```
/code-migrate Migrate our AngularJS app to Angular 17
/deps-upgrade Plan safe upgrade of React from 16 to 18
/legacy-modernize Modernize the payment processing monolith

Task(subagent_type="framework-migration::architect-review")
"Review the proposed microservices decomposition for proper bounded contexts"
```

## Related Plugins

- **dependency-management** -- Dependency auditing for security, licensing, and supply chain analysis
- **deployment-strategies** -- CI/CD and infrastructure for deploying migrated systems
- **documentation-generation** -- Generating documentation for modernized architectures
