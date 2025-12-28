# Python Development Plugin

> Modern Python development patterns, testing, packaging, and the blazing-fast uv package manager.

**Python Development** provides:
- **5 Skills** - Async patterns, testing, packaging, performance, uv
- **1 Agent** - Python development expert
- **1 Command** - Python project scaffolding

**Result**: Production-ready Python code with modern tooling.

---

## Quick Start

### Invoke the Agent
```
@python-pro scaffold a FastAPI project with uv
@python-pro review this async code for best practices
@python-pro optimize this data processing function
```

### Access Skills
```
# Skills are auto-loaded when relevant
"Set up uv for this project" -> uv-package-manager skill activates
"Write pytest tests" -> python-testing-patterns skill activates
```

---

## The 5 Skills

### 1. UV Package Manager
> 10-100x faster than pip, modern Python project management

- Project setup with `uv init`
- Dependency management with lockfiles
- Virtual environment creation
- Python version management
- CI/CD optimization

**Example:**
```bash
# Create project
uv init myproject
cd myproject

# Add dependencies
uv add fastapi uvicorn sqlalchemy

# Sync environment
uv sync
```

---

### 2. Python Testing Patterns
> Comprehensive testing with pytest and modern fixtures

- Test organization and discovery
- Fixture composition patterns
- Mocking and patching strategies
- Async test patterns
- Property-based testing with Hypothesis

**Example:**
```python
@pytest.fixture
def db_session():
    """Provide clean database session per test."""
    engine = create_engine("sqlite:///:memory:")
    with Session(engine) as session:
        yield session
        session.rollback()
```

---

### 3. Async Python Patterns
> Concurrency with asyncio, avoiding common pitfalls

- Async context managers
- Task groups and structured concurrency
- Semaphores for rate limiting
- Async generators
- Error handling in async code

**Example:**
```python
async def fetch_all(urls: list[str]) -> list[Response]:
    async with aiohttp.ClientSession() as session:
        async with asyncio.TaskGroup() as tg:
            tasks = [tg.create_task(fetch(session, url)) for url in urls]
        return [t.result() for t in tasks]
```

---

### 4. Python Packaging
> Modern packaging with pyproject.toml and setuptools

- pyproject.toml configuration
- Entry points and scripts
- Package distribution (wheel, sdist)
- Version management
- Dependency specification

**Example:**
```toml
[project]
name = "mypackage"
version = "1.0.0"
dependencies = ["requests>=2.28"]

[project.scripts]
mycommand = "mypackage.cli:main"
```

---

### 5. Python Performance Optimization
> Making Python fast where it matters

- Profiling with cProfile, py-spy
- Memory optimization
- NumPy/Pandas vectorization
- JIT compilation with Numba
- Multiprocessing patterns

**Example:**
```python
# Before: 100x slower
result = [x**2 for x in large_list]

# After: Vectorized
result = np.array(large_list) ** 2
```

---

## Plugin Structure

```
python-development/
├── README.md                              # This file
│
├── skills/                                # Knowledge base
│   ├── uv-package-manager/
│   │   └── SKILL.md                       # uv patterns
│   ├── python-testing-patterns/
│   │   └── SKILL.md                       # pytest patterns
│   ├── async-python-patterns/
│   │   └── SKILL.md                       # asyncio patterns
│   ├── python-packaging/
│   │   └── SKILL.md                       # packaging patterns
│   └── python-performance-optimization/
│       └── SKILL.md                       # performance patterns
│
├── commands/                              # Slash commands
│   └── python-scaffold.md                 # Project scaffolding
│
└── agents/                                # Specialist agents
    └── python-pro.md                      # Python expert agent
```

---

## Usage Examples

### Example 1: New Project Setup
```
User: Set up a new FastAPI project with uv, pytest, and async support

@python-pro responds:
- Creates project with uv init
- Adds dependencies (fastapi, uvicorn, pytest, pytest-asyncio)
- Sets up project structure
- Creates sample async endpoint
- Creates sample async test
```

### Example 2: Code Review
```
User: Review this Python code for async best practices

@python-pro analyzes:
- Identifies blocking calls in async context
- Suggests asyncio.to_thread for CPU-bound work
- Recommends structured concurrency with TaskGroup
- Points out error handling improvements
```

### Example 3: Performance Issue
```
User: This data processing is too slow, help me optimize

@python-pro:
1. Profiles the code to find bottlenecks
2. Suggests vectorization with NumPy
3. Recommends caching with functools.lru_cache
4. Proposes multiprocessing for CPU-bound work
```

---

## When to Use This Plugin

### Perfect For:
- Python application development
- FastAPI/Flask/Django projects
- Data processing pipelines
- Async/concurrent programming
- Testing and quality assurance
- Package development and distribution

### Combines Well With:
- **backend-development** - API design patterns
- **developer-essentials** - Code review, debugging
- **llm-application-dev** - AI/ML Python applications
- **data-engineering** - Data pipeline patterns

---

## Key Technologies

| Category | Tools/Libraries |
|----------|-----------------|
| Package Management | uv, pip, poetry |
| Testing | pytest, hypothesis, coverage |
| Async | asyncio, aiohttp, anyio |
| Performance | NumPy, Pandas, Numba |
| Packaging | setuptools, wheel, twine |
| Type Checking | mypy, pyright |
| Linting | ruff, flake8, black |

---

## License

Part of the LibreUIUX project - MIT License

---

*"Simple is better than complex. Complex is better than complicated."*
