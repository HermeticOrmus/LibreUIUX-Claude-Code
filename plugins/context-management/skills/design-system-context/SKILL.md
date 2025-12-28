---
name: design-system-context
description: Managing design tokens and system context for LLM-driven UI development. Covers loading, persisting, and optimizing design decisions within context windows.
---

# Design System Context Management

Master the art of managing design system context for LLM-driven UI development. This skill covers strategies for loading design tokens, persisting decisions, and optimizing context window usage.

---

## When to Use This Skill

- Loading design tokens into LLM context efficiently
- Persisting design decisions across sessions
- Optimizing context window for large design systems
- Managing multiple design system variants
- Building context-aware UI generation pipelines
- Maintaining consistency across agent conversations

---

## The Context Challenge

Design systems contain vast amounts of information:
- **Design tokens**: Colors, spacing, typography, shadows, etc.
- **Component specs**: 50-200+ components with variants
- **Usage guidelines**: Do's, don'ts, examples
- **Brand guidelines**: Voice, imagery, personality

**The Problem**: Context windows are finite. Loading everything wastes tokens and degrades performance.

**The Solution**: Strategic context management - load what's needed, when it's needed.

---

## Context Architecture

### Layered Context Model

Organize design system context in layers of specificity:

```
Layer 4: Task-Specific Context (highest priority)
         ↑
Layer 3: Component Context
         ↑
Layer 2: Design Token Context
         ↑
Layer 1: Brand/System Context (foundation)
```

**Implementation**:

```python
class DesignSystemContext:
    """
    Layered context management for design systems.
    """

    def __init__(self, system_name: str):
        self.layers = {
            "brand": self.load_brand_context(),      # ~500 tokens
            "tokens": self.load_design_tokens(),     # ~2000 tokens
            "components": {},                         # On-demand
            "task": {},                               # Per-request
        }

    def load_brand_context(self) -> dict:
        """
        Layer 1: Foundational brand context.
        Always loaded, rarely changes.
        """
        return {
            "brand_name": "Acme Corp",
            "brand_voice": "Professional, approachable, confident",
            "core_values": ["Simplicity", "Trust", "Innovation"],
            "color_philosophy": "Blue conveys trust, accent sparingly",
            "typography_philosophy": "Clean sans-serif, generous line-height",
        }

    def load_design_tokens(self) -> dict:
        """
        Layer 2: Design tokens.
        Loaded per session, reference frequently.
        """
        return {
            "colors": {
                "primary": {"50": "#EEF2FF", "500": "#6366F1", "900": "#312E81"},
                "gray": {"50": "#F9FAFB", "500": "#6B7280", "900": "#111827"},
                "success": "#10B981",
                "warning": "#F59E0B",
                "error": "#EF4444",
            },
            "spacing": {
                "0": "0", "1": "0.25rem", "2": "0.5rem",
                "4": "1rem", "6": "1.5rem", "8": "2rem",
            },
            "typography": {
                "font_family": "Inter, system-ui, sans-serif",
                "sizes": {"xs": "0.75rem", "sm": "0.875rem", "base": "1rem"},
                "weights": {"normal": 400, "medium": 500, "bold": 700},
            },
            "radius": {"sm": "0.25rem", "md": "0.375rem", "lg": "0.5rem"},
            "shadows": {
                "sm": "0 1px 2px rgba(0,0,0,0.05)",
                "md": "0 4px 6px rgba(0,0,0,0.1)",
            },
        }

    def load_component_context(self, component_name: str) -> dict:
        """
        Layer 3: Component-specific context.
        Loaded on-demand when working on specific components.
        """
        component_docs = self.fetch_component_docs(component_name)
        return {
            "specification": component_docs.spec,
            "variants": component_docs.variants,
            "props": component_docs.props,
            "examples": component_docs.examples[:3],  # Limit examples
            "related_components": component_docs.related[:5],
        }

    def set_task_context(self, task: dict) -> None:
        """
        Layer 4: Task-specific context.
        Fresh per request, highest priority.
        """
        self.layers["task"] = {
            "objective": task.get("objective"),
            "constraints": task.get("constraints", []),
            "preferences": task.get("preferences", {}),
            "previous_decisions": task.get("decisions", []),
        }
```

---

## Token-Efficient Context Strategies

### Strategy 1: Compressed Token Format

Reduce verbosity while maintaining meaning:

```python
# Verbose format (~200 tokens)
verbose_tokens = """
The primary color palette consists of:
- Primary 50 (lightest): #EEF2FF, used for backgrounds
- Primary 100: #E0E7FF
- Primary 200: #C7D2FE
- Primary 500 (base): #6366F1, used for primary actions
- Primary 600: #4F46E5
- Primary 900 (darkest): #312E81, used for text on light
"""

# Compressed format (~50 tokens)
compressed_tokens = """
colors.primary: {50:#EEF2FF(bg), 500:#6366F1(action), 900:#312E81(text)}
"""

# Ultra-compressed format (~20 tokens)
ultra_compressed = "pri:#6366F1 bg:#EEF2FF txt:#312E81"
```

**Compression Techniques**:

```python
class TokenCompressor:
    """
    Compress design tokens for efficient context usage.
    """

    def compress_colors(self, colors: dict) -> str:
        """
        Compress color palette to essential values.
        Only include: 50 (light), 500 (base), 900 (dark)
        """
        essential = {}
        for name, shades in colors.items():
            essential[name] = {
                k: v for k, v in shades.items()
                if k in ["50", "500", "900"]
            }
        return json.dumps(essential, separators=(",", ":"))

    def compress_spacing(self, spacing: dict) -> str:
        """
        Compress spacing to pattern description.
        """
        # Instead of listing all values
        return "spacing: 4px base unit, scale: 1,2,4,6,8,12,16,24,32"

    def compress_typography(self, typography: dict) -> str:
        """
        Compress typography to essentials.
        """
        return f"font:{typography['font_family'].split(',')[0]} sizes:xs/sm/base/lg/xl"
```

---

### Strategy 2: Semantic Chunking

Split context into semantic chunks for retrieval:

```python
class SemanticContextChunks:
    """
    Organize design system into retrievable semantic chunks.
    """

    def __init__(self, design_system: dict):
        self.chunks = self.create_chunks(design_system)
        self.embeddings = self.embed_chunks()

    def create_chunks(self, system: dict) -> list[dict]:
        """
        Create semantic chunks from design system.
        """
        chunks = []

        # Color chunks
        chunks.append({
            "type": "colors",
            "category": "primary",
            "description": "Primary brand colors for actions and emphasis",
            "content": system["tokens"]["colors"]["primary"],
        })

        chunks.append({
            "type": "colors",
            "category": "semantic",
            "description": "Semantic colors for feedback states",
            "content": {
                "success": system["tokens"]["colors"]["success"],
                "warning": system["tokens"]["colors"]["warning"],
                "error": system["tokens"]["colors"]["error"],
            },
        })

        # Component chunks
        for component in system["components"]:
            chunks.append({
                "type": "component",
                "category": component["category"],
                "description": component["description"],
                "content": component["spec"],
            })

        return chunks

    def retrieve_relevant(self, query: str, top_k: int = 5) -> list[dict]:
        """
        Retrieve chunks relevant to the current task.
        """
        query_embedding = self.embed(query)
        scores = [
            (chunk, cosine_similarity(query_embedding, emb))
            for chunk, emb in zip(self.chunks, self.embeddings)
        ]
        return sorted(scores, key=lambda x: x[1], reverse=True)[:top_k]
```

---

### Strategy 3: Progressive Disclosure

Load context progressively as needed:

```python
class ProgressiveContextLoader:
    """
    Load context progressively based on task needs.
    """

    def __init__(self, design_system: DesignSystem):
        self.system = design_system
        self.loaded_context = {}
        self.context_budget = 8000  # tokens

    def initial_context(self) -> dict:
        """
        Minimal context for task understanding.
        ~500 tokens
        """
        return {
            "system_summary": self.system.summary,
            "available_components": list(self.system.component_names),
            "color_palette_summary": self.system.color_summary,
        }

    def expand_for_component(self, component_name: str) -> dict:
        """
        Expand context when working on specific component.
        +1000-2000 tokens
        """
        if component_name in self.loaded_context:
            return self.loaded_context[component_name]

        context = {
            "component_spec": self.system.get_component(component_name),
            "related_tokens": self.system.get_tokens_for(component_name),
            "examples": self.system.get_examples(component_name, limit=2),
        }

        self.loaded_context[component_name] = context
        return context

    def expand_for_layout(self) -> dict:
        """
        Expand context for layout work.
        +500 tokens
        """
        return {
            "spacing_scale": self.system.spacing,
            "breakpoints": self.system.breakpoints,
            "grid_system": self.system.grid,
            "container_widths": self.system.containers,
        }

    def get_current_context(self) -> str:
        """
        Get current accumulated context within budget.
        """
        context_str = json.dumps(self.loaded_context)
        token_count = self.count_tokens(context_str)

        if token_count > self.context_budget:
            return self.prune_context(context_str)

        return context_str
```

---

## Persisting Design Decisions

### Decision Memory Pattern

Store and recall design decisions for consistency:

```python
class DesignDecisionMemory:
    """
    Persistent memory for design decisions.
    """

    def __init__(self, project_id: str, storage: Storage):
        self.project_id = project_id
        self.storage = storage
        self.decisions = self.load_decisions()

    def record_decision(self, decision: DesignDecision) -> None:
        """
        Record a design decision for future reference.
        """
        entry = {
            "id": str(uuid4()),
            "timestamp": datetime.now().isoformat(),
            "category": decision.category,  # color, spacing, component, etc.
            "component": decision.component,
            "decision": decision.description,
            "rationale": decision.rationale,
            "tokens_affected": decision.tokens,
            "embedding": self.embed(decision.description),
        }

        self.decisions.append(entry)
        self.storage.save(self.decisions)

    def recall_for_context(self, current_task: str) -> list[dict]:
        """
        Recall relevant past decisions for current task.
        """
        task_embedding = self.embed(current_task)

        relevant = []
        for decision in self.decisions:
            similarity = cosine_similarity(task_embedding, decision["embedding"])
            if similarity > 0.7:
                relevant.append({
                    "decision": decision["decision"],
                    "rationale": decision["rationale"],
                    "relevance": similarity,
                })

        return sorted(relevant, key=lambda x: x["relevance"], reverse=True)[:5]

    def format_for_prompt(self, decisions: list[dict]) -> str:
        """
        Format decisions for prompt injection.
        """
        if not decisions:
            return ""

        lines = ["## Previous Design Decisions (maintain consistency):"]
        for d in decisions:
            lines.append(f"- {d['decision']}")
            if d.get("rationale"):
                lines.append(f"  Rationale: {d['rationale']}")

        return "\n".join(lines)


# Usage in prompt construction
memory = DesignDecisionMemory("project-123", storage)
relevant_decisions = memory.recall_for_context("Create a modal dialog")

prompt = f"""
{base_prompt}

{memory.format_for_prompt(relevant_decisions)}
"""
```

---

### Version-Controlled Context

Treat design context as versioned artifacts:

```python
class VersionedDesignContext:
    """
    Version-controlled design system context.
    """

    def __init__(self, repo_path: str):
        self.repo_path = repo_path
        self.current_version = self.get_current_version()

    def get_context_at_version(self, version: str) -> dict:
        """
        Load design context at specific version.
        Useful for reproducing past generations.
        """
        tokens_path = f"{self.repo_path}/tokens/{version}/tokens.json"
        components_path = f"{self.repo_path}/components/{version}/"

        return {
            "version": version,
            "tokens": self.load_json(tokens_path),
            "components": self.load_components(components_path),
        }

    def diff_versions(self, v1: str, v2: str) -> dict:
        """
        Show differences between context versions.
        Useful for understanding changes.
        """
        ctx1 = self.get_context_at_version(v1)
        ctx2 = self.get_context_at_version(v2)

        return {
            "tokens_added": self.diff_tokens(ctx1["tokens"], ctx2["tokens"]),
            "tokens_changed": self.changed_tokens(ctx1["tokens"], ctx2["tokens"]),
            "components_added": self.diff_components(ctx1, ctx2),
        }

    def get_migration_context(self, from_v: str, to_v: str) -> str:
        """
        Generate context for migrating components between versions.
        """
        diff = self.diff_versions(from_v, to_v)

        return f"""
        ## Design System Migration: {from_v} -> {to_v}

        ### Token Changes
        {self.format_token_changes(diff['tokens_changed'])}

        ### New Tokens
        {self.format_new_tokens(diff['tokens_added'])}

        ### Update Instructions
        When updating components, apply these token mappings...
        """
```

---

## Context Window Optimization

### Token Budget Allocation

Allocate context window strategically:

```python
class ContextBudgetManager:
    """
    Manage context window token budget.
    """

    def __init__(self, total_budget: int = 100000):  # Claude's context
        self.total = total_budget
        self.allocations = {
            "system_prompt": 2000,    # Fixed instructions
            "design_tokens": 3000,    # Core tokens
            "component_context": 4000, # Current component
            "examples": 2000,         # Few-shot examples
            "memory": 1000,           # Past decisions
            "task": 500,              # Current request
            "output_buffer": 10000,   # Reserved for response
        }

    def remaining_budget(self) -> int:
        """
        Calculate remaining tokens for dynamic content.
        """
        allocated = sum(self.allocations.values())
        return self.total - allocated

    def can_load(self, content: str, category: str) -> bool:
        """
        Check if content fits in category budget.
        """
        token_count = self.count_tokens(content)
        return token_count <= self.allocations.get(category, 0)

    def optimize_context(self, context: dict) -> dict:
        """
        Optimize context to fit within budget.
        """
        optimized = {}

        for key, content in context.items():
            budget = self.allocations.get(key, 1000)
            content_tokens = self.count_tokens(str(content))

            if content_tokens <= budget:
                optimized[key] = content
            else:
                optimized[key] = self.truncate_intelligently(content, budget)

        return optimized

    def truncate_intelligently(self, content: any, budget: int) -> any:
        """
        Truncate content preserving most important information.
        """
        if isinstance(content, list):
            # For lists, keep first N items
            result = []
            tokens = 0
            for item in content:
                item_tokens = self.count_tokens(str(item))
                if tokens + item_tokens <= budget:
                    result.append(item)
                    tokens += item_tokens
            return result

        if isinstance(content, dict):
            # For dicts, prioritize by key importance
            priority_keys = ["essential", "primary", "core", "main"]
            result = {}
            tokens = 0

            # First pass: priority keys
            for key in priority_keys:
                if key in content:
                    result[key] = content[key]
                    tokens += self.count_tokens(str(content[key]))

            # Second pass: remaining keys if budget allows
            for key, value in content.items():
                if key not in result:
                    value_tokens = self.count_tokens(str(value))
                    if tokens + value_tokens <= budget:
                        result[key] = value
                        tokens += value_tokens

            return result

        # For strings, truncate with ellipsis
        return self.truncate_string(content, budget)
```

---

## Context Injection Patterns

### Pattern: Structured Context Block

Inject context as a structured, parseable block:

```markdown
<!-- DESIGN_CONTEXT_START -->
## Active Design System: Acme Design v2.3

### Tokens
```json
{
  "colors": {"primary": "#6366F1", "gray": "#6B7280"},
  "spacing": {"base": "4px", "scale": [1,2,4,6,8,12,16]},
  "radius": {"default": "8px"}
}
```

### Component: Button
- Variants: primary, secondary, ghost, danger
- Sizes: sm (32px), md (40px), lg (48px)
- States: default, hover, focus, active, disabled, loading

### Constraints
- Tailwind CSS only
- Accessibility: WCAG 2.1 AA
- Must support dark mode
<!-- DESIGN_CONTEXT_END -->
```

### Pattern: Inline Context References

Reference context inline rather than loading fully:

```markdown
Generate a Card component.

Use these token references (from loaded design system):
- Background: `tokens.colors.surface.primary`
- Border: `tokens.colors.border.subtle`
- Padding: `tokens.spacing.lg` (maps to p-6)
- Radius: `tokens.radius.lg` (maps to rounded-xl)
- Shadow: `tokens.shadows.md` (maps to shadow-md)

The component should resolve these references to actual Tailwind classes.
```

---

## Quick Reference

| Challenge | Strategy |
|-----------|----------|
| Too many tokens | Compressed Token Format |
| Finding relevant context | Semantic Chunking + Retrieval |
| Large design systems | Progressive Disclosure |
| Maintaining consistency | Decision Memory Pattern |
| Reproducing results | Version-Controlled Context |
| Budget constraints | Token Budget Allocation |

---

## Integration Points

This skill integrates with:
- `agent-orchestration/ui-agent-patterns` - Context for agent workflows
- `llm-application-dev/prompt-engineering-ui` - Token injection in prompts
- `llm-application-dev/rag-implementation` - Retrieval of context chunks
- `mcp-integrations/browser-devtools-mcp` - Live context from running UI

---

*"Context is not just what the model sees - it is what the model becomes."*
