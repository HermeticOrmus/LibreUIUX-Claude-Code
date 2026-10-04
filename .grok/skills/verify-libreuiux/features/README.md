# LibreUIUX-Claude-Code verification map

This folder is the maintained source for verifying what a user of LibreUIUX-Claude-Code does: add the `libreuiux` marketplace, install plugins, and get their skills, commands, agents and hooks. Read this index first, then use the matching feature file as the recipe.

## Baseline preconditions

- `claude`, `grok`, `jq` and `git` are on PATH.
- `.grok/skills/verify-libreuiux/bin/control-libreuiux doctor` reports `worth_driving: true`.
- Every recipe runs in a fresh run started by the helper, so `CLAUDE_CONFIG_DIR` and `GROK_HOME` point at empty folders under the run. Never drive your own Claude Code config or Grok home.

## Driving conventions

- Run every command through the helper, so each one lands in `evidence/` with its exit code.
- Name plugins exactly as `.claude-plugin/marketplace.json` names them.
- Treat every command as literal. Keep quoted names and flags unchanged.
- Start from a new run (`run` or `install`) unless a recipe says it follows another step.

## Proof and skip reporting

- Capture the install action and the state read back afterwards, not only an exit code.
- Record the head (and PR number) from `result.json` with every proof.
- Report an unreachable path with the attempted command and the unmet precondition.
- Do not report one CLI as verified through the other.

## Feature entry contract

Each feature file starts with an H1 title and one paragraph describing the user-visible behavior, then four H2 sections in this order: `Sub-features`, `How to get to it (user POV)`, `Driving it with control-libreuiux`, and `Gotchas`.

## Features

- [Install from Claude Code](./install-claude-code.md) covers adding the marketplace and installing plugins in Claude Code.
- [Install in Grok Build](./install-grok-build.md) covers the same pack through the Grok Build CLI.
- [Install from a clone with setup.sh](./setup-script.md) covers listing, installing a subset, Grok mode and uninstalling.
- [Plugin components load](./plugin-components.md) covers the skills, commands, agents and hooks each plugin brings, and load errors.
