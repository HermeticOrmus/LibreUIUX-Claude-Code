# Kubernetes Operations

> Production-grade Kubernetes architecture, deployment patterns, and security policies for cloud-native workloads.

## Overview

This plugin provides comprehensive Kubernetes tooling covering cluster architecture design, GitOps-driven deployments, Helm chart scaffolding, manifest generation, and security policy enforcement. It combines an expert architect agent with four specialized skills that cover the full lifecycle of Kubernetes workloads -- from initial manifest creation through production-hardened security policies.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **kubernetes-architect** | Expert K8s architect covering multi-cluster management, service mesh (Istio/Linkerd), GitOps workflows, cloud-native security, and cost optimization across AWS EKS, GCP GKE, and Azure AKS. |

### Skills

| Skill | Description |
|-------|-------------|
| **gitops-workflow** | Set up and manage ArgoCD and Flux CD for declarative, Git-driven deployments with sync policies, progressive delivery, and encrypted secret management (SOPS/Sealed Secrets). |
| **helm-chart-scaffolding** | Create production-ready Helm charts with proper Chart.yaml configuration, values management, Go templating patterns, multi-environment configs, and chart validation. |
| **k8s-manifest-generator** | Generate Deployment, Service, ConfigMap, Secret, and PVC manifests following Kubernetes best practices including resource limits, health probes, and security contexts. |
| **k8s-security-policies** | Implement NetworkPolicy, Pod Security Standards, RBAC patterns, OPA Gatekeeper constraints, and Istio authorization policies for defense-in-depth cluster security. |

## Usage

- **New cluster setup**: Start with the kubernetes-architect agent for architecture design, then use gitops-workflow to establish deployment pipelines.
- **Deploying workloads**: Use k8s-manifest-generator for individual resources or helm-chart-scaffolding for packaged applications.
- **Hardening security**: Apply k8s-security-policies to enforce network isolation, pod security standards, and least-privilege RBAC.
- **Day-2 operations**: The architect agent handles scaling, upgrades, disaster recovery, and multi-cluster federation.

## Related Plugins

- **observability-monitoring** -- Prometheus, Grafana, and distributed tracing for Kubernetes workloads.
- **security-scanning** -- SAST and dependency scanning for container images and Helm charts.
- **security-compliance** -- Compliance frameworks (SOC2, HIPAA) for regulated Kubernetes environments.
