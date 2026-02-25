# Comprehensive Review

> Multi-agent orchestrated code review covering architecture, security, code quality, and pull request enhancement in coordinated phases.

## Overview

The Comprehensive Review plugin is the most thorough review option in the collection. It orchestrates multiple specialized agents across sequential phases -- architecture and code quality analysis run in parallel, followed by security auditing, with each phase building on the findings of the previous. Use this plugin for critical releases, security-sensitive code, or when you need a complete assessment that covers architecture, code quality, security, testing, and documentation in a single workflow.

## Contents

### Agents

- **architect-review** -- Master software architect that evaluates microservices boundaries, API design, database schema, dependency management, DDD adherence, circular dependencies, coupling issues, and architectural drift. Verifies compliance with enterprise architecture standards and cloud-native patterns.

- **code-reviewer** -- Elite code review agent that performs comprehensive quality analysis including complexity metrics, maintainability index, technical debt assessment, code duplication detection, naming conventions, and Clean Code / SOLID principle adherence. Integrates with SonarQube, CodeQL, and Semgrep for static analysis.

- **security-auditor** -- Expert security auditor specializing in DevSecOps, vulnerability assessment, and compliance frameworks. Covers SAST/DAST/IAST integration, threat modeling, OAuth2/OIDC authentication review, OWASP standards, cloud security posture, and compliance with GDPR, HIPAA, and SOC2. Handles incident response planning and security automation.

### Commands

- **full-review** -- Orchestrates a multi-phase comprehensive review. Phase 1 runs code quality and architecture review in parallel. Subsequent phases layer on security analysis, testing verification, and documentation completeness. Supports configuration flags including `--security-focus`, `--performance-critical`, `--tdd-review`, `--ai-assisted`, `--strict-mode`, `--metrics-report`, and `--framework [name]` for framework-specific best practices.

- **pr-enhance** -- Pull request optimization command that analyzes changes to generate comprehensive PR descriptions, automate review processes, and ensure PRs follow best practices for clarity, size, and reviewability. Generates change summaries, test coverage analysis, and structured PR templates.

## Usage

```
# Install to your project
cp -r plugins/comprehensive-review .claude/plugins/

# Run full multi-agent review
# /full-review src/

# Run with security focus
# /full-review --security-focus src/api/

# Enhance a PR before submission
# /pr-enhance
```

## Related Plugins

- **code-review-ai** -- Lighter-weight AI-powered review for faster iteration cycles.
- **codebase-cleanup** -- Complements reviews with dependency auditing and automated remediation.
- **security-compliance** -- Dedicated security-focused plugin for deeper compliance and vulnerability analysis.
