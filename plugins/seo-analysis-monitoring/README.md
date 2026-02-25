# SEO Analysis & Monitoring

> E-E-A-T authority building, keyword cannibalization detection, and content freshness optimization for search performance.

## Overview

This plugin provides three specialized SEO agents that address distinct aspects of search engine optimization: building authority and trust signals (E-E-A-T), detecting and resolving keyword cannibalization between competing pages, and identifying outdated content that needs refreshing. Together they maintain and improve organic search performance through systematic content analysis and optimization.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **seo-authority-builder** | Analyzes content for E-E-A-T signals (Experience, Expertise, Authority, Trust) and suggests improvements including author credentials, trust badges, topical authority maps, schema markup, and citation strategies. Proactively activated for YMYL (Your Money or Your Life) topics. |
| **seo-cannibalization-detector** | Identifies keyword overlap and content cannibalization between pages by analyzing title/meta conflicts, content similarity, and search intent competition. Provides resolution strategies including consolidation, differentiation, canonical tags, and internal link restructuring. |
| **seo-content-refresher** | Scans existing content for outdated statistics, expired references, dated terminology, and missing recent developments. Produces prioritized refresh plans based on ranking decay, traffic decline, and content age with specific update checklists per page. |

## Usage

- **Authority building**: The seo-authority-builder agent audits content for E-E-A-T signals and generates enhancement plans with author bio templates, trust signal checklists, and topical authority maps.
- **Cannibalization audit**: Run the seo-cannibalization-detector on groups of similar pages to identify keyword conflicts and get resolution strategies (merge, differentiate, or canonical).
- **Content refresh**: The seo-content-refresher agent identifies pages with outdated information and produces prioritized refresh queues with specific update actions.
- **YMYL content**: The authority builder is especially important for health, finance, legal, or safety content where E-E-A-T signals directly affect rankings.
- **Ongoing maintenance**: Use the content refresher on a regular schedule (quarterly) to keep high-performing pages current and prevent ranking decay.

## Related Plugins

- **mcp-integrations** -- Browser DevTools for inspecting live page structure, schema markup, and accessibility compliance.
- **performance-testing-review** -- Page performance optimization (Core Web Vitals) that complements SEO efforts.
