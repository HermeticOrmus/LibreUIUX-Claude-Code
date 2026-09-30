# Notice

LibreUIUX for Claude Code combines original work by Diego Bodart (Hermetic Ormus) with plugins derived from [wshobson/agents](https://github.com/wshobson/agents) by Seth Hobson and its contributors, used under the MIT License.

## Plugins derived from wshobson/agents

The 66 plugins below come from wshobson/agents, forked in late 2025 (their files match upstream commit `ddbd034`). The author column is the author recorded in that repository's marketplace manifest; plugins by Ryan Snodgrass and the community were contributed to wshobson/agents and are distributed under its license.

| Plugin | Author in wshobson/agents |
|--------|---------------------------|
| `accessibility-compliance` | Seth Hobson |
| `agent-orchestration` | Seth Hobson |
| `api-scaffolding` | Seth Hobson |
| `api-testing-observability` | Seth Hobson |
| `application-performance` | Seth Hobson |
| `arm-cortex-microcontrollers` | Ryan Snodgrass |
| `backend-api-security` | Seth Hobson |
| `backend-development` | Seth Hobson |
| `blockchain-web3` | Seth Hobson |
| `business-analytics` | Seth Hobson |
| `cicd-automation` | Seth Hobson |
| `cloud-infrastructure` | Seth Hobson |
| `code-documentation` | Seth Hobson |
| `code-refactoring` | Seth Hobson |
| `code-review-ai` | Seth Hobson |
| `codebase-cleanup` | Seth Hobson |
| `comprehensive-review` | Seth Hobson |
| `content-marketing` | Seth Hobson |
| `context-management` | Seth Hobson |
| `customer-sales-automation` | Seth Hobson |
| `data-engineering` | Seth Hobson |
| `data-validation-suite` | Seth Hobson |
| `database-cloud-optimization` | Seth Hobson |
| `database-design` | Seth Hobson |
| `database-migrations` | Seth Hobson |
| `debugging-toolkit` | Seth Hobson |
| `dependency-management` | Seth Hobson |
| `deployment-strategies` | Seth Hobson |
| `deployment-validation` | Seth Hobson |
| `developer-essentials` | Seth Hobson |
| `distributed-debugging` | Seth Hobson |
| `documentation-generation` | Seth Hobson |
| `error-debugging` | Seth Hobson |
| `error-diagnostics` | Seth Hobson |
| `framework-migration` | Seth Hobson |
| `frontend-mobile-development` | Seth Hobson |
| `frontend-mobile-security` | Seth Hobson |
| `full-stack-orchestration` | Seth Hobson |
| `functional-programming` | Seth Hobson |
| `game-development` | Seth Hobson |
| `git-pr-workflows` | Seth Hobson |
| `hr-legal-compliance` | Seth Hobson |
| `incident-response` | Seth Hobson |
| `javascript-typescript` | Seth Hobson |
| `julia-development` | Community Contribution |
| `jvm-languages` | Seth Hobson |
| `kubernetes-operations` | Seth Hobson |
| `llm-application-dev` | Seth Hobson |
| `machine-learning-ops` | Seth Hobson |
| `multi-platform-apps` | Seth Hobson |
| `observability-monitoring` | Seth Hobson |
| `payment-processing` | Seth Hobson |
| `performance-testing-review` | Seth Hobson |
| `python-development` | Seth Hobson |
| `quantitative-trading` | Seth Hobson |
| `security-compliance` | Seth Hobson |
| `security-scanning` | Seth Hobson |
| `seo-analysis-monitoring` | Seth Hobson |
| `seo-content-creation` | Seth Hobson |
| `seo-technical-optimization` | Seth Hobson |
| `shell-scripting` | Ryan Snodgrass |
| `systems-programming` | Seth Hobson |
| `tdd-workflows` | Seth Hobson |
| `team-collaboration` | Seth Hobson |
| `unit-testing` | Seth Hobson |
| `web-scripting` | Seth Hobson |

Changes made in this repository to those plugins:

- A README.md for each plugin.
- A `.claude-plugin/plugin.json` for each plugin, with the values from the marketplace entry.
- YAML frontmatter (`description`, and `argument-hint` where the command takes input) on commands that had none, so Claude Code can list and route them. The command text itself is unchanged.
- Small edits to twenty agent and command files: year references moved forward by one year (for example 2024/2025 to 2025/2026), and the Python and Julia version floors raised (3.13+, 1.11+).
- Three original skills added inside derived plugins, which are Diego Bodart's work, not Seth Hobson's: `agent-orchestration/skills/ui-agent-patterns`, `context-management/skills/design-system-context`, and `llm-application-dev/skills/prompt-engineering-ui`.

## Original plugins

`design-mastery`, `archetypal-alchemy`, `mcp-integrations`, `vibe-coding`, and `libreuiux-hooks` are original to this repository, as are the learning paths (`beginner/`, `intermediate/`, `advanced/`), `templates/`, `resources/`, `hooks/`, and the root `.claude/` commands and agent.

## Upstream license

The derived plugins are covered by the upstream MIT License, reproduced here as required by its terms:

```
MIT License

Copyright (c) 2024 Seth Hobson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

The repository as a whole is licensed under the MIT License in [LICENSE](LICENSE), which carries both copyright notices.
