# LLM Application Development Plugin

> Build production-grade AI applications with RAG, prompt engineering, and LLM orchestration.

**LLM Application Dev** provides:
- **4 Skills** - RAG, prompt engineering, LangChain, LLM evaluation
- **1 Agent** - LLM application architect
- **1 Command** - RAG project scaffolding

**Result**: AI-powered applications that are accurate, reliable, and maintainable.

---

## Quick Start

### Invoke the Agent
```
@llm-architect design a RAG system for internal documentation
@llm-architect review my prompt for edge cases
@llm-architect suggest evaluation metrics for this chatbot
```

### Use Commands
```
/rag-scaffold document-qa --vector-db pinecone
```

---

## The 4 Skills

### 1. RAG Implementation
> Build knowledge-grounded AI that cites sources

Retrieval-Augmented Generation connects LLMs to external knowledge bases, reducing hallucinations and enabling domain-specific answers.

**Key Components:**
| Component | Purpose | Options |
|-----------|---------|---------|
| Vector DB | Store embeddings | Pinecone, Weaviate, Chroma, Qdrant |
| Embeddings | Text to vectors | OpenAI, Sentence Transformers, Cohere |
| Retriever | Find relevant docs | Dense, sparse, hybrid search |
| Generator | Produce answers | GPT-4, Claude, local LLMs |

**Architecture:**
```
Query -> Embedding -> Vector Search -> Relevant Chunks -> LLM with Context -> Answer
```

**Best Practices:**
- Chunk documents at semantic boundaries (not arbitrary splits)
- Overlap chunks to preserve context (10-20%)
- Use hybrid search (dense + sparse) for robustness
- Include source citations in responses
- Implement answer verification

---

### 2. Prompt Engineering Patterns
> Craft prompts that get consistent, high-quality results

**Core Patterns:**

| Pattern | When to Use |
|---------|-------------|
| **Few-shot** | Show examples of desired output |
| **Chain-of-thought** | Complex reasoning tasks |
| **System prompts** | Set consistent persona/rules |
| **Output formatting** | Structured responses (JSON, etc.) |
| **Self-consistency** | Sample multiple, take majority |

**Example - Structured Output:**
```
You are a product classifier. Given a product description, output JSON:
{
  "category": "string",
  "subcategory": "string",
  "confidence": 0-100
}

Product: "Wireless Bluetooth earbuds with noise cancellation"
```

**Anti-patterns:**
- Vague instructions ("do a good job")
- No examples for complex tasks
- Ignoring edge cases
- No output format specification

---

### 3. LangChain Architecture
> Orchestrate LLM chains, agents, and tools

**Key Concepts:**

| Concept | Purpose |
|---------|---------|
| **Chains** | Sequence of operations |
| **Agents** | LLM decides which tools to use |
| **Tools** | Functions the agent can call |
| **Memory** | Conversation history management |
| **Retrievers** | Document retrieval for RAG |

**Common Patterns:**
```python
# Simple chain
chain = prompt | llm | output_parser

# RAG chain
chain = (
    {"context": retriever, "question": RunnablePassthrough()}
    | prompt
    | llm
    | StrOutputParser()
)

# Agent with tools
agent = create_react_agent(llm, tools, prompt)
```

**When to Use What:**
- **Chains**: Predictable, fixed workflows
- **Agents**: Dynamic, decision-based workflows
- **RAG**: Knowledge-intensive applications

---

### 4. LLM Evaluation
> Measure and improve LLM application quality

**Evaluation Dimensions:**

| Metric | What It Measures |
|--------|------------------|
| **Relevance** | Does the answer address the query? |
| **Faithfulness** | Is the answer grounded in retrieved context? |
| **Harmlessness** | Are responses safe and appropriate? |
| **Helpfulness** | Does it actually help the user? |
| **Latency** | Response time |
| **Cost** | Token usage and API costs |

**Evaluation Approaches:**
1. **LLM-as-Judge**: Use GPT-4 to score outputs
2. **Human Evaluation**: Gold standard but slow
3. **Reference-based**: Compare to ground truth (BLEU, ROUGE)
4. **Retrieval Metrics**: Precision@k, Recall@k, MRR

**Tools:**
- RAGAS - RAG evaluation framework
- DeepEval - Unit tests for LLMs
- Promptfoo - Prompt testing
- LangSmith - Tracing and evaluation

---

## Plugin Structure

```
llm-application-dev/
├── README.md                              # This file
│
├── skills/                                # Knowledge base
│   ├── rag-implementation/
│   │   └── SKILL.md                       # RAG patterns
│   ├── prompt-engineering-patterns/
│   │   └── SKILL.md                       # Prompt patterns
│   ├── langchain-architecture/
│   │   └── SKILL.md                       # LangChain patterns
│   └── llm-evaluation/
│       └── SKILL.md                       # Evaluation patterns
│
├── commands/                              # Slash commands
│   └── rag-scaffold.md                    # RAG project setup
│
└── agents/                                # Specialist agents
    └── llm-architect.md                   # LLM application expert
```

---

## Usage Examples

### Example 1: Document Q&A System
```
User: Design a RAG system for our internal wiki

@llm-architect:
1. Ingestion Pipeline
   - Crawl wiki pages
   - Chunk by headings/sections
   - Embed with text-embedding-3-large
   - Store in Pinecone with metadata

2. Query Pipeline
   - Embed query
   - Hybrid search (dense + BM25)
   - Rerank top 10 to top 3
   - Generate answer with sources

3. Evaluation
   - Track faithfulness (hallucination rate)
   - Measure relevance scores
   - Monitor latency p50/p95
```

### Example 2: Prompt Optimization
```
User: My classification prompt is inconsistent

@llm-architect:
1. Add few-shot examples (3-5)
2. Specify output format explicitly
3. Add edge case handling
4. Use temperature=0 for consistency
5. Implement self-consistency (3 samples)

Before: 60% accuracy
After: 92% accuracy
```

### Example 3: Evaluation Setup
```
User: How do I evaluate my chatbot quality?

@llm-architect:
1. Define metrics
   - Relevance: LLM-as-judge scoring
   - Faithfulness: Check against sources
   - Helpfulness: User satisfaction ratings

2. Create test dataset
   - 100+ representative queries
   - Include edge cases
   - Cover all categories

3. Implement evaluation pipeline
   - Automated nightly runs
   - Dashboard with trends
   - Alerts on degradation
```

---

## When to Use This Plugin

### Perfect For:
- Building chatbots and Q&A systems
- Creating document search/analysis tools
- Developing AI-powered assistants
- Implementing content generation
- Building agent systems with tools

### Not Ideal For:
- Traditional ML (classification, regression)
- Computer vision applications
- Audio/speech processing

### Combines Well With:
- **python-development** - Python patterns for LLM apps
- **backend-development** - API design for AI services
- **machine-learning-ops** - MLOps for LLM deployment
- **observability-monitoring** - LLM observability

---

## Technology Stack

| Category | Technologies |
|----------|--------------|
| Orchestration | LangChain, LlamaIndex, Haystack |
| Vector DBs | Pinecone, Weaviate, Chroma, Qdrant |
| LLM Providers | OpenAI, Anthropic, Cohere, local (Ollama) |
| Evaluation | RAGAS, DeepEval, Promptfoo |
| Observability | LangSmith, Langfuse, Phoenix |

---

## Key Concepts Quick Reference

### RAG Pipeline
```
1. Ingest: Documents -> Chunks -> Embeddings -> Vector DB
2. Query: Question -> Embedding -> Search -> Context -> LLM -> Answer
```

### Prompt Structure
```
System: [Persona and rules]
Context: [Retrieved documents]
Examples: [Few-shot demonstrations]
Query: [User question]
Format: [Output specification]
```

### Evaluation Loop
```
1. Define metrics
2. Create test dataset
3. Run evaluations
4. Analyze results
5. Improve prompts/retrieval
6. Repeat
```

---

## License

Part of the LibreUIUX project - MIT License

---

*"The goal isn't to replace human intelligence, but to augment it with knowledge retrieval and reasoning at scale."*
