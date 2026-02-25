# Documentation Generation

> Five specialized agents and an automated doc-generation command for creating comprehensive technical documentation.

## Overview

The documentation-generation plugin is the most agent-rich documentation toolkit in the collection. Use it when you need to create API documentation with OpenAPI specs, generate long-form technical manuals from codebases, build visual diagrams, create exhaustive reference materials, develop step-by-step tutorials, or automate documentation pipelines in CI/CD. The five agents cover distinct documentation specialties, from interactive API portals to pedagogical tutorial design.

## Contents

### Agents

- **api-documenter** -- API documentation specialist for OpenAPI 3.1+, AsyncAPI, and GraphQL schemas. Creates interactive documentation (Swagger UI, Redoc), generates multi-language SDKs, documents authentication flows (OAuth 2.0, JWT, API keys), implements documentation-driven testing, manages API versioning and migration guides, and optimizes developer portals for discoverability. Uses the `haiku` model.

- **docs-architect** -- Creates comprehensive, long-form technical documentation (10-100+ pages) from existing codebases. Analyzes architecture, design patterns, and implementation details across discovery, structuring, and writing phases. Produces executive summaries, architecture overviews, design decision rationale, component deep-dives, data model documentation, and deployment guides. Uses the `sonnet` model.

- **mermaid-expert** -- Creates professional Mermaid diagrams including flowcharts, sequence diagrams, entity relationship diagrams, state diagrams, Gantt charts, architecture diagrams, git graphs, and journey maps. Provides both basic and styled versions with comments explaining complex syntax. Uses the `haiku` model.

- **reference-builder** -- Creates exhaustive, searchable technical references. Documents every parameter, method, and configuration option with precise categorization, cross-referencing, and examples for every feature. Covers API references, configuration guides, schema documentation, quick starts, troubleshooting sections, and migration guides with machine-readable metadata. Uses the `haiku` model.

- **tutorial-engineer** -- Transforms complex technical concepts into progressive, hands-on learning experiences. Designs learning objectives, decomposes concepts into atomic steps, creates exercises (fill-in-the-blank, debug challenges, extension tasks), anticipates common errors, and supports multiple learning styles. Produces quick starts, deep dives, workshop series, and cookbook-style guides. Uses the `sonnet` model.

### Commands

- **doc-generate** -- Automated documentation generation from code analysis. Extracts API endpoints and Pydantic schemas to generate OpenAPI specs, creates architecture diagrams with Mermaid, generates README files from templates, produces function documentation with signatures and examples, builds user guides with step-by-step workflows, sets up Swagger UI for interactive API exploration, configures CI/CD pipelines (GitHub Actions) for automatic doc generation and deployment, and validates documentation coverage across the codebase.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add documentation-generation
```

Then invoke the command or use the agents:

```
/doc-generate Generate comprehensive documentation for this project

Task(subagent_type="documentation-generation::docs-architect")
"Create a technical manual documenting our microservices architecture"
```

## Related Plugins

- **data-engineering** -- Backend architecture that benefits from API documentation
- **framework-migration** -- Migration documentation and legacy system guides
- **deployment-validation** -- Configuration reference documentation
