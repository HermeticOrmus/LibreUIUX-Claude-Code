# JavaScript & TypeScript

> Core language agents, project scaffolding, and skill guides for modern JavaScript (ES6+) and TypeScript development.

## Overview

This plugin provides deep expertise in JavaScript and TypeScript as languages, independent of any specific framework. It covers modern ES6+ patterns, async programming, advanced TypeScript type systems, Node.js backend development, and comprehensive testing strategies. The skill files serve as reference guides that agents can consult for best practices. Use it when writing or refactoring JS/TS code, scaffolding new TypeScript projects, implementing testing infrastructure, or working with advanced type patterns.

## Contents

### Agents

- **javascript-pro** -- Modern JavaScript expert covering ES6+ features (destructuring, modules, classes), async patterns (promises, async/await, generators), event loop and microtask queue mechanics, Node.js APIs and performance optimization, browser APIs and cross-browser compatibility, and TypeScript migration strategies. Outputs modern JS with proper error handling, async race condition prevention, and JSDoc comments.

- **typescript-pro** -- Advanced TypeScript specialist focused on the type system: generics with constraints, conditional types, mapped types, template literal types, utility types, decorators, and metadata programming. Handles strict compiler configuration, type inference optimization, module systems, and integration with React and Node.js frameworks. Produces strongly-typed code with comprehensive TSDoc comments and .d.ts declaration files.

### Commands

- **typescript-scaffold** -- Generates complete TypeScript project structures for multiple project types: Next.js full-stack applications, React + Vite SPAs, Node.js APIs (Express/Fastify), reusable libraries, and CLI tools. Sets up pnpm, strict tsconfig.json, Vitest testing, ESLint configuration, and proper directory organization with routes, controllers, services, middleware, and type definitions.

### Skills

- **javascript-testing-patterns** -- Comprehensive testing guide covering Jest and Vitest setup, unit testing patterns (pure functions, classes, async functions), mocking strategies (module mocks, dependency injection, spying), integration testing (API tests with supertest, database tests), React component testing with Testing Library, hook testing with renderHook, test fixtures and factories with faker, snapshot testing, and coverage configuration. Includes 15 best practices.

- **modern-javascript-patterns** -- ES6+ feature reference covering arrow functions with lexical this, destructuring (object, array, nested), spread/rest operators, template literals (tagged templates), enhanced object literals, Promises (all, allSettled, race, any), async/await (retry logic, timeout wrappers), functional programming (map/filter/reduce, higher-order functions, composition, piping, pure functions, immutability), iterators/generators, modern operators (optional chaining, nullish coalescing), and performance patterns (debounce, throttle, memoization).

- **nodejs-backend-patterns** -- Production-ready Node.js backend guide covering Express.js and Fastify setup with security middleware (helmet, CORS, compression), middleware patterns, authentication, database integration (SQL and NoSQL), error handling, REST API design, GraphQL backends, WebSocket real-time applications, background job processing, and microservices architecture.

- **typescript-advanced-types** -- Advanced type system guide covering generics with constraints, conditional types, mapped types, template literal types, utility types (Partial, Required, Pick, Omit, Record), type inference, discriminated unions, type guards, branded types, and practical applications for type-safe API clients, form validation systems, and state management.

## Usage

The agents activate proactively when working on JavaScript or TypeScript code. Use the scaffold command to start new projects with best-practice structure.

```
/typescript-scaffold Create a Node.js API project with Express, PostgreSQL, and JWT auth
```

## Related Plugins

- **frontend-mobile-development** -- React and mobile-specific frontend development built on top of JS/TS
- **frontend-mobile-security** -- XSS scanning and client-side security for JS applications
- **full-stack-orchestration** -- Test automator agent that leverages JS/TS testing patterns
