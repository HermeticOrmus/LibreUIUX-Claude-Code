# Web Scripting

> Agents for PHP and Ruby web development with modern language features, frameworks, and best practices.

## Overview

This plugin provides expert agents for two major server-side web scripting languages. The PHP agent focuses on modern PHP 8+ with generators, SPL data structures, and strict typing, while the Ruby agent specializes in idiomatic Ruby with metaprogramming, Rails patterns, and gem development. Use this plugin when building web applications, APIs, or backend services in PHP or Ruby, or when refactoring and optimizing existing codebases in these languages.

## Contents

### Agents

- **php-pro** -- Expert in modern PHP 8+ development: generators and iterators for memory-efficient processing, SPL data structures (SplQueue, SplStack, SplHeap), match expressions, enums, attributes, constructor property promotion, union/intersection types, advanced OOP with traits and reflection, stream contexts, and PSR-compliant architecture. Produces type-safe, SOLID-principled code with proper error handling and security. Runs on Sonnet.

- **ruby-pro** -- Expert in idiomatic Ruby and Rails development: metaprogramming (modules, mixins, DSLs), ActiveRecord patterns, gem development and dependency management, performance optimization and profiling, testing with RSpec and Minitest, and code quality enforcement with RuboCop. Produces clean, expressive code following Ruby community conventions. Runs on Sonnet.

### Commands

_None_

### Skills

_None_

## Usage

Install this plugin into your Claude Code project:

```bash
claude plugin install web-scripting
```

The agents activate proactively when working with PHP or Ruby code. They provide expert guidance on language-specific patterns, framework conventions, and performance optimization. Both agents prioritize working code over explanations and follow their respective community standards (PSR for PHP, Ruby style guide and RuboCop for Ruby).

## Related Plugins

- **seo-content-creation** and **seo-technical-optimization** -- For implementing SEO features within PHP or Ruby web applications.
- **unit-testing** -- General test automation that complements language-specific testing (PHPUnit for PHP, RSpec/Minitest for Ruby).
- **tdd-workflows** -- TDD discipline for web application development in either language.
