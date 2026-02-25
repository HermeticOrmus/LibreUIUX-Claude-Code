# TDD Workflows

> Agents and commands for disciplined test-driven development with strict red-green-refactor cycle enforcement.

## Overview

This plugin provides a complete TDD workflow system with a dedicated orchestrator agent, a code review agent, and four commands that map to the phases of test-driven development. It enforces the red-green-refactor discipline, coordinates multi-agent TDD workflows, and tracks TDD metrics. Use this plugin when implementing features test-first, refactoring with confidence, or establishing TDD practices across a project.

## Contents

### Agents

- **tdd-orchestrator** -- Master TDD orchestrator that enforces red-green-refactor discipline across projects. Coordinates multi-agent workflows, manages TDD cycle timing, detects anti-patterns (test-after, partial coverage), supports both Chicago School and London School approaches, and integrates with property-based testing, mutation testing, and legacy code characterization. Runs on Sonnet.

- **code-reviewer** -- Elite code review expert combining AI-powered analysis with manual review techniques. Covers security vulnerabilities (OWASP Top 10), performance optimization, configuration review, production reliability, SOLID principles, and multi-language expertise. Provides structured feedback organized by severity with specific code examples. Runs on Sonnet.

### Commands

- **tdd-cycle** -- Executes a complete TDD workflow across six phases: test specification and design, RED (write failing tests), GREEN (make tests pass), REFACTOR (improve code quality), integration testing, and continuous improvement. Includes configurable coverage thresholds (80% line, 75% branch), validation checkpoints, failure recovery protocol, and anti-pattern detection.

- **tdd-red** -- Generates comprehensive failing tests following TDD red phase principles. Produces tests across unit, integration, contract, and property categories using framework-appropriate patterns (Jest, pytest, Go testing, RSpec). Enforces proper failure for the right reasons, not syntax errors.

- **tdd-green** -- Implements minimal code to make failing tests pass. Follows green phase strategies: "Fake It" for initial tests, "Obvious Implementation" for trivial solutions, and "Triangulation" for generalization. Includes decision frameworks for when to fake versus implement real logic, with complete progressive examples across React, Django, and Express.

- **tdd-refactor** -- Refactors code while keeping all tests green. Applies code smell detection, SOLID principles, design patterns (Factory, Strategy, Observer), and performance optimization. Uses incremental steps with test verification after each change, rollback protocols, and before/after metrics comparison.

### Skills

_None_

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install tdd-workflows
```

Run a complete TDD cycle for a feature:

```
/tdd-cycle user authentication with JWT tokens
```

Or use individual phase commands for granular control:

```
/tdd-red user registration validation
/tdd-green
/tdd-refactor
```

## Related Plugins

- **unit-testing** -- Provides the test-automator and debugger agents that the TDD commands delegate to for test generation and execution.
- **team-collaboration** -- Code review and issue resolution workflows that complement TDD practices.
- **systems-programming** -- Language-specific agents for implementing TDD in C, C++, Go, or Rust projects.
