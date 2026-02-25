# Backend Development

> Comprehensive backend engineering with architecture patterns, TDD orchestration, Temporal workflows, and API design principles.

## Overview

This plugin is the most extensive backend engineering toolkit in the collection. It provides four specialized agents covering system architecture, GraphQL federation, test-driven development governance, and Temporal workflow orchestration, backed by five skill modules with reference implementations for API design, architecture patterns, microservices, Temporal testing, and workflow orchestration. Use it for building production backend systems, establishing TDD practices across teams, implementing distributed workflows, or applying proven architecture patterns like Clean Architecture and Hexagonal Architecture.

## Contents

### Agents

- **backend-architect** -- Expert backend system architect for scalable API design with REST/GraphQL/gRPC, microservices decomposition using Domain-Driven Design, event-driven architectures, resilience patterns (circuit breakers, retries, sagas), and comprehensive observability strategies. Designs contract-first with clear service boundaries.

- **graphql-architect** -- Enterprise GraphQL specialist for Apollo Federation v2, schema-first design with Relay compliance, DataLoader optimization, field-level caching and authorization, real-time subscriptions, and schema governance across distributed teams. Covers migration strategies from REST to GraphQL.

- **tdd-orchestrator** -- TDD governance agent enforcing red-green-refactor discipline across teams. Orchestrates multi-agent test workflows, supports both Chicago School (classic) and London School (mockist) TDD, coordinates BDD/ATDD integration, implements mutation testing and property-based testing, manages AI-assisted test generation, and tracks TDD metrics for continuous improvement.

- **temporal-python-pro** -- Temporal workflow expert for Python SDK implementation. Covers workflow/activity patterns with async/await, three execution models (async, threaded, multiprocess), determinism constraints, signal/query handlers, retry policies, error handling with ApplicationError, testing strategies (time-skipping, replay, integration), and production deployment with worker scaling and observability.

### Commands

- **feature-development** -- Orchestrates end-to-end feature development from requirements to production deployment. Supports multiple methodologies (traditional, TDD, BDD, DDD), feature complexity levels (simple to epic), and deployment strategies (canary, feature-flag, blue-green, A/B test). Delegates through phases: discovery and requirements, architecture, implementation, testing, and deployment.

### Skills

- **api-design-principles** -- REST and GraphQL API design principles covering resource-oriented architecture, HTTP method semantics, pagination strategies, error handling, and developer-friendly documentation standards.

- **architecture-patterns** -- Proven backend patterns including Clean Architecture (Uncle Bob), Hexagonal Architecture (ports and adapters), and Domain-Driven Design with bounded contexts, aggregates, and ubiquitous language.

- **microservices-patterns** -- Service decomposition strategies (by business capability, by subdomain), inter-service communication, distributed data management, resilience patterns, service discovery, and event-driven architectures.

- **temporal-python-testing** -- Comprehensive Temporal testing strategies with pytest: unit tests using time-skipping environments, integration tests with mocked activities, replay testing for determinism validation, and local development setup. Includes resources for each testing type.

- **workflow-orchestration-patterns** -- Temporal workflow design patterns covering workflow vs. activity separation, saga patterns for distributed transactions, state management, determinism constraints, and guidance on when (and when not) to use workflow orchestration.

## Usage

```bash
claude plugin install backend-development
```

Example workflows:

```
@backend-architect Design a RESTful API for an e-commerce order management system
@tdd-orchestrator Orchestrate a complete TDD implementation for a new microservices project
@temporal-python-pro Implement a saga pattern for distributed order processing with compensation logic
/feature-development "User authentication with OAuth2" --methodology tdd --complexity medium --deployment feature-flag
```

## Related Plugins

- **api-scaffolding** -- Framework-specific agents (FastAPI, Django) for implementing the architectures designed here.
- **backend-api-security** -- Security-focused coding practices for the backends built with this plugin.
- **application-performance** -- Performance optimization and observability for the services and APIs created here.
