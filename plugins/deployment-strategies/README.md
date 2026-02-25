# Deployment Strategies

> Expert agents for modern CI/CD pipelines, GitOps workflows, and Infrastructure as Code with Terraform/OpenTofu.

## Overview

The deployment-strategies plugin provides two specialized agents covering the full deployment automation landscape. Use it when designing CI/CD pipelines, implementing GitOps workflows with ArgoCD or Flux, building secure container pipelines, planning progressive delivery with canary deployments, or managing infrastructure with Terraform/OpenTofu. These agents handle everything from zero-downtime deployments to enterprise-scale IaC module design.

## Contents

### Agents

- **deployment-engineer** -- Expert in modern CI/CD pipelines, GitOps workflows, and deployment automation. Covers GitHub Actions, GitLab CI, Azure DevOps, Jenkins, and emerging platforms (Buildkite, Tekton). Masters container technologies (Docker, Podman, BuildKit), Kubernetes deployment patterns (rolling, blue/green, canary), progressive delivery (Argo Rollouts, Flagger), supply chain security (SLSA, Sigstore, SBOM), and platform engineering with self-service developer capabilities. Uses the `haiku` model.

- **terraform-specialist** -- Advanced Terraform/OpenTofu specialist for infrastructure automation. Covers module design with composition patterns and testing (Terratest), state management with remote backends, encryption, and locking, multi-environment strategies (workspaces, directory structures), CI/CD integration with policy-as-code (OPA, Sentinel, Checkov), multi-cloud and hybrid deployments, enterprise governance (RBAC, compliance, service catalogs), and migration between Terraform and OpenTofu. Uses the `sonnet` model.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add deployment-strategies
```

Then use the agents via subagent delegation:

```
Task(subagent_type="deployment-strategies::deployment-engineer")
"Design a complete CI/CD pipeline for microservices with security scanning and GitOps"

Task(subagent_type="deployment-strategies::terraform-specialist")
"Create a reusable Terraform module for a three-tier web application"
```

## Related Plugins

- **deployment-validation** -- Cloud architecture design and configuration validation
- **distributed-debugging** -- Troubleshooting deployment failures and infrastructure issues
- **framework-migration** -- Managing deployments during legacy system modernization
