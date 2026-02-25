# JVM Languages

> Expert agents for Java, Scala, and C# development covering enterprise architecture, functional programming, and modern language features.

## Overview

This plugin provides specialized expertise for three major managed-language ecosystems. The Java agent covers modern Java 21+ with virtual threads, Spring Boot 3.x, and GraalVM native images. The Scala agent handles enterprise functional programming with Cats Effect, ZIO, Apache Pekko, and Spark. The C# agent focuses on modern .NET development with ASP.NET Core, Entity Framework, and Blazor. Use these agents when building enterprise applications, microservices, distributed systems, or high-performance backend services on the JVM or .NET runtime.

## Contents

### Agents

- **java-pro** -- Modern Java 21+ expert specializing in virtual threads (Project Loom), pattern matching, record classes, sealed classes, and the Spring Boot 3.x ecosystem. Covers Spring Security 6 with OAuth2/JWT, Spring Data JPA with Hibernate 6+, Spring Cloud for microservices, GraalVM Native Image compilation, JVM tuning (G1, ZGC garbage collectors), performance benchmarking with JMH, Testcontainers for integration testing, distributed tracing with Micrometer/OpenTelemetry, and cloud-native deployment with Docker/Kubernetes.

- **scala-pro** -- Elite Scala engineer for enterprise functional programming and distributed systems. Masters Scala 3 type system (union/intersection types, given/using clauses), effect systems (Cats Effect, ZIO), Apache Pekko (Akka successor) for actor-based concurrency with cluster sharding and event sourcing, Apache Spark for large-scale data processing, reactive streams with FS2, domain-driven design patterns, gRPC and REST APIs with Http4s/Tapir, type-safe database access with Doobie, property-based testing with ScalaCheck, and GraalVM native image builds.

- **csharp-pro** -- Modern C# and .NET specialist covering modern language features (records, pattern matching, nullable reference types), the .NET ecosystem (ASP.NET Core, Entity Framework, Blazor), SOLID principles with composition over inheritance, performance optimization with Span/Memory and value types, async/await with TPL concurrent programming, testing with xUnit/NUnit/Moq/FluentAssertions, BenchmarkDotNet profiling, and enterprise architecture patterns. Outputs clean C# with XML documentation and code analysis configuration.

### Commands

_None_

### Skills

_None_

## Usage

Each agent activates proactively when working in its respective language ecosystem. They are particularly useful for architecture decisions, performance optimization, and leveraging modern language features.

```
Ask: "Migrate this Spring Boot application to use virtual threads and GraalVM native image"
Ask: "Design a distributed event-sourced system with Apache Pekko cluster sharding"
Ask: "Implement an ASP.NET Core microservice with Entity Framework and clean architecture"
```

## Related Plugins

- **game-development** -- Unity development uses C# (csharp-pro), and Minecraft plugins use Java (java-pro)
- **functional-programming** -- Elixir agent for functional programming on the BEAM (complements Scala's FP on JVM)
- **full-stack-orchestration** -- Coordinates JVM backend services with frontend, testing, and deployment layers
