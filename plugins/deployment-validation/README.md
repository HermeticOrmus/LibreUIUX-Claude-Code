# Deployment Validation

> Cloud architecture design and configuration validation for multi-cloud infrastructure, FinOps, and secure deployments.

## Overview

The deployment-validation plugin combines a cloud architecture agent with a configuration validation command to ensure your infrastructure is well-designed, correctly configured, and secure across all environments. Use it when planning cloud architecture on AWS/Azure/GCP, validating configuration files for correctness and security, implementing FinOps cost optimization, or ensuring configuration consistency between development, staging, and production environments.

## Contents

### Agents

- **cloud-architect** -- Expert cloud architect for AWS, Azure, and GCP multi-cloud infrastructure design. Covers Infrastructure as Code (Terraform, CDK, Pulumi), FinOps cost optimization (right-sizing, reserved instances, budget alerts), architecture patterns (serverless, microservices, event-driven), security and compliance (zero-trust, IAM, SOC2/HIPAA/PCI-DSS), scalability (auto-scaling, load balancing, caching), disaster recovery (multi-region, RPO/RTO planning), and emerging technologies (edge computing, sustainability). Uses the `sonnet` model.

### Commands

- **config-validate** -- Comprehensive configuration validation tool. Analyzes project configuration files (JSON, YAML, TOML, INI, .env), implements JSON Schema validation with custom formats (ports, durations, HTTPS URLs), enforces environment-specific rules (no debug in production, HTTPS required, minimum password lengths), provides runtime configuration watching with change detection, handles configuration migration between versions with up/down methods, manages encrypted configuration values with AES-256-GCM, and auto-generates configuration reference documentation.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add deployment-validation
```

Then invoke the command or agent:

```
/config-validate Validate all configuration files for production readiness

Task(subagent_type="deployment-validation::cloud-architect")
"Design a multi-region auto-scaling architecture on AWS with cost estimates"
```

## Related Plugins

- **deployment-strategies** -- CI/CD pipelines and Terraform/OpenTofu for implementing the architecture
- **distributed-debugging** -- Troubleshooting cloud infrastructure and deployment issues
- **data-engineering** -- Data platform design that runs on the validated cloud infrastructure
