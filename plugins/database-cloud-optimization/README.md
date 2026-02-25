# Database Cloud Optimization

> Agents and command for optimizing database performance, cloud infrastructure architecture, and cloud cost management across AWS, Azure, and GCP.

## Overview

The Database Cloud Optimization plugin brings together database and cloud infrastructure expertise into a single toolkit. It covers the full optimization spectrum: query and indexing performance tuning, cloud-native database architecture, multi-cloud infrastructure design, and FinOps cost reduction. Use this plugin when facing database performance bottlenecks, planning cloud migrations, designing scalable data architectures, or needing to reduce cloud infrastructure costs without sacrificing reliability.

## Contents

### Agents

- **backend-architect** -- Expert backend architect specializing in scalable API design (REST, GraphQL, gRPC), microservices architecture, event-driven systems, service mesh patterns, and distributed systems. Handles service boundary definition, inter-service communication, resilience patterns (circuit breakers, retries, bulkheads), and observability integration.

- **cloud-architect** -- Expert cloud architect covering AWS, Azure, and GCP multi-cloud infrastructure design. Masters Infrastructure as Code (Terraform, OpenTofu, CDK), FinOps cost optimization, serverless patterns, security and compliance, disaster recovery, and the AWS Well-Architected Framework. Handles migration planning and multi-cloud strategies.

- **database-architect** -- Expert database architect for designing data layers from scratch. Covers SQL/NoSQL/TimeSeries technology selection, schema modeling, normalization strategies, migration planning, and performance-first design. Handles both greenfield architectures and re-architecture of existing systems with a focus on choosing the right database technology.

- **database-optimizer** -- Expert database optimizer for performance tuning and query optimization. Masters execution plan analysis (EXPLAIN ANALYZE), advanced indexing strategies, N+1 resolution, multi-tier caching, partitioning strategies, connection pooling, and cloud database optimization. Covers multi-database platforms including PostgreSQL, MySQL, MongoDB, and Redis.

### Commands

- **cost-optimize** -- Cloud cost optimization command that analyzes spending across AWS, Azure, and GCP to identify savings opportunities. Implements comprehensive cost analysis frameworks, rightsizing recommendations, reserved instance planning, spot instance strategies, and automated cost controls. Focuses on actionable recommendations with sustainable cost management practices.

## Usage

```
# Install to your project
cp -r plugins/database-cloud-optimization .claude/plugins/

# Analyze and optimize cloud costs
# /cost-optimize --provider aws

# Agents activate automatically for relevant tasks
# Example prompts:
# "Optimize the slow queries in our PostgreSQL analytics dashboard"
# "Design a multi-region database architecture for our SaaS platform"
# "Review our AWS infrastructure for cost savings"
```

## Related Plugins

- **database-design** -- Focused on schema design, data modeling, and PostgreSQL-specific best practices.
- **database-migrations** -- Handles zero-downtime migrations, CDC pipelines, and migration observability.
- **cloud-infrastructure** -- Broader cloud infrastructure management beyond database-specific concerns.
