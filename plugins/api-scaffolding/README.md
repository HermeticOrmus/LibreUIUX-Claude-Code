# API Scaffolding

> Production-ready API project generation for FastAPI, Django, and GraphQL with framework-specific best practices.

## Overview

This plugin provides specialized agents and templates for scaffolding new API projects from scratch. It covers the full spectrum of backend API frameworks -- from FastAPI's async-first approach to Django's batteries-included philosophy to GraphQL's federated schema design -- plus a general-purpose backend architect for technology-agnostic service design. Use it when starting a new backend project or when you need framework-specific expertise for API development decisions.

## Contents

### Agents

- **backend-architect** -- Technology-agnostic backend system architect for scalable API design. Masters REST/GraphQL/gRPC patterns, microservices boundaries using Domain-Driven Design, event-driven architectures (Kafka, RabbitMQ), resilience patterns (circuit breakers, retries, bulkheads), observability strategies, and deployment patterns. Designs contract-first with clear service boundaries.

- **django-pro** -- Django 5.x specialist covering async views, Django REST Framework, Celery background tasks, Django Channels for WebSockets, and ORM optimization (select_related, prefetch_related). Handles project architecture, testing with pytest-django, security middleware, database migrations, and deployment with Gunicorn/Docker.

- **fastapi-pro** -- FastAPI expert for high-performance async API development. Masters Pydantic V2 validation, SQLAlchemy 2.0 async support, dependency injection patterns, WebSocket implementations, and OpenAPI documentation generation. Covers microservices architecture, JWT authentication, and Kubernetes deployment.

- **graphql-architect** -- Enterprise GraphQL architect for federation (Apollo Federation v2), schema design with Relay compliance, performance optimization (DataLoader, persisted queries, field-level caching), real-time subscriptions, and security (field-level authorization, query complexity analysis, introspection hardening).

### Skills

- **fastapi-templates** -- Production-ready FastAPI project templates with complete code examples. Includes project structure layout, async database setup with SQLAlchemy, CRUD repository pattern with generics, service layer for business logic separation, JWT authentication with OAuth2, Pydantic settings management, and pytest-asyncio test configuration. Covers common pitfalls like blocking code in async handlers and tight coupling.

## When to Use Each Agent

Choosing the right agent depends on your framework and project requirements:

- **backend-architect** -- Use when you need technology-agnostic architecture decisions before committing to a framework. It helps define service boundaries, choose between REST/GraphQL/gRPC, plan event-driven patterns, and design resilience strategies. Works best as the first step before delegating to framework-specific agents.
- **fastapi-pro** -- Use for Python APIs where async performance and type safety matter. Ideal for microservices, high-concurrency APIs, and projects that benefit from automatic OpenAPI documentation. The fastapi-templates skill provides ready-to-use project scaffolding with repository pattern, service layer, and JWT auth.
- **django-pro** -- Use for Python web applications where batteries-included productivity matters. Ideal for admin-heavy applications, rapid prototyping, and projects that need Django's mature ecosystem (ORM, auth, admin, migrations). Best for teams already familiar with Django conventions.
- **graphql-architect** -- Use when building federated APIs across multiple teams, when clients need flexible data fetching (mobile vs. web), or when real-time subscriptions are core requirements. Focuses on schema governance and performance at enterprise scale.

## Usage

```bash
claude plugin install api-scaffolding
```

Start a new project:

```
@fastapi-pro Create a FastAPI microservice with async SQLAlchemy and Redis caching
@django-pro Design a scalable Django architecture for a multi-tenant SaaS application
@graphql-architect Design a federated GraphQL architecture for a multi-team e-commerce platform
@backend-architect Design a webhook delivery system with retry logic and signature verification
```

## Related Plugins

- **backend-development** -- Extends API scaffolding with architecture patterns, TDD workflows, and Temporal orchestration.
- **backend-api-security** -- Adds security-focused coding practices for input validation, authentication, and API hardening.
- **api-testing-observability** -- Provides API documentation generation and mock server creation for testing.
