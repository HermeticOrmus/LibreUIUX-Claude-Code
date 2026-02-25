# Security Scanning

> Static analysis (SAST), dependency vulnerability scanning, security hardening, and DevSecOps pipeline integration.

## Overview

This plugin provides comprehensive security scanning across the application stack. A security auditor agent coordinates with three specialized commands for SAST analysis, dependency scanning, and defense-in-depth hardening. A SAST configuration skill provides detailed setup guidance for Semgrep, SonarQube, and CodeQL. Together they cover vulnerability detection, supply chain security (SBOM generation), remediation planning, and multi-phase security hardening orchestration.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **security-auditor** | DevSecOps specialist covering SAST/DAST/IAST pipeline integration, threat modeling, OAuth2/OIDC authentication, OWASP standards, container security, supply chain security (SLSA, SBOM), secrets management, cloud security, and incident response. |

### Commands

| Command | Description |
|---------|-------------|
| **security-sast** | Multi-language SAST scanning with Bandit (Python), ESLint Security (JavaScript/TypeScript), Semgrep (30+ languages), custom rule authoring, vulnerability pattern detection (SQL injection, XSS, path traversal, command injection), framework-specific analysis (Django, Flask, Express, Spring Boot), and CI/CD pipeline integration. |
| **security-dependencies** | Dependency vulnerability scanning across npm, pip, Go, and Rust ecosystems with automated ecosystem detection, CVSS-based prioritization, SBOM generation (CycloneDX), remediation plans, automated update scripts, and SARIF report generation. |
| **security-hardening** | Multi-agent security hardening orchestration across four phases: comprehensive assessment (SAST/DAST/secrets/threat modeling), vulnerability remediation (backend/frontend/mobile hardening), security controls (authentication, infrastructure, secrets management), and validation (penetration testing, compliance verification, SIEM integration). |

### Skills

| Skill | Description |
|-------|-------------|
| **sast-configuration** | Set up and configure SAST tools (Semgrep, SonarQube, CodeQL) with custom rule creation, quality gate configuration, CI/CD integration (GitHub Actions, GitLab CI, pre-commit hooks), false positive management, and incremental scanning optimization. |

## Usage

- **Initial security scan**: Run security-sast for code vulnerabilities and security-dependencies for supply chain risks.
- **SAST tool setup**: Use the sast-configuration skill for detailed Semgrep rule authoring, SonarQube quality profiles, and CodeQL query development.
- **Full hardening**: The security-hardening command orchestrates a 13-step, four-phase process from assessment through validation.
- **CI/CD integration**: All commands include GitHub Actions and GitLab CI configurations with quality gates that block on critical findings.
- **Dependency management**: security-dependencies generates SBOM, prioritizes by CVSS score, and provides one-command fix scripts per ecosystem.

## Related Plugins

- **security-compliance** -- Regulatory compliance (GDPR, HIPAA, SOC2) that builds on security scanning results.
- **performance-testing-review** -- AI-powered code review that includes security analysis.
- **kubernetes-operations** -- K8s security policies and container security that complement application-level scanning.
