# Changelog

All notable changes to LibreUIUX for Claude Code will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

## [2.0.0] - 2026-09-30

A major release because the marketplace name changes. Every plugin keeps its name, and nothing is removed. See "Migrating from 1.x" in the README.

### Changed (breaking)

- The marketplace is now named `libreuiux` (it was `claude-code-workflows`). The old name is also the name of [wshobson/agents](https://github.com/wshobson/agents), so anyone who had that marketplace installed could not add this one. Install plugins as `<plugin>@libreuiux`. If `/plugin marketplace list` shows `claude-code-workflows` pointing to this repository, remove it and add this repository again; if it points to wshobson/agents, leave it.
- `setup.sh` now installs the plugins through the Claude Code CLI (`--list`, `--only`, `--scope`, `--uninstall`). The old interactive project bootstrap is unchanged and moved to `bootstrap.sh`.

### Added

- `.claude-plugin/plugin.json` for all 71 plugins, so `claude plugin validate plugins/<plugin>` passes for each (with `--strict`, no warnings).
- Three original plugins that were on disk but not installable are now in the marketplace: `archetypal-alchemy`, `mcp-integrations`, `vibe-coding`.
- `libreuiux-hooks`, an optional plugin that registers the UI/UX hooks: one line of stack context at session start in UI projects, a confirmation prompt before editing `.env`, key, certificate, or credentials files, and accessibility and design-system hints after UI file edits. The scripts read Claude Code's JSON hook input with `jq`, use the documented output format, and write no files. The original scripts stay in `hooks/`.
- design-mastery 1.1.0, synced with [design-mastery-claude-code](https://github.com/HermeticOrmus/design-mastery-claude-code) v1.1.0: 24 new reference files (masters, movements, principles, brand systems; 27 in total), factual corrections, routing descriptions, and an eval suite for `claude plugin eval plugins/design-mastery`.
- `NOTICE.md`, which lists the 66 plugins derived from wshobson/agents and reproduces the upstream MIT license.
- A GitHub Actions workflow that validates the marketplace and every plugin, then installs every plugin into a clean config.
- A feedback issue form, and a Feedback section in the README that links it and GitHub Discussions.

### Changed

- The marketplace owner is Diego Bodart, and its description states what the repository actually contains (71 plugins: 5 original, 66 derived from wshobson/agents). The old description was upstream's ("64 focused plugins, 87 specialized agents, and 44 tools").
- Marketplace entries drop `strict: false` and their component lists; each plugin's plugin.json is the manifest and Claude Code discovers `agents/`, `commands/`, and `skills/` itself.
- Every command in the derived plugins that had no frontmatter (67 files) now has a `description` and, where it takes input, an `argument-hint`, so it shows up with a description in `/help`. The command text is unchanged.
- The original plugins (design-mastery, archetypal-alchemy, mcp-integrations, vibe-coding) and the three UI skills inside derived plugins (`ui-agent-patterns`, `design-system-context`, `prompt-engineering-ui`) have routing descriptions ("Use this agent when", "Use when"). Their agents use `model: inherit`.
- README: counts match the manifests (71 plugins, 152 agent definitions of which 93 are distinct, 76 command files of which 65 are distinct, 74 skills, 3 hooks), install instructions for Claude Code, the terminal, and `./setup.sh`, a "Migrating from 1.x" note, a repository tree that matches the files, and an Acknowledgments section.

### Fixed

- Credit for the upstream work: LICENSE now carries `Copyright (c) 2024 Seth Hobson` for the derived plugins next to the existing notice, NOTICE.md lists them, and the README credits Seth Hobson and wshobson/agents.

### Also in this release (previously listed as Unreleased)

#### Fixed
- Corrected plugin/agent/command/skill counts in README (70 plugins, 152 agents, 76 commands, 74 skills)
- Fixed broken internal links (beginner/examples/, modern-component-template.md)
- Restored execute permissions on hook scripts
- Updated LICENSE copyright to 2025-2026
- Fixed git clone URL to point to actual repository
- Corrected FUNDING.yml GitHub username

#### Added
- `.gitignore` for standard project hygiene
- Pull request template (`.github/PULL_REQUEST_TEMPLATE.md`)
- This CHANGELOG
- README files for 40 previously undocumented plugins
- `mcp-integrations` and `vibe-coding` to plugin list in README

## [0.2.0] - 2025-12-27

### Added
- Premium SaaS design framework in design-mastery plugin
- Major restructure aligned with Karpathy's "new programming paradigm" framing
- `/ui-review` command for UI analysis
- Comprehensive Design Mastery plugin README
- UI Synthesis orchestration (meta-command + agent)
- Archetypal Alchemy plugin (Jungian archetypes + Tarot symbolism for UI/UX)
- Complete learning paths (beginner, intermediate, advanced)
- 3 automated hooks (session-start, pre-tool-use, post-tool-use)
- Demo environment with presentation script
- Curated resources (tools, component libraries, GitHub repos)
- Design system template (templates/CLAUDE.md)

## [0.1.0] - 2025-12-03

### Added
- Initial plugin collection (forked from wshobson/agents)
- 70 domain-specific plugins with agents, commands, and skills
- Contributing guidelines and Code of Conduct
- MIT License
