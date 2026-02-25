# Dependency Management

> Legacy modernization agent and comprehensive dependency audit command for security, licensing, and supply chain analysis.

## Overview

The dependency-management plugin helps you maintain healthy, secure, and up-to-date project dependencies. Use it when you need to audit dependencies for vulnerabilities, check license compliance, detect supply chain risks like typosquatting, or plan safe modernization of legacy codebases. It combines a legacy-modernizer agent for gradual migration strategies with a thorough deps-audit command that scans across multiple package ecosystems.

## Contents

### Agents

- **legacy-modernizer** -- Specialist in safe, incremental legacy code upgrades. Handles framework migrations (jQuery to React, Java 8 to 17, Python 2 to 3), database modernization, monolith-to-microservices decomposition, dependency updates, and test coverage for legacy code. Uses the strangler fig pattern, adds tests before refactoring, maintains backward compatibility, and provides rollback procedures for each phase. Uses the `haiku` model.

### Commands

- **deps-audit** -- Comprehensive dependency security and compliance analysis. Performs multi-language dependency discovery (npm, Python, Ruby, Java, Go, Rust, PHP, .NET), vulnerability scanning against CVE databases with severity-based risk scoring, license compliance checking with compatibility matrices, outdated dependency identification with update prioritization, bundle size impact analysis, supply chain security checks (typosquatting, maintainer changes), automated remediation scripts with PR generation, and continuous monitoring via GitHub Actions workflows.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add dependency-management
```

Then invoke the audit command:

```
/deps-audit Scan all project dependencies for vulnerabilities and license issues
```

## Related Plugins

- **framework-migration** -- Full migration workflows with skills for Angular, React, and database migrations
- **deployment-validation** -- Cloud infrastructure validation complementing dependency security
- **data-validation-suite** -- Secure coding practices for the code that uses these dependencies
