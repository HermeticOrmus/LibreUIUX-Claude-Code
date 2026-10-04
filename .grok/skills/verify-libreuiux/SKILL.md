---
name: verify-libreuiux
description: Install the LibreUIUX-Claude-Code plugin pack the way a user does, into a clean Claude Code config and a clean Grok Build home, prove every plugin validates, installs and loads its components, and keep the transcripts. Use when proving a LibreUIUX-Claude-Code PR's Done-when, checking that a plugin change still installs in both CLIs, or reproducing an install bug.
---

# Verify LibreUIUX-Claude-Code

LibreUIUX-Claude-Code is a plugin library, not a running app: 71 plugins under `plugins/`, published as the `libreuiux` marketplace. Its user surface is the install. A user adds this repo as a plugin marketplace in Claude Code or Grok Build, installs plugins from it (or runs `./setup.sh` from a clone), and then uses the skills, commands, agents and hooks those plugins bring. This skill drives that path in throwaway configs, so a proof never touches your own Claude Code config or Grok home.

Helper (executable, bash; needs `claude`, `grok`, `jq` and `git`): `.grok/skills/verify-libreuiux/bin/control-libreuiux`

```bash
B=.grok/skills/verify-libreuiux/bin/control-libreuiux
$B --help
$B doctor                              # worth driving? CLIs, head, manifests in sync
$B run                                 # every plugins, both CLIs, prove each loaded; one JSON result
$B run --only design-mastery                     # the same for the plugins a change touched
$B run --pr 12 --expect <sha>          # the same on a PR head, fetched into a scratch clone
$B install --claude --only design-mastery        # a fresh run that keeps its clean config for the next steps
$B details design-mastery                        # component inventory in the latest run (both CLIs)
$B setup --list                        # ./setup.sh inside the latest run's clean configs
$B check                               # scripts/check.sh, the repo's one check command
$B cleanup                             # drop every run's scratch; the evidence stays
```

JSON on stdout, progress on stderr, exit 1 on any failed proof. Everything the helper writes lives under `VERIFY_LIBREUIUX_HOME` (default `~/.local/share/verify-libreuiux`): `runs/<stamp>-<head8>/` (or `<stamp>-pr<N>-<head8>`) holds `scratch/` and `evidence/`, and `runs/latest` points at the newest run.

## Launch

- There is no server. Launching is starting a run: a run folder with an empty Claude Code config (`CLAUDE_CONFIG_DIR`) and an empty Grok home (`GROK_HOME`), both under `scratch/`.
- The tree under test is the checkout the helper sits in. With `--pr N` it is a scratch clone of `refs/pull/N/head` fetched from `origin`, and `--expect <sha>` refuses any other head.
- Claude Code adds the tree as the `libreuiux` marketplace and installs `<plugin>@libreuiux`. Grok adds the checkout as a marketplace named after its folder, then installs `<plugin>@<folder>`.
- Ready when the marketplace add exits 0: `evidence/claude-marketplace-add.log` and `evidence/grok-marketplace-add.log` (or `grok-install.log`) end in `exit 0`.
- Teardown: `run` removes its own scratch when it finishes. After `install`, run `cleanup` when you are done with `details` and `setup`.

## Doctor

```bash
$B doctor
```

- `claude`, `grok`: the CLI versions on PATH. Empty means that CLI is missing.
- `marketplace`, `claude_plugins`, `grok_plugins`: what the manifests in this checkout declare (`grok_plugins` is null when the repo root is the plugin).
- `grok_manifest_in_sync`: `python3 scripts/sync-grok-manifest.py --check` passes.
- `head`, `dirty`: the commit under test, and whether the checkout has uncommitted changes. A dirty tree is reported, not refused; say so in the proof.
- `worth_driving: false` means stop and fix the reported field first.

## Drive

Match the change to a feature in [`features/README.md`](features/README.md) and drive every entry point that feature file lists. `run` is the whole install path at once: it adds the marketplace in both CLIs, installs the selected plugins, reads back `claude plugin list --json` and `grok plugin list --json`, and writes each plugin's component inventory from `claude plugin details` and `grok plugin details`. `result.json` reports per CLI what was wanted, what is enabled or installed, what is missing, and any Claude Code load errors. `ok` is true only when nothing is missing and nothing failed to load.

For a change to one plugin, `run --only <plugin>` is the proof; for a change to the manifests, `setup.sh` or anything shared, `run` with no `--only`.

## Evidence

- `evidence/<step>.log` for every command: the command line, its output and `exit N`.
- `evidence/claude-list.json` and `evidence/grok-list.json`: what the clean configs hold after the install.
- `evidence/details-claude-<plugin>.txt` and `evidence/details-grok-<plugin>.txt`: the skills, commands, agents and hooks each plugin brings.
- `evidence/result.json`: the verdict fields above, with the head and PR it ran on.

Proof standards: drive the real user path (add the marketplace, then install), never copy files into a plugins folder. Capture the action and the resulting state: the install log and the list and details read back from the clean config. A green `scripts/check.sh` is the repo's check, not the proof of a Done-when that names a user path: drive that path too. When a Done-when names a command a plugin brings, show that the command is in the plugin's details.

## Cleanup

```bash
$B cleanup
```

Removes `scratch/` (the clean configs and any PR clone) from every run, and nothing else. It never touches your own Claude Code config or Grok home, because no command here ran with them. The evidence stays under `runs/` until you delete it.

## Helpers

- `bin/control-libreuiux`: the commands above. `--help` prints them.
- `scripts/check.sh` (repo root): the one check command CI runs on every pull request and on push to `main`.
- `scripts/check.sh` validates every plugin with `--strict`.
