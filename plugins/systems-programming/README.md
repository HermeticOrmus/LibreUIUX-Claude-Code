# Systems Programming

> Agents for C, C++, Go, and Rust development with a command for Rust project scaffolding.

## Overview

This plugin covers the four major systems programming languages with dedicated expert agents for each. It spans low-level C for embedded systems and kernel work, modern C++ with RAII and templates, Go for concurrent services and cloud-native applications, and Rust for memory-safe high-performance systems. Use this plugin when building performance-critical software, working with system calls, managing memory directly, or developing compiled applications and services.

## Contents

### Agents

- **c-pro** -- Expert in C systems programming: memory management (malloc/free, memory pools), pointer arithmetic, POSIX system calls, embedded systems, pthreads, and debugging with valgrind and gdb. Produces C99/C11 code with Makefiles and CUnit tests. Runs on Sonnet.

- **cpp-pro** -- Expert in modern C++ (C++11 through C++23): RAII, smart pointers, template metaprogramming, move semantics, STL algorithms, concurrency with std::thread and atomics, and exception safety. Produces CMakeLists.txt and Google Test/Catch2 suites. Runs on Sonnet.

- **golang-pro** -- Expert in Go 1.21+ development: generics, advanced concurrency patterns (goroutines, channels, worker pools), gRPC/REST/GraphQL services, database integration, Docker/Kubernetes deployment, observability with OpenTelemetry, and structured logging with slog. Runs on Sonnet.

- **rust-pro** -- Expert in Rust 1.75+ development: ownership and borrowing, async programming with Tokio, advanced trait system and GATs, web frameworks (axum, actix-web), FFI and unsafe abstractions, performance profiling with cargo-flamegraph, and property-based testing. Runs on Sonnet.

### Commands

- **rust-project** -- Scaffolds production-ready Rust projects. Supports binary, library, workspace, and web API (Axum) project types. Generates complete directory structures with Cargo.toml, module organization, error types, CLI setup (clap), test infrastructure, benchmarks, and development tool configuration (rustfmt, clippy, Makefile).

### Skills

_None_

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install systems-programming
```

The agents activate when working with their respective languages. Use the `rust-project` command to scaffold new Rust applications:

```
/rust-project web-api for a user management service
```

## Related Plugins

- **shell-scripting** -- For automation scripts that complement compiled systems programs.
- **unit-testing** -- General testing support that works alongside language-specific test frameworks.
- **tdd-workflows** -- TDD discipline for systems programming projects.
