# Developer Essentials Plugin

> Core skills every developer needs - code review, git workflows, auth, debugging, testing, and more.

**Developer Essentials** is unique: **Skills only, no agents or commands.**

This plugin provides foundational knowledge that Claude automatically references when relevant. It contains 8 comprehensive skills covering the patterns and practices that make professional developers effective.

---

## The 8 Essential Skills

| # | Skill | What It Covers |
|:-:|-------|----------------|
| 1 | **Code Review Excellence** | Constructive feedback, review checklists, mentoring |
| 2 | **Git Advanced Workflows** | Branching, rebasing, bisect, reflog, hooks |
| 3 | **Auth Implementation** | OAuth2, JWT, session management, MFA |
| 4 | **Error Handling Patterns** | Exception hierarchies, graceful degradation |
| 5 | **Debugging Strategies** | Systematic debugging, binary search, rubber duck |
| 6 | **SQL Optimization** | Query performance, indexing, EXPLAIN analysis |
| 7 | **Monorepo Management** | Nx, Turborepo, workspace patterns |
| 8 | **E2E Testing Patterns** | Playwright, Cypress, test isolation |

---

## How It Works

Unlike other plugins with agents and commands, Developer Essentials provides **background knowledge**. When you ask Claude about code reviews, authentication, or debugging, these skills provide context automatically.

```
User: Review this pull request

Claude: (Code Review Excellence skill activates)
- Checks for common issues
- Provides constructive feedback format
- Balances critique with praise
- Prioritizes feedback by severity
```

---

## Skill Summaries

### 1. Code Review Excellence

Transform reviews from gatekeeping to knowledge sharing.

**Key Patterns:**
- Review the code, not the person
- Provide specific, actionable feedback
- Balance criticism with recognition
- Prioritize: critical > important > nice-to-have
- Educate rather than dictate

**Anti-patterns to avoid:**
- Nitpicking formatting (use linters)
- Rewriting to personal preference
- Blocking without explanation
- Rushing through reviews

---

### 2. Git Advanced Workflows

Beyond add-commit-push: powerful git for complex scenarios.

**Key Commands:**
```bash
# Interactive rebase to clean history
git rebase -i HEAD~5

# Find the commit that introduced a bug
git bisect start && git bisect bad && git bisect good v1.0

# Recover "lost" commits
git reflog

# Stash specific files
git stash push -m "description" -- file1 file2

# Cherry-pick specific changes
git cherry-pick abc123
```

**Branching Strategies:**
- Git Flow: feature, develop, release, hotfix
- GitHub Flow: main + feature branches
- Trunk-based: main + short-lived branches

---

### 3. Auth Implementation Patterns

Secure authentication and authorization done right.

**Key Patterns:**
- OAuth 2.0 flows (authorization code, PKCE)
- JWT structure and validation
- Refresh token rotation
- Session management
- MFA implementation
- Password hashing (bcrypt, argon2)

**Security Checklist:**
- HTTPS everywhere
- Secure cookie attributes (HttpOnly, Secure, SameSite)
- Rate limiting on auth endpoints
- Account lockout policies
- Audit logging

---

### 4. Error Handling Patterns

Graceful failure and meaningful error messages.

**Key Patterns:**
```python
# Custom exception hierarchies
class AppError(Exception):
    """Base application error"""

class ValidationError(AppError):
    """Invalid input data"""

class NotFoundError(AppError):
    """Resource not found"""
```

**Best Practices:**
- Fail fast, fail clearly
- Include context in errors
- Log errors with correlation IDs
- Graceful degradation
- User-friendly error messages

---

### 5. Debugging Strategies

Systematic approaches to finding and fixing bugs.

**The Debugging Process:**
1. **Reproduce** - Make the bug consistent
2. **Isolate** - Narrow down the scope
3. **Identify** - Find the root cause
4. **Fix** - Change the minimum necessary
5. **Verify** - Confirm the fix works
6. **Prevent** - Add tests, improve monitoring

**Techniques:**
- Binary search (comment out half)
- Rubber duck debugging (explain to someone/something)
- Print/log debugging (strategic placement)
- Debugger stepping (breakpoints, watches)
- Time travel debugging (record and replay)

---

### 6. SQL Optimization Patterns

Fast queries through understanding, not guessing.

**Key Concepts:**
```sql
-- Always use EXPLAIN
EXPLAIN ANALYZE SELECT * FROM orders WHERE status = 'pending';

-- Index for your queries
CREATE INDEX idx_orders_status ON orders(status) WHERE status = 'pending';

-- Avoid SELECT *
SELECT id, status, total FROM orders WHERE status = 'pending';
```

**Common Issues:**
- Missing indexes on WHERE/JOIN columns
- N+1 queries (use JOIN or batch)
- Over-fetching (SELECT * when you need 3 columns)
- Inefficient JOINs (check join order)
- Full table scans (add appropriate indexes)

---

### 7. Monorepo Management

Scale codebases with shared code and coordinated builds.

**Tools:**
- **Nx** - Smart rebuilds, task caching
- **Turborepo** - Remote caching, pipeline definition
- **Lerna** - Package publishing, versioning
- **pnpm workspaces** - Efficient node_modules

**Best Practices:**
- Define clear package boundaries
- Use task caching (local + remote)
- Implement affected-only CI
- Version lock shared dependencies
- Document inter-package relationships

---

### 8. E2E Testing Patterns

Reliable end-to-end tests that don't flake.

**Key Patterns:**
```typescript
// Page Object Model
class LoginPage {
  async login(email: string, password: string) {
    await this.page.fill('[data-testid="email"]', email);
    await this.page.fill('[data-testid="password"]', password);
    await this.page.click('[data-testid="submit"]');
  }
}
```

**Best Practices:**
- Test isolation (each test independent)
- Stable selectors (data-testid over CSS)
- Wait for conditions, not arbitrary timeouts
- Visual regression testing
- Parallel execution

---

## Plugin Structure

```
developer-essentials/
└── skills/                                # Knowledge base (8 skills)
    ├── code-review-excellence/
    │   └── SKILL.md
    ├── git-advanced-workflows/
    │   └── SKILL.md
    ├── auth-implementation-patterns/
    │   └── SKILL.md
    ├── error-handling-patterns/
    │   └── SKILL.md
    ├── debugging-strategies/
    │   └── SKILL.md
    ├── sql-optimization-patterns/
    │   └── SKILL.md
    ├── monorepo-management/
    │   └── SKILL.md
    └── e2e-testing-patterns/
        └── SKILL.md
```

---

## Usage Examples

### Example 1: Code Review Help
```
User: Review this authentication code

Claude applies:
- auth-implementation-patterns (security checklist)
- code-review-excellence (feedback format)
- error-handling-patterns (error responses)
```

### Example 2: Debugging Session
```
User: This function works sometimes but fails randomly

Claude applies:
- debugging-strategies (systematic approach)
- error-handling-patterns (exception analysis)
- sql-optimization-patterns (if DB-related)
```

### Example 3: Performance Issue
```
User: This query is slow, help me optimize

Claude applies:
- sql-optimization-patterns (EXPLAIN, indexing)
- debugging-strategies (isolate the bottleneck)
```

---

## When to Use This Plugin

### Perfect For:
- Every developer (this is foundational knowledge)
- New developers learning best practices
- Teams establishing coding standards
- Interview preparation
- Code quality improvement

### Combines Well With:
- **git-pr-workflows** - Extended git automation
- **code-review-ai** - AI-powered review workflows
- **unit-testing** - Test writing patterns
- **security-compliance** - Security auditing

---

## Why Skills Only?

Developer Essentials is a **knowledge base**, not a workflow. These skills represent accumulated wisdom that should inform everything you do, rather than explicit commands to run.

When you mention "code review," Claude automatically knows:
- How to give constructive feedback
- What to look for in different file types
- How to prioritize issues
- How to balance criticism and praise

This happens seamlessly, without needing to invoke a specific agent.

---

## License

Part of the LibreUIUX project - MIT License

---

*"The best developers aren't those who write the most code, but those who make the codebase better for everyone."*
