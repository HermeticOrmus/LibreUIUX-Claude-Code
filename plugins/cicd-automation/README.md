# CI/CD Automation Plugin

> Build deployment pipelines with GitHub Actions, GitLab CI, and modern DevOps practices.

**CI/CD Automation** provides:
- **4 Skills** - GitHub Actions, GitLab CI, secrets management, pipeline design
- **1 Agent** - CI/CD specialist
- **1 Command** - Pipeline scaffolding

**Result**: Automated, secure, fast deployment pipelines.

---

## Quick Start

### Invoke the Agent
```
@cicd-specialist set up GitHub Actions for a Python project
@cicd-specialist create GitLab CI with staging and production
@cicd-specialist implement blue-green deployment pipeline
```

### Use Commands
```
/cicd-scaffold github-actions --language python --deploy vercel
```

---

## The 4 Skills

### 1. GitHub Actions Templates
> Production-ready workflows for any project

**Common Workflows:**

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| CI | push, PR | Test, lint, type-check |
| CD | merge to main | Deploy to production |
| Release | tag push | Build artifacts, publish |
| Scheduled | cron | Dependency updates, audits |

**Example - Complete CI/CD:**
```yaml
name: CI/CD

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: '3.12'
      - run: pip install uv
      - run: uv sync
      - run: uv run pytest

  deploy:
    needs: test
    if: github.ref == 'refs/heads/main'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: superfly/flyctl-actions/setup-flyctl@master
      - run: flyctl deploy --remote-only
        env:
          FLY_API_TOKEN: ${{ secrets.FLY_API_TOKEN }}
```

---

### 2. GitLab CI Patterns
> Powerful pipelines with GitLab's native CI

**Key Concepts:**

| Concept | Purpose |
|---------|---------|
| Stages | Define pipeline phases |
| Jobs | Individual tasks |
| Artifacts | Pass files between jobs |
| Cache | Speed up builds |
| Environments | Track deployments |

**Example - Multi-Environment:**
```yaml
stages:
  - test
  - build
  - deploy

variables:
  DOCKER_IMAGE: $CI_REGISTRY_IMAGE:$CI_COMMIT_SHA

test:
  stage: test
  script:
    - pytest --cov
  coverage: '/TOTAL.*\s+(\d+%)/'

build:
  stage: build
  script:
    - docker build -t $DOCKER_IMAGE .
    - docker push $DOCKER_IMAGE

deploy:staging:
  stage: deploy
  script:
    - kubectl set image deployment/app app=$DOCKER_IMAGE
  environment:
    name: staging
    url: https://staging.example.com
  only:
    - main

deploy:production:
  stage: deploy
  script:
    - kubectl set image deployment/app app=$DOCKER_IMAGE
  environment:
    name: production
    url: https://example.com
  when: manual
  only:
    - main
```

---

### 3. Secrets Management
> Secure handling of credentials and API keys

**Best Practices:**

| Practice | Implementation |
|----------|----------------|
| Never commit secrets | Use .gitignore, git-secrets |
| Use environment variables | ${{ secrets.API_KEY }} |
| Rotate regularly | Automated rotation policies |
| Least privilege | Only needed secrets per job |
| Audit access | Review secret usage logs |

**Secrets Storage Options:**

| Platform | Solution |
|----------|----------|
| GitHub | Repository/Organization secrets |
| GitLab | CI/CD Variables (masked, protected) |
| AWS | Secrets Manager, Parameter Store |
| HashiCorp | Vault |
| Kubernetes | External Secrets Operator |

**Example - External Secrets:**
```yaml
# Fetch secrets from AWS Secrets Manager
apiVersion: external-secrets.io/v1beta1
kind: ExternalSecret
metadata:
  name: app-secrets
spec:
  refreshInterval: 1h
  secretStoreRef:
    name: aws-secrets-manager
    kind: SecretStore
  target:
    name: app-secrets
  data:
    - secretKey: database-url
      remoteRef:
        key: production/database
        property: url
```

---

### 4. Deployment Pipeline Design
> Patterns for reliable, fast deployments

**Deployment Strategies:**

| Strategy | Risk | Rollback | Use Case |
|----------|------|----------|----------|
| Rolling | Low | Moderate | Default for most apps |
| Blue-Green | Very Low | Instant | Zero-downtime required |
| Canary | Very Low | Fast | Gradual rollout |
| Feature Flags | Lowest | Instant | Per-feature control |

**Pipeline Stages:**
```
1. Build
   └── Compile, bundle, create artifacts

2. Test
   ├── Unit tests
   ├── Integration tests
   └── Security scans

3. Stage
   ├── Deploy to staging
   ├── Run E2E tests
   └── Performance tests

4. Production
   ├── Blue-green switch
   ├── Smoke tests
   └── Monitoring check
```

**Optimization Tips:**
- Cache dependencies (node_modules, pip cache)
- Parallelize independent jobs
- Use matrix builds for multi-version testing
- Skip CI for docs-only changes
- Use self-hosted runners for speed

---

## Plugin Structure

```
cicd-automation/
├── README.md                              # This file
│
├── skills/                                # Knowledge base
│   ├── github-actions-templates/
│   │   └── SKILL.md                       # GitHub Actions patterns
│   ├── gitlab-ci-patterns/
│   │   └── SKILL.md                       # GitLab CI patterns
│   ├── secrets-management/
│   │   └── SKILL.md                       # Secrets handling
│   └── deployment-pipeline-design/
│       └── SKILL.md                       # Pipeline architecture
│
├── commands/                              # Slash commands
│   └── cicd-scaffold.md                   # Pipeline scaffolding
│
└── agents/                                # Specialist agents
    └── cicd-specialist.md                 # CI/CD expert
```

---

## Usage Examples

### Example 1: New Project CI/CD
```
User: Set up CI/CD for a Python FastAPI project deploying to Fly.io

@cicd-specialist creates:
1. .github/workflows/ci.yml
   - Run on push and PR
   - Set up Python with uv
   - Run tests, linting, type checking
   - Cache dependencies

2. .github/workflows/deploy.yml
   - Run on push to main
   - Deploy to Fly.io
   - Run smoke tests after deploy

3. Secrets needed:
   - FLY_API_TOKEN (add to GitHub Secrets)
```

### Example 2: Monorepo Pipeline
```
User: Create CI for a monorepo with frontend and backend

@cicd-specialist designs:
1. Path-based triggers
   - frontend/** -> frontend tests + deploy
   - backend/** -> backend tests + deploy
   - shared/** -> all tests

2. Matrix strategy for efficiency
   - Parallel jobs for each service
   - Shared caching

3. Deployment coordination
   - Deploy backend first
   - Then frontend
   - Rollback if frontend fails
```

### Example 3: Security Pipeline
```
User: Add security scanning to our pipeline

@cicd-specialist adds:
1. SAST (Static Analysis)
   - Semgrep for code patterns
   - CodeQL for deep analysis

2. Dependency Scanning
   - npm audit / pip-audit
   - Dependabot alerts

3. Container Scanning
   - Trivy for Docker images
   - Fail on HIGH/CRITICAL

4. Secret Detection
   - git-secrets pre-commit
   - TruffleHog in CI
```

---

## When to Use This Plugin

### Perfect For:
- Setting up new CI/CD pipelines
- Migrating between CI platforms
- Implementing deployment strategies
- Adding security to pipelines
- Optimizing slow builds

### Combines Well With:
- **cloud-infrastructure** - Infrastructure CI/CD
- **kubernetes-operations** - K8s deployments
- **security-scanning** - Security automation
- **deployment-validation** - Post-deploy checks

---

## Platform Reference

| Platform | Config File | Runner |
|----------|-------------|--------|
| GitHub Actions | .github/workflows/*.yml | GitHub-hosted / self-hosted |
| GitLab CI | .gitlab-ci.yml | GitLab.com / self-hosted |
| CircleCI | .circleci/config.yml | Cloud / self-hosted |
| Jenkins | Jenkinsfile | Self-hosted |

---

## Quick Reference

### GitHub Actions Syntax
```yaml
name: CI
on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Run tests
        run: npm test
```

### GitLab CI Syntax
```yaml
stages:
  - test
  - deploy

test:
  stage: test
  script:
    - npm test

deploy:
  stage: deploy
  script:
    - npm run deploy
  only:
    - main
```

### Common Optimizations
```yaml
# Cache dependencies
- uses: actions/cache@v4
  with:
    path: ~/.cache/uv
    key: ${{ runner.os }}-uv-${{ hashFiles('uv.lock') }}

# Skip CI for certain changes
on:
  push:
    paths-ignore:
      - '**.md'
      - 'docs/**'
```

---

## License

Part of the LibreUIUX project - MIT License

---

*"Deployment should be boring. If it's exciting, something is wrong."*
