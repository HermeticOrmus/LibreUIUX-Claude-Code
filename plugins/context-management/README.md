# Context Management

> Agent, commands, and skill for intelligent context preservation, restoration, and design system management across AI workflows.

## Overview

The Context Management plugin addresses one of the core challenges of working with AI assistants: maintaining continuity across sessions and complex multi-agent workflows. It provides tools for saving and restoring project context with semantic awareness, managing token budgets intelligently, and handling design system context for UI development. Use this plugin when working on long-running projects, coordinating multi-agent workflows, or needing to preserve architectural decisions and project knowledge between sessions.

## Contents

### Agents

- **context-manager** -- Elite AI context engineering specialist that orchestrates dynamic context management across multi-agent workflows and enterprise AI systems. Capabilities include dynamic context assembly, intelligent information retrieval, context window optimization, token budget management, context pruning and relevance filtering, context versioning, and real-time adaptation based on task requirements. Integrates with vector databases and knowledge graphs.

### Commands

- **context-save** -- Comprehensive context preservation tool that captures project state and knowledge with configurable granularity (minimal, standard, comprehensive). Supports multiple storage formats (JSON, Markdown, vector). Extracts architectural patterns, decision rationale, cross-cutting concerns, and dependency mappings. Enables semantic tagging for categorized retrieval.

- **context-restore** -- Advanced semantic memory rehydration tool that recovers and reconstructs project context. Supports three restoration modes: full (complete context), incremental (partial update), and diff (compare and merge versions). Configurable token budget and relevance threshold control what gets restored. Uses semantic vector search for intelligent retrieval.

### Skills

- **design-system-context** -- Skill for managing design tokens and system context in LLM-driven UI development. Covers loading design tokens (colors, spacing, typography, shadows) into context windows efficiently, persisting design decisions across sessions, managing component specs and usage guidelines, handling multiple design system variants, and building context-aware UI generation pipelines.

## Usage

```
# Install to your project
cp -r plugins/context-management .claude/plugins/

# Save current project context
# /context-save --type comprehensive --format markdown

# Restore context in a new session
# /context-restore --project my-app --mode full --token-budget 8192

# The context-manager agent activates for multi-agent coordination tasks
```

## Related Plugins

- **code-refactoring** -- Includes a context-restore command for refactoring session continuity.
- **code-documentation** -- Documentation generation benefits from preserved project context.
- **comprehensive-review** -- Multi-agent reviews rely on shared context across review phases.
