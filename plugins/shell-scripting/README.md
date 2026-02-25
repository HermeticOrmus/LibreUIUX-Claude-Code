# Shell Scripting

> Agents and skills for production-grade Bash and POSIX shell scripting with defensive patterns, testing, and static analysis.

## Overview

This plugin provides comprehensive support for writing robust, portable shell scripts. It covers both Bash-specific development (with modern Bash 5.x features) and strict POSIX sh scripting for maximum cross-platform portability. The included skills teach defensive programming patterns, Bats testing workflows, and ShellCheck configuration. Use this plugin when building automation scripts, CI/CD pipelines, system utilities, or any shell-based tooling that needs to be reliable and maintainable.

## Contents

### Agents

- **bash-pro** -- Master of defensive Bash scripting for production automation. Covers strict mode, safe argument parsing, temporary resource management, structured logging, CI/CD integration, security hardening, and modern Bash 5.x features. Runs on Sonnet for thorough, expert-level guidance.

- **posix-shell-pro** -- Expert in strict POSIX sh scripting for maximum portability across Unix-like systems (Linux, BSD, macOS, Solaris, Alpine/BusyBox). Specializes in shell-agnostic patterns that work without Bash-specific features like arrays, `[[`, or `local`. Runs on Sonnet.

### Commands

_None_

### Skills

- **bash-defensive-patterns** -- Comprehensive reference for production-ready Bash patterns: strict mode, error trapping and cleanup, variable safety, safe array handling, argument parsing, structured logging, process orchestration, idempotent design, and dry-run support. Includes 10 annotated code patterns.

- **bats-testing-patterns** -- Complete guide to writing shell script tests with Bats (Bash Automated Testing System). Covers test structure, assertion patterns, setup/teardown, function mocking, command stubbing, fixture management, CI/CD integration, and advanced patterns like shell compatibility testing.

- **shellcheck-configuration** -- Guide to configuring and using ShellCheck for static analysis. Covers `.shellcheckrc` project files, common error codes with fixes, inline suppression, CI/CD integration (GitHub Actions, GitLab CI), pre-commit hooks, output formats, and performance optimization for large codebases.

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install shell-scripting
```

The agents activate proactively when working with shell scripts. The skills provide reference material that Claude uses when writing defensive patterns, setting up tests, or configuring linting infrastructure.

## Related Plugins

- **systems-programming** -- For when shell scripting needs give way to compiled languages (C, Go, Rust).
- **tdd-workflows** -- Applies TDD discipline to shell script development using the Bats patterns from this plugin.
- **unit-testing** -- General test generation and debugging capabilities that complement shell-specific testing.
