# Install from Claude Code

A user adds LibreUIUX-Claude-Code as a plugin marketplace in Claude Code and installs plugins from it by name. Each installed plugin shows as enabled under the `libreuiux` marketplace and its components are available after a restart.

## Sub-features

- `claude-marketplace-add` registers the repo as the `libreuiux` marketplace.
- `claude-install-one` installs one plugin as `<plugin>@libreuiux`.
- `claude-install-all` installs every plugin in the pack (71 in total).
- `claude-list` shows each installed plugin as enabled.

## How to get to it (user POV)

- Inside Claude Code: `/plugin marketplace add HermeticOrmus/LibreUIUX-Claude-Code`, then `/plugin install design-mastery@libreuiux`.
- From a terminal: `claude plugin marketplace add HermeticOrmus/LibreUIUX-Claude-Code`, then `claude plugin install design-mastery@libreuiux`.
- `/plugin` inside Claude Code opens the plugin manager to browse the rest of the pack.

## Driving it with control-libreuiux

Preconditions:

- `.grok/skills/verify-libreuiux/bin/control-libreuiux doctor` reports `worth_driving: true`.

- **Add the marketplace and install one plugin.** Run `.grok/skills/verify-libreuiux/bin/control-libreuiux install --claude --only design-mastery`. `evidence/claude-marketplace-add.log` and `evidence/claude-install-design-mastery.log` end in `exit 0`.
- **Confirm it is enabled.** The same command prints `result.json`: `claude.enabled` is 1, `claude.missing` and `claude.load_errors` are empty. `evidence/claude-list.json` has `design-mastery@libreuiux` with `"enabled": true`.
- **Install the whole pack.** Run `.grok/skills/verify-libreuiux/bin/control-libreuiux run`. `result.json` has `claude.wanted` equal to `claude.enabled` (71) and `ok: true`.
- **Proof.** Keep `evidence/claude-list.json` and `evidence/result.json` from the run.

## Gotchas

- The marketplace name is `libreuiux` (from `.claude-plugin/marketplace.json`), not the repo name. `<plugin>@LibreUIUX-Claude-Code` fails in Claude Code.
- Installing from `HermeticOrmus/LibreUIUX-Claude-Code` installs what is on GitHub's default branch. To prove a change, install from the tree under test, which is what the helper does.
- Claude Code loads new plugins at the next session start. The proof is the list and details read back, not a live session.
