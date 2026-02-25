# Database Migrations

> Agents and commands for executing zero-downtime database migrations with observability, CDC pipelines, and production-safe rollback strategies.

## Overview

The Database Migrations plugin provides the operational expertise needed to safely evolve database schemas in production environments. It covers the full migration lifecycle: planning and scripting zero-downtime migrations, monitoring execution with real-time observability, setting up Change Data Capture (CDC) pipelines, and managing cloud database operations. Use this plugin when adding columns to high-traffic tables, migrating between database platforms, deploying schema changes with zero downtime, or needing real-time migration monitoring with anomaly detection.

## Contents

### Agents

- **database-admin** -- Expert database administrator specializing in modern cloud database operations and reliability engineering. Covers AWS, Azure, and GCP database services (RDS, Aurora, DynamoDB, Cloud SQL, Cosmos DB), Infrastructure as Code for databases, high availability and disaster recovery, performance optimization, multi-cloud strategies, container databases, and cost optimization. Handles day-to-day database operations and incident response.

- **database-optimizer** -- Expert database optimizer for performance tuning during and after migrations. Masters execution plan analysis, advanced indexing strategies, N+1 resolution, multi-tier caching, partitioning strategies, and cloud database optimization. Ensures migrations do not degrade performance and identifies optimization opportunities post-migration.

### Commands

- **sql-migrations** -- SQL database migration command for PostgreSQL, MySQL, and SQL Server. Implements zero-downtime strategies including the expand-contract pattern (add column, migrate data in batches, remove old column), concurrent index creation, safe rollback procedures, data integrity validation checks, and performance optimization for large table migrations. Integrates with migration tools like Flyway, Liquibase, and Alembic.

- **migration-observability** -- Migration monitoring and observability infrastructure command. Sets up Change Data Capture (CDC) with Debezium and Kafka, real-time migration monitoring with Prometheus and Grafana, anomaly detection during data synchronization, and comprehensive alerting systems. Includes observable MongoDB migration patterns with Winston logging, Prometheus metrics, and structured event tracking.

## Usage

```
# Install to your project
cp -r plugins/database-migrations .claude/plugins/

# Plan and generate migration scripts
# /sql-migrations --add-column users email_verified boolean

# Set up migration monitoring
# /migration-observability --source postgres --target aurora

# Agents activate for database administration and optimization tasks
```

## Related Plugins

- **database-design** -- Design schemas before migrating them, with PostgreSQL-specific best practices.
- **database-cloud-optimization** -- Optimize database and cloud costs after migrations complete.
- **deployment-strategies** -- Coordinate database migrations with application deployment strategies.
