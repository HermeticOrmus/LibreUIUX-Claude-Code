# Database Design

> Agents and skill for database architecture, SQL expertise, and PostgreSQL-specific schema design best practices.

## Overview

The Database Design plugin provides focused expertise for designing database schemas and writing high-performance SQL. It pairs a database architect for technology selection and data modeling with a SQL specialist for query optimization, and includes a detailed PostgreSQL skill covering data types, indexing, constraints, and advanced features. Use this plugin when starting a new database from scratch, choosing between SQL and NoSQL technologies, designing schemas, or optimizing complex queries in cloud-native or hybrid OLTP/OLAP environments.

## Contents

### Agents

- **database-architect** -- Expert database architect for designing scalable, performant data layers from the ground up. Covers technology selection (SQL, NoSQL, TimeSeries), schema modeling, normalization strategies (normalize to 3NF first, denormalize only with measured justification), migration planning, and performance-first design. Handles both greenfield architectures and re-architecture of existing systems.

- **sql-pro** -- Master SQL specialist covering modern cloud-native databases (Aurora, Cloud SQL, Azure SQL), hybrid OLTP/OLAP optimization, and advanced analytical techniques. Expertise spans execution plan analysis, cost-based optimization, partitioning strategies, window functions, CTEs, and performance tuning across multiple database platforms.

### Commands

This plugin contains agents only -- no standalone commands.

### Skills

- **postgresql-table-design** -- Comprehensive PostgreSQL schema design skill covering core rules (primary keys, normalization, NOT NULL, indexing), PostgreSQL-specific gotchas (identifier lowercasing, unique + NULLs, missing FK indexes, MVCC dead tuples), data type guidance (BIGINT vs UUID for IDs, TIMESTAMPTZ for events, NUMERIC for money, TEXT for strings), indexing strategies, constraint patterns, and performance considerations. Includes practical rules like preferring `BIGINT GENERATED ALWAYS AS IDENTITY` for primary keys and using `uuidv7()` on PG18+ for distributed systems.

## Usage

```
# Install to your project
cp -r plugins/database-design .claude/plugins/

# The skill and agents activate for database-related tasks
# Example prompts:
# "Design a PostgreSQL schema for an e-commerce platform"
# "Should I use PostgreSQL or MongoDB for this use case?"
# "Optimize this analytical query that joins 5 tables"
# "Review my schema for normalization and indexing issues"
```

## Related Plugins

- **database-migrations** -- Handles migrating the schemas you design with zero-downtime strategies and observability.
- **database-cloud-optimization** -- Broader optimization covering cloud costs, backend architecture, and database performance tuning.
- **data-engineering** -- Extends database design into data pipelines, ETL workflows, and data platform architecture.
