# API Testing & Observability

> API documentation generation, mock server creation, and developer experience tooling for API lifecycle management.

## Overview

This plugin covers the testing and documentation side of API development. It provides an AI-powered documentation specialist for creating interactive developer portals with OpenAPI 3.1, SDK generation, and migration guides, alongside a comprehensive mock server framework for parallel development and testing. Use it when you need to document existing APIs, generate client SDKs, create mock services for frontend teams, or establish contract testing workflows.

## Contents

### Agents

- **api-documenter** -- API documentation specialist mastering OpenAPI 3.1, AsyncAPI for event-driven APIs, and GraphQL schema documentation. Creates interactive developer portals with try-it-now functionality, generates multi-language SDKs from specifications, builds onboarding experiences, and implements docs-as-code workflows with CI/CD integration. Covers version management, migration guides, changelog automation, and documentation analytics. Runs on the haiku model for cost efficiency.

### Commands

- **api-mock** -- Comprehensive API mocking framework for development, testing, and demonstration. Creates stateful mock servers using FastAPI with dynamic route configuration, scenario management for simulating different API behaviors (success, error, latency), response templating with realistic data generation, and state management for multi-step workflows. Supports contract validation, parallel development workflows, and integration with CI/CD pipelines.

## Key Capabilities

The api-documenter agent covers the full documentation lifecycle:

- **Specification authoring** for OpenAPI 3.1, AsyncAPI (event-driven APIs), and GraphQL SDL with JSON Schema validation integration.
- **Interactive documentation** with Swagger UI, Redoc, Stoplight Studio, and custom portals built on frameworks like Docusaurus. Includes try-it-now functionality with live authentication handling.
- **SDK generation** in multiple languages from OpenAPI specifications, with version management and CI/CD integration for automated releases.
- **Developer portal design** with information architecture, search optimization, user authentication, API key management, analytics tracking, and community features.
- **Migration and versioning** support including breaking change communication, deprecation timelines, changelog automation, and version-specific documentation maintenance.
- **Quality assurance** with automated testing of code examples, response validation against schemas, and mock server generation from documentation.

The api-mock command provides a stateful mock server framework built on FastAPI:

- **Dynamic route configuration** that loads mock definitions and creates routes at runtime from API specifications.
- **Scenario management** for simulating different API behaviors: success responses, various error codes, network latency, timeout conditions, and rate limiting.
- **State management** enabling multi-step workflows where mock responses change based on previous interactions (order placement followed by status checks, for example).
- **Response templating** with realistic data generation for testing frontend integrations without a live backend.
- **Contract validation** that verifies requests match the expected schema, catching integration errors during development.
- **CI/CD integration** for running mock servers in automated test pipelines.

## Usage

```bash
claude plugin install api-testing-observability
```

Example workflows:

```
@api-documenter Create a comprehensive OpenAPI 3.1 specification for this REST API with authentication examples
@api-documenter Build an interactive developer portal with multi-API documentation and user onboarding
@api-documenter Generate SDKs in Python, JavaScript, and Go from this OpenAPI spec
/api-mock --spec openapi.yaml --scenarios "happy-path,error-states,slow-network"
```

## Related Plugins

- **api-scaffolding** -- Provides the API frameworks (FastAPI, Django, GraphQL) that this plugin documents and tests against.
- **application-performance** -- The observability-engineer agent builds monitoring and tracing for the APIs documented here.
- **backend-development** -- API design principles skill provides the standards that documentation should reflect.
