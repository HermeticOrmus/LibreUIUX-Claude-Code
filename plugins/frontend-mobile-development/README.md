# Frontend & Mobile Development

> Specialized agents and commands for building modern React, Next.js, and cross-platform mobile applications.

## Overview

This plugin provides expert-level assistance for frontend web development and mobile app development. It covers the full spectrum from React 19 and Next.js 15 web applications to cross-platform mobile development with React Native, Flutter, and native iOS/Android. Use it when building UI components, implementing responsive layouts, developing mobile apps, or scaffolding new component architectures.

## Contents

### Agents

- **frontend-developer** -- Expert in React 19+, Next.js 15+, and modern frontend architecture. Handles Server Components, concurrent rendering, Suspense patterns, state management (Zustand, TanStack Query, Redux Toolkit), Tailwind CSS, accessibility (WCAG 2.1/2.2), Core Web Vitals optimization, and testing with React Testing Library and Playwright.

- **mobile-developer** -- Cross-platform and native mobile development specialist. Masters React Native (New Architecture, Hermes, TurboModules), Flutter 3.x with Dart 3, Expo SDK 50+, and native iOS/Android integrations. Handles offline-first sync, biometric auth, push notifications, app store optimization, and CI/CD with Fastlane and EAS.

### Commands

- **component-scaffold** -- Generates production-ready React and React Native components with full file sets: TypeScript component, prop types, styles (CSS Modules, styled-components, or Tailwind), unit tests with React Testing Library, Storybook stories, and barrel exports. Supports web, native, and universal platforms.

### Skills

_None_

## Usage

Install the plugin to gain access to the frontend-developer and mobile-developer agents, which activate proactively when working on UI components or mobile features. Run the `component-scaffold` command to generate a complete component file structure from a description of your requirements.

```
/component-scaffold A responsive data table with sorting, filtering, and pagination using Tailwind CSS
```

## Related Plugins

- **frontend-mobile-security** -- Security hardening for frontend and mobile applications (XSS prevention, WebView security, CSP)
- **javascript-typescript** -- Core JS/TS language expertise, testing patterns, and project scaffolding
- **full-stack-orchestration** -- End-to-end feature delivery coordinating frontend, backend, and infrastructure
