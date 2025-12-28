# LibreUIUX Plugins Catalog

> Comprehensive catalog of 70 plugins for Claude Code development workflows.

**Last Updated**: 2025-12-27

---

## Overview

| Metric | Count |
|--------|-------|
| **Total Plugins** | 70 |
| **With Skills** | 24 |
| **With Agents** | 68 |
| **With Commands** | 37 |
| **With READMEs** | 2 (+5 key ones added) |

---

## Table of Contents

1. [Categories](#categories)
2. [Essential Bundles](#essential-bundles)
3. [Redundancy Analysis](#redundancy-analysis)
4. [Full Plugin Matrix](#full-plugin-matrix)
5. [Plugins by Feature Type](#plugins-by-feature-type)

---

## Categories

### Languages & Frameworks (8 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **javascript-typescript** | 4 | 1 | 1 | JS/TS patterns, Node.js, advanced types |
| **python-development** | 5 | 1 | 1 | Python async, testing, packaging, uv |
| **shell-scripting** | 3 | 1 | - | Bash patterns, ShellCheck, BATS testing |
| **jvm-languages** | - | 1 | - | Java, Kotlin, Scala development |
| **julia-development** | - | 1 | - | Julia scientific computing |
| **functional-programming** | - | 1 | - | FP paradigms across languages |
| **systems-programming** | - | 1 | 1 | Rust, C/C++, low-level development |
| **arm-cortex-microcontrollers** | - | 1 | - | Embedded ARM development |

### Backend Development (6 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **backend-development** | 5 | 1 | 1 | API design, microservices, Temporal |
| **api-scaffolding** | 1 | 1 | - | FastAPI templates, API scaffolding |
| **database-design** | 1 | 1 | - | PostgreSQL, schema design |
| **database-migrations** | - | 1 | 1 | Database migration workflows |
| **database-cloud-optimization** | - | 1 | 1 | Cloud database optimization |
| **data-engineering** | - | 1 | 1 | Data pipelines, ETL workflows |

### Frontend & Mobile (3 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **frontend-mobile-development** | - | 1 | 1 | React, Next.js, mobile dev |
| **multi-platform-apps** | - | 1 | 1 | Cross-platform app development |
| **web-scripting** | - | 1 | - | Browser automation, web scripts |

### DevOps & Infrastructure (7 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **cloud-infrastructure** | 4 | 1 | - | Terraform, multi-cloud, networking |
| **kubernetes-operations** | 4 | 1 | - | K8s manifests, Helm, GitOps |
| **cicd-automation** | 4 | 1 | 1 | GitHub Actions, GitLab CI, pipelines |
| **deployment-strategies** | - | 1 | - | Deployment patterns, strategies |
| **deployment-validation** | - | 1 | 1 | Pre/post deployment validation |
| **incident-response** | - | 1 | 1 | Incident management, runbooks |
| **observability-monitoring** | 4 | 1 | 1 | Prometheus, Grafana, tracing |

### Testing & Quality (5 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **unit-testing** | - | 1 | 1 | Unit test generation, frameworks |
| **tdd-workflows** | - | 1 | 1 | TDD red-green-refactor cycle |
| **performance-testing-review** | - | 1 | 1 | Performance testing, benchmarks |
| **api-testing-observability** | - | 1 | 1 | API testing, mocking |
| **data-validation-suite** | - | 1 | - | Data validation patterns |

### Security (5 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **security-compliance** | - | 1 | 1 | GDPR, HIPAA, SOC2, PCI-DSS |
| **security-scanning** | 1 | 1 | 1 | SAST configuration, Semgrep |
| **backend-api-security** | - | 1 | - | API security, secure coding |
| **frontend-mobile-security** | - | 1 | 1 | XSS, frontend security |
| **payment-processing** | 4 | 1 | - | Stripe, PayPal, PCI compliance |

### Debugging & Diagnostics (4 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **debugging-toolkit** | - | 1 | 1 | Debugging workflows, tools |
| **error-debugging** | - | 1 | 1 | Error tracking, monitoring |
| **error-diagnostics** | - | 1 | 1 | Error analysis, diagnosis |
| **distributed-debugging** | - | 1 | 1 | Distributed tracing, debug setup |

### Code Quality & Maintenance (7 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **developer-essentials** | 8 | - | - | Core skills: review, git, auth, debugging |
| **code-refactoring** | - | 1 | 1 | Refactoring patterns |
| **code-review-ai** | - | 1 | 1 | AI-powered code review |
| **comprehensive-review** | - | 1 | 1 | Multi-perspective review |
| **codebase-cleanup** | - | 1 | 1 | Dead code removal, cleanup |
| **dependency-management** | - | 1 | 1 | Dependency updates, audits |
| **framework-migration** | 4 | 1 | 1 | React, Angular, database migrations |

### Documentation (3 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **code-documentation** | - | 1 | 1 | Inline documentation generation |
| **documentation-generation** | - | 1 | 1 | README, API docs generation |
| **context-management** | - | 1 | 1 | Context window optimization |

### Git & Collaboration (3 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **git-pr-workflows** | - | 1 | 1 | Git workflow, PR automation |
| **team-collaboration** | - | 1 | 1 | Team workflows, conventions |
| **agent-orchestration** | - | 1 | 1 | Multi-agent coordination |

### AI & ML (3 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **llm-application-dev** | 4 | 1 | 1 | RAG, prompt engineering, LangChain |
| **machine-learning-ops** | 1 | 1 | 1 | MLOps, model deployment |
| **vibe-coding** | - | 1 | 1 | AI-assisted rapid prototyping |

### SEO & Marketing (4 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **seo-analysis-monitoring** | - | 1 | - | SEO audits, content freshness |
| **seo-content-creation** | - | 1 | - | SEO content writing, planning |
| **seo-technical-optimization** | - | 1 | - | Meta tags, structure, schema |
| **content-marketing** | - | 1 | - | Content strategy, marketing |

### Design & UX (3 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **design-mastery** | 4 | 1 | 1 | Timeless design principles, masters |
| **archetypal-alchemy** | 3 | 1 | 1 | Jungian archetypes + Tarot for UI |
| **accessibility-compliance** | - | 1 | 1 | WCAG, accessibility audits |

### Domain-Specific (8 plugins)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **blockchain-web3** | 4 | 1 | - | Solidity, DeFi, NFTs |
| **game-development** | - | 1 | - | Game dev patterns |
| **quantitative-trading** | - | 1 | - | Trading algorithms, finance |
| **business-analytics** | - | 1 | - | Business intelligence |
| **customer-sales-automation** | - | 1 | - | CRM, sales workflows |
| **hr-legal-compliance** | - | 1 | - | HR systems, legal compliance |
| **application-performance** | - | 1 | 1 | APM, performance optimization |
| **full-stack-orchestration** | - | 1 | 1 | Full-stack project coordination |

### Integrations (1 plugin)

| Plugin | Skills | Agents | Commands | Description |
|--------|:------:|:------:|:--------:|-------------|
| **mcp-integrations** | - | 1 | 1 | MCP server integrations |

---

## Essential Bundles

### Web Developer Starter Bundle
*For frontend/backend web development*

```bash
# Plugins to install:
javascript-typescript    # JS/TS patterns (4 skills)
python-development       # Python patterns (5 skills)
backend-development      # API design (5 skills)
frontend-mobile-development
developer-essentials     # Core skills (8 skills)
git-pr-workflows
unit-testing
```

**Skills included**: 22 | **Agents**: 7 | **Commands**: 5

---

### DevOps Engineer Bundle
*For infrastructure and deployment*

```bash
# Plugins to install:
cloud-infrastructure     # Terraform, multi-cloud (4 skills)
kubernetes-operations    # K8s, Helm, GitOps (4 skills)
cicd-automation          # GitHub Actions, GitLab CI (4 skills)
observability-monitoring # Prometheus, Grafana (4 skills)
incident-response
deployment-validation
security-scanning
```

**Skills included**: 17 | **Agents**: 7 | **Commands**: 5

---

### Security Specialist Bundle
*For security audits and compliance*

```bash
# Plugins to install:
security-compliance      # GDPR, HIPAA, SOC2
security-scanning        # SAST, Semgrep (1 skill)
backend-api-security     # API security
frontend-mobile-security # XSS prevention
payment-processing       # PCI compliance (4 skills)
```

**Skills included**: 5 | **Agents**: 5 | **Commands**: 3

---

### AI/ML Developer Bundle
*For AI-powered applications*

```bash
# Plugins to install:
llm-application-dev      # RAG, prompt engineering (4 skills)
machine-learning-ops     # MLOps (1 skill)
python-development       # Python patterns (5 skills)
data-engineering
vibe-coding
```

**Skills included**: 10 | **Agents**: 5 | **Commands**: 4

---

### UI/UX Designer Bundle
*For design-focused development*

```bash
# Plugins to install:
design-mastery           # Design principles (4 skills)
archetypal-alchemy       # Archetypal design (3 skills)
accessibility-compliance # WCAG compliance
frontend-mobile-development
```

**Skills included**: 7 | **Agents**: 4 | **Commands**: 3

---

### Quality & Testing Bundle
*For testing and code quality*

```bash
# Plugins to install:
unit-testing
tdd-workflows
performance-testing-review
api-testing-observability
code-review-ai
comprehensive-review
developer-essentials     # 8 core skills including testing
```

**Skills included**: 8 | **Agents**: 6 | **Commands**: 6

---

## Redundancy Analysis

This section identifies overlapping plugins that could potentially be consolidated.

### Testing Plugins (4 overlapping)

| Plugin | Focus | Unique Value | Overlap |
|--------|-------|--------------|---------|
| **unit-testing** | Unit test generation | AI test generation, framework templates | Core testing |
| **tdd-workflows** | TDD cycle | Red-green-refactor automation | Uses unit-testing agent |
| **performance-testing-review** | Load/perf testing | Benchmarks, stress testing | AI review focus |
| **api-testing-observability** | API testing | API mocking, contract testing | API-specific |

**Recommendation**: Keep all 4 - they serve distinct purposes:
- `unit-testing` = general unit tests
- `tdd-workflows` = TDD methodology
- `performance-testing-review` = performance + code review
- `api-testing-observability` = API-specific testing

---

### Debugging Plugins (4 overlapping)

| Plugin | Focus | Unique Value | Overlap |
|--------|-------|--------------|---------|
| **debugging-toolkit** | General debugging | AI-assisted debugging workflows | Error analysis |
| **error-debugging** | Error tracking | Error monitoring, Sentry-style | Error handling |
| **error-diagnostics** | Error analysis | Very similar to debugging-toolkit | HIGH overlap |
| **distributed-debugging** | Distributed systems | Tracing setup, VS Code debug | DevOps focus |

**Recommendation**: Consolidate `debugging-toolkit` + `error-diagnostics` - nearly identical content.

| Similarity | Action |
|------------|--------|
| **debugging-toolkit vs error-diagnostics** | 90% similar - MERGE candidate |
| **error-debugging** | Distinct focus on monitoring setup - KEEP |
| **distributed-debugging** | Distinct distributed systems focus - KEEP |

---

### Security Plugins (5 overlapping)

| Plugin | Focus | Unique Value | Overlap |
|--------|-------|--------------|---------|
| **security-compliance** | Compliance frameworks | GDPR, HIPAA, SOC2, audits | Compliance |
| **security-scanning** | SAST tools | Semgrep, SonarQube, CodeQL | Code scanning |
| **backend-api-security** | Backend security | Secure coding, API hardening | Implementation |
| **frontend-mobile-security** | Frontend security | XSS prevention, client-side | Implementation |
| **payment-processing** | Payment security | Stripe, PCI compliance | Domain-specific |

**Recommendation**: Keep all 5 - distinct scopes:
- `security-compliance` = audits and frameworks
- `security-scanning` = tooling setup
- `backend-api-security` = backend implementation
- `frontend-mobile-security` = frontend implementation
- `payment-processing` = payment-specific

---

### SEO Plugins (3 overlapping)

| Plugin | Focus | Unique Value | Overlap |
|--------|-------|--------------|---------|
| **seo-analysis-monitoring** | Audits, freshness | Content refresher, E-E-A-T | Analysis |
| **seo-content-creation** | Content writing | Content planner, writer | Creation |
| **seo-technical-optimization** | Technical SEO | Meta tags, schema, structure | Technical |

**Recommendation**: Consider consolidating into single `seo-complete` plugin:

| Current | Proposed |
|---------|----------|
| 3 separate plugins | 1 comprehensive plugin with 3 skill domains |

---

### Code Review Plugins (3 overlapping)

| Plugin | Focus | Unique Value | Overlap |
|--------|-------|--------------|---------|
| **code-review-ai** | AI review | GPT/Claude code review | AI-powered |
| **comprehensive-review** | Multi-agent review | Multiple perspective analysis | Multi-agent |
| **performance-testing-review** | Perf + review | Performance-focused review | Performance |

**Recommendation**: Consolidate `code-review-ai` + `comprehensive-review` - very similar multi-agent review patterns.

---

### Database Plugins (3 overlapping)

| Plugin | Focus | Unique Value | Overlap |
|--------|-------|--------------|---------|
| **database-design** | Schema design | PostgreSQL skill | Design |
| **database-migrations** | Migration workflows | Migration automation | Migrations |
| **database-cloud-optimization** | Cloud DBs | Cloud optimization | Performance |

**Recommendation**: Keep all 3 - distinct lifecycle phases.

---

## Full Plugin Matrix

### Plugins with Skills (24)

| Plugin | # Skills | Skill Names |
|--------|:--------:|-------------|
| developer-essentials | 8 | code-review-excellence, sql-optimization, git-advanced, error-handling, auth-implementation, debugging-strategies, monorepo-management, e2e-testing |
| python-development | 5 | performance-optimization, testing-patterns, async-patterns, packaging, uv-package-manager |
| backend-development | 5 | api-design-principles, architecture-patterns, microservices-patterns, workflow-orchestration, temporal-python-testing |
| cloud-infrastructure | 4 | hybrid-cloud-networking, cost-optimization, multi-cloud-architecture, terraform-module-library |
| kubernetes-operations | 4 | helm-chart-scaffolding, k8s-security-policies, k8s-manifest-generator, gitops-workflow |
| cicd-automation | 4 | deployment-pipeline-design, gitlab-ci-patterns, secrets-management, github-actions-templates |
| javascript-typescript | 4 | javascript-testing, typescript-advanced-types, modern-javascript, nodejs-backend-patterns |
| observability-monitoring | 4 | distributed-tracing, slo-implementation, grafana-dashboards, prometheus-configuration |
| framework-migration | 4 | database-migration, dependency-upgrade, react-modernization, angular-migration |
| llm-application-dev | 4 | rag-implementation, prompt-engineering-patterns, langchain-architecture, llm-evaluation |
| blockchain-web3 | 4 | solidity-security, web3-testing, nft-standards, defi-protocol-templates |
| payment-processing | 4 | billing-automation, pci-compliance, paypal-integration, stripe-integration |
| design-mastery | 4 | design-principles, brand-systems, design-movements, design-masters |
| shell-scripting | 3 | bats-testing-patterns, shellcheck-configuration, bash-defensive-patterns |
| archetypal-alchemy | 3 | archetypal-combinations, major-arcana, jungian-archetypes |
| database-design | 1 | postgresql |
| api-scaffolding | 1 | fastapi-templates |
| security-scanning | 1 | sast-configuration |
| machine-learning-ops | 1 | ml-pipeline-workflow |

### Plugins with Commands Only (13)

| Plugin | Commands |
|--------|----------|
| unit-testing | test-generate |
| tdd-workflows | tdd-red, tdd-green |
| debugging-toolkit | debug-assist |
| error-debugging | error-track |
| ... | ... |

### Plugins with Agents Only (19)

| Plugin | Agents |
|--------|--------|
| jvm-languages | jvm-developer |
| julia-development | julia-developer |
| functional-programming | fp-developer |
| game-development | game-developer |
| quantitative-trading | quant-developer |
| ... | ... |

---

## Plugins by Feature Type

### Plugins with SKILLS (Deep Knowledge)

Skills provide detailed reference knowledge that Claude uses automatically:

1. **developer-essentials** - 8 skills (MOST COMPREHENSIVE)
2. **python-development** - 5 skills
3. **backend-development** - 5 skills
4. **cloud-infrastructure** - 4 skills
5. **kubernetes-operations** - 4 skills
6. **cicd-automation** - 4 skills
7. **javascript-typescript** - 4 skills
8. **observability-monitoring** - 4 skills
9. **framework-migration** - 4 skills
10. **llm-application-dev** - 4 skills
11. **blockchain-web3** - 4 skills
12. **payment-processing** - 4 skills
13. **design-mastery** - 4 skills
14. **shell-scripting** - 3 skills
15. **archetypal-alchemy** - 3 skills

### Plugins with COMMANDS (Slash Commands)

Commands provide `/slash` command workflows:

```
accessibility-compliance, agent-orchestration, api-testing-observability,
application-performance, archetypal-alchemy, backend-development,
cicd-automation, codebase-cleanup, code-documentation, code-refactoring,
code-review-ai, comprehensive-review, context-management, database-cloud-optimization,
database-migrations, data-engineering, debugging-toolkit, dependency-management,
deployment-validation, design-mastery, distributed-debugging, documentation-generation,
error-debugging, error-diagnostics, framework-migration, frontend-mobile-development,
frontend-mobile-security, full-stack-orchestration, git-pr-workflows, incident-response,
javascript-typescript, llm-application-dev, machine-learning-ops, mcp-integrations,
multi-platform-apps, observability-monitoring, performance-testing-review,
python-development, security-compliance, security-scanning, systems-programming,
tdd-workflows, team-collaboration, unit-testing, vibe-coding
```

### Plugins with AGENTS (Specialist Models)

Agents provide specialized assistant personas:

All 68 plugins include at least one agent (except developer-essentials which is skills-only).

---

## Quick Reference: Finding the Right Plugin

| I want to... | Use Plugin |
|--------------|------------|
| Write better Python | `python-development` |
| Set up CI/CD | `cicd-automation` |
| Deploy to Kubernetes | `kubernetes-operations` |
| Secure my API | `backend-api-security` |
| Debug production issues | `distributed-debugging` |
| Write unit tests | `unit-testing` |
| Practice TDD | `tdd-workflows` |
| Build RAG apps | `llm-application-dev` |
| Design with meaning | `archetypal-alchemy` |
| Apply design principles | `design-mastery` |
| Ensure accessibility | `accessibility-compliance` |
| Manage git workflows | `git-pr-workflows` |
| Review code with AI | `code-review-ai` |
| Migrate frameworks | `framework-migration` |
| Optimize databases | `database-cloud-optimization` |

---

## Legend

| Symbol | Meaning |
|--------|---------|
| Skills count | Number of SKILL.md knowledge files |
| Agents count | Has agents/ directory |
| Commands count | Has commands/ directory |
| - | Not present |
| 1 | Present (directories, not file count) |

---

*Catalog generated from analysis of 70 plugins in LibreUIUX-Claude-Code*
