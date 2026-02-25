# Agent Orchestration

> Multi-agent workflow coordination, context management, and AI agent performance optimization.

## Overview

This plugin provides the infrastructure for orchestrating multiple AI agents working together on complex tasks. It covers dynamic context engineering with vector databases and knowledge graphs, systematic agent performance improvement through prompt engineering and A/B testing, and architectural patterns for delegating UI/UX work to specialized agent swarms. Use it when single-agent approaches hit their limits and you need coordinated multi-agent workflows.

## Contents

### Agents

- **context-manager** -- Elite AI context engineering specialist for dynamic context management, vector databases (Pinecone, Weaviate, Qdrant), knowledge graphs, and intelligent memory systems. Handles RAG implementation, multi-agent context handoff, enterprise knowledge integration, token budget management, and context quality scoring. Runs on the haiku model for cost-effective context operations.

### Commands

- **improve-agent** -- Systematic agent performance optimization workflow. Gathers 30-day performance baselines (task completion rate, hallucination incidents, tool usage efficiency), classifies failure modes, applies chain-of-thought enhancement and few-shot example curation, runs A/B tests with statistical significance testing, and manages staged rollouts with automatic rollback triggers.

- **multi-agent-optimize** -- Multi-agent performance engineering framework for holistic system optimization. Coordinates database, application, and frontend performance profiling agents in parallel. Includes context window compression, agent coordination efficiency patterns, LLM cost management with adaptive model selection, latency reduction techniques, and continuous monitoring dashboards.

### Skills

- **ui-agent-patterns** -- Patterns for orchestrating AI agents to generate, refine, and maintain user interfaces. Covers three core architectures: synthesis-master (single powerful agent), specialized agent swarm (research/design/code/review), and hierarchical delegation (master with component subagents). Includes design-to-code pipelines, iterative refinement loops, parallel variant generation, agent memory patterns, operational modes (draft/production/audit/learning), and permission boundaries.

## Key Concepts

This plugin operates at the meta-level of AI development -- optimizing the agents themselves rather than the applications they build. Key concepts include:

- **Context engineering** -- The practice of assembling the right information, tools, and memory for AI systems at the right time. The context-manager agent implements this through vector databases (semantic search and similarity retrieval), knowledge graphs (entity linking and relationship modeling), and RAG (retrieval-augmented generation) with document chunking and query understanding.
- **Agent performance optimization** -- The improve-agent command follows a four-phase process: performance analysis (30-day baselines, failure mode classification), prompt engineering improvements (chain-of-thought, few-shot examples, role refinement, constitutional AI self-correction), testing and validation (A/B testing with 95% confidence, human evaluation protocols, mutation testing), and staged deployment (alpha 5%, beta 20%, canary rollout to 100%) with automatic rollback if success rate drops more than 10%.
- **Multi-agent architecture patterns** -- The ui-agent-patterns skill codifies three architectures. The synthesis-master pattern uses a single powerful agent for simple, well-defined tasks. The specialized agent swarm uses separate research, design, code, and review agents for complex design systems. Hierarchical delegation uses a master agent that decomposes pages into components and delegates to subagents for parallel generation, then integrates the results.
- **Agent memory** -- Persistent storage of design decisions and preferences that agents recall via semantic search and inject into prompts for consistency across sessions.
- **Modes and permissions** -- Configurable agent behavior (draft mode for fast exploration, production mode for high-quality output, audit mode for read-only review) with explicit capability boundaries (read codebase, write components, access browser, deploy preview).

## Usage

```bash
claude plugin install agent-orchestration
```

Common workflows:

```
@context-manager Design a context management system for a multi-agent customer support platform
@context-manager Optimize RAG performance for enterprise document search with 10M+ documents
/improve-agent customer-support-agent --days 30
/multi-agent-optimize --target my-api --performance_goals "p95 < 500ms"
```

## Related Plugins

- **application-performance** -- Performance engineers and observability agents complement multi-agent optimization.
- **backend-development** -- Backend architects provide the service layer that multi-agent systems orchestrate across.
- **accessibility-compliance** -- Visual validation agents can be integrated as review agents in UI agent swarm patterns.
