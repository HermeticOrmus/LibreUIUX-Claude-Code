# Unit Testing

> Agents and a command for automated test generation, debugging, and AI-powered test automation across languages and frameworks.

## Overview

This plugin provides core testing infrastructure used both directly and by other plugins (notably tdd-workflows). It includes a test automation agent with deep expertise in modern frameworks, AI-powered testing, and self-healing tests, a debugger agent for root cause analysis, and a command for automated unit test generation from code analysis. Use this plugin when writing tests, debugging failures, setting up test automation infrastructure, or generating test coverage for existing code.

## Contents

### Agents

- **test-automator** -- Expert test automation engineer covering AI-powered testing (self-healing tests, visual AI), modern frameworks (Playwright, Appium, K6, Pact), TDD cycle support (both Chicago and London schools), CI/CD pipeline integration, performance and load testing, test data management, cross-platform testing, mutation testing, and comprehensive reporting with Allure/TestRail. Runs on Haiku for fast iteration.

- **debugger** -- Debugging specialist for errors, test failures, and unexpected behavior. Follows a structured process: capture error and stack trace, identify reproduction steps, isolate failure location, implement minimal fix, and verify the solution. Provides root cause explanation, supporting evidence, specific code fixes, and prevention recommendations. Runs on Sonnet for thorough analysis.

### Commands

- **test-generate** -- Automated unit test generation command. Analyzes code structure to identify testable units (functions, classes, methods), generates framework-appropriate test suites (pytest, Jest, JUnit, Go testing), creates mock objects for dependencies, and produces coverage gap analysis. Supports Python, JavaScript/TypeScript, Java, Go, and React component testing with @testing-library.

### Skills

_None_

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install unit-testing
```

Generate tests for a file or module:

```
/test-generate src/services/auth.ts
```

The debugger agent activates proactively when encountering errors or test failures. The test-automator is used both directly for testing strategy questions and by the tdd-workflows plugin as a delegate for test creation and execution.

## Related Plugins

- **tdd-workflows** -- Builds on this plugin's agents to implement full red-green-refactor TDD cycles with strict discipline enforcement.
- **shell-scripting** -- Includes Bats testing patterns for shell-specific test automation.
- **systems-programming** -- Language-specific testing approaches for C (CUnit), C++ (Google Test), Go (testing package), and Rust (built-in test framework).
