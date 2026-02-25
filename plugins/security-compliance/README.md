# Security Compliance

> Regulatory compliance auditing and implementation for GDPR, HIPAA, SOC2, PCI-DSS, and ISO 27001.

## Overview

This plugin focuses on regulatory compliance for software systems. It pairs a comprehensive security auditor agent with a compliance check command that performs automated audits against major frameworks. The command covers consent management, data erasure (right to be forgotten), PHI protection, PCI-DSS controls, audit logging with tamper-proof checksums, and continuous compliance monitoring with real-time dashboards.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **security-auditor** | DevSecOps and compliance specialist covering vulnerability assessment, threat modeling (STRIDE, PASTA), OWASP standards, OAuth2/OIDC authentication, cloud security (AWS/Azure/GCP), SIEM/SOAR integration, incident response, and regulatory frameworks (GDPR, HIPAA, SOC2, PCI-DSS, ISO 27001, NIST). |

### Commands

| Command | Description |
|---------|-------------|
| **compliance-check** | Automated compliance audit covering framework analysis and applicability, GDPR privacy controls (consent management, right to erasure, data portability), HIPAA PHI protection, SOC2 security controls (MFA, RBAC, encryption), PCI-DSS card data handling, audit logging, continuous monitoring dashboards, and CI/CD compliance gates. |

## Usage

- **Compliance assessment**: Run the compliance-check command to determine which regulations apply to your system and identify gaps.
- **GDPR implementation**: Get code templates for consent management, data erasure, data portability, pseudonymization, and privacy policy generation.
- **HIPAA safeguards**: Implement PHI access controls with minimum necessary standard, FIPS 140-2 encryption, and workforce training tracking.
- **SOC2 preparation**: Set up MFA enforcement, RBAC authorization, envelope encryption, and tamper-evident audit logs.
- **Continuous compliance**: Deploy GitHub Actions workflows for daily compliance checks including PII detection, encryption verification, and license scanning.
- **Audit preparation**: Generate regulation-specific compliance reports with metrics, gap analysis, and evidence collection.

## Related Plugins

- **payment-processing** -- PCI DSS compliance for payment card data that integrates with broader compliance efforts.
- **security-scanning** -- SAST, dependency scanning, and security hardening that support compliance requirements.
- **observability-monitoring** -- Audit logging and monitoring infrastructure for compliance evidence.
