# Data Engineering

> Agents and commands for designing scalable data pipelines, backend APIs, and data-driven feature development.

## Overview

The data-engineering plugin provides specialized agents for building robust backend architectures and modern data platforms. Use it when designing REST/GraphQL/gRPC APIs, building ETL/ELT pipelines, implementing real-time streaming architectures, or developing features guided by data insights and A/B testing. The agents cover the full spectrum from backend service design to data warehouse implementation.

## Contents

### Agents

- **backend-architect** -- Expert backend architect for scalable API design, microservices architecture, and distributed systems. Covers REST, GraphQL, gRPC, event-driven patterns, authentication, resilience (circuit breakers, retries), observability, and caching. Works after the data layer is designed and complements cloud and security specialists. Uses the `sonnet` model.

- **data-engineer** -- Builds scalable data pipelines, modern data warehouses, and streaming architectures. Masters Apache Spark, dbt, Airflow, Kafka, and cloud-native data platforms (Snowflake, BigQuery, Redshift). Covers data quality with Great Expectations, data governance, lakehouse architectures, and cost optimization. Uses the `sonnet` model.

### Commands

- **data-driven-feature** -- Multi-phase workflow that orchestrates data-driven feature development from exploratory data analysis and hypothesis formation through A/B testing infrastructure, implementation with analytics instrumentation, gradual rollout, and statistical analysis of experiment results.

- **data-pipeline** -- Designs and implements complete data pipeline architectures including ETL/ELT, Lambda, Kappa, and Lakehouse patterns. Covers ingestion (batch and streaming), orchestration (Airflow/Prefect), transformation (dbt/Spark), storage (Delta Lake/Iceberg), data quality, monitoring, and cost optimization.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add data-engineering
```

Then use the agents via subagent delegation or invoke the commands directly:

```
/data-pipeline Design a real-time streaming pipeline from Kafka to BigQuery
/data-driven-feature Build a recommendation engine with A/B testing
```

## Related Plugins

- **deployment-validation** -- Cloud architecture and infrastructure for hosting data platforms
- **data-validation-suite** -- Security-focused backend coding practices for data services
- **framework-migration** -- Modernizing legacy data systems and dependencies
