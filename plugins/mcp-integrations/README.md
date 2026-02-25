# MCP Integrations

> Browser DevTools and visual debugging capabilities via Model Context Protocol for screenshot-to-code workflows.

## Overview

This plugin extends Claude Code with browser-based development tools through the Model Context Protocol (MCP). It enables visual debugging, live DOM inspection, screenshot-to-code conversion, design token extraction, and accessibility auditing -- all driven by natural language interaction with running web applications.

## Contents

### Skills

| Skill | Description |
|-------|-------------|
| **browser-devtools-mcp** | Connect to browsers via MCP for visual debugging, DOM inspection, CSS analysis, network monitoring, screenshot-to-code workflows, design token extraction, performance auditing (Lighthouse), and accessibility testing using Puppeteer and Chrome DevTools Protocol. |

## Usage

- **Visual debugging**: Inspect live DOM elements, capture screenshots, and analyze CSS styles without leaving the terminal.
- **Screenshot-to-code**: Convert UI screenshots into HTML/CSS/React components with design token extraction for color, typography, and spacing.
- **Accessibility audits**: Run automated accessibility checks against WCAG guidelines on running pages.
- **Performance analysis**: Execute Lighthouse audits and Core Web Vitals measurements through MCP.
- **Network inspection**: Monitor API requests, response payloads, and timing data from live applications.
- **Design system extraction**: Pull color palettes, typography scales, and spacing tokens from existing UIs.

## Related Plugins

- **multi-platform-apps** -- Frontend and UI/UX agents that consume the visual data extracted by this plugin.
- **performance-testing-review** -- Performance engineering that complements browser-level performance audits.
- **observability-monitoring** -- Grafana dashboards for visualizing metrics captured during browser testing.
