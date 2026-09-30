# libreuiux-hooks

> Optional Claude Code hooks for UI projects: stack context at session start, a confirmation prompt before editing secrets files, and accessibility and design-system hints after UI file edits.

This plugin packages the LibreUIUX hooks (first shipped as loose scripts in the repository's `hooks/` directory) so Claude Code registers them for you. The loose scripts need a `LIBREUIUX_HOOKS_DIR` variable and a hand-edited `settings.json`, parse the hook input with `grep`, return findings in a JSON shape Claude Code does not define (a top-level `additionalContext` array), set timeouts meant as milliseconds in a field Claude Code reads as seconds, and write log files into the hooks directory. These versions keep the same checks, read the JSON that Claude Code sends on stdin with `jq`, answer in the documented hook output format, and write no files. The original scripts stay in `hooks/` unchanged.

## Install

```
/plugin marketplace add HermeticOrmus/LibreUIUX-Claude-Code
/plugin install libreuiux-hooks@libreuiux
```

Or from a terminal: `claude plugin install libreuiux-hooks@libreuiux`. Restart Claude Code to load the hooks. Requires `jq` on your PATH; without it every hook exits silently.

## What each hook does

| Event | Matcher | Script | Behavior |
|-------|---------|--------|----------|
| SessionStart | `startup\|resume\|clear\|compact` | `scripts/session-start.sh` | When the project has a front-end framework or styling library in `package.json`, a `tailwind.config.*`, or a shadcn/ui `components.json`, prints one line naming the detected stack, whether accessibility test tooling is present, and the LibreUIUX plugins that fit. Claude Code adds that line to Claude's context. Prints nothing for other projects. |
| PreToolUse | `Edit\|Write\|MultiEdit` | `scripts/pre-tool-use.sh` | If the target file looks like a secrets file (`.env`, `.env.*` except `.env.example`/`.sample`/`.template`/`.dist`, `*.pem`, `*.key`, `*.p12`, `*.pfx`, or a name containing `credentials` or `secret`), returns `permissionDecision: "ask"` so you confirm the edit. Otherwise exits 0 silently. |
| PostToolUse | `Edit\|Write\|MultiEdit` | `scripts/post-tool-use.sh` | After an edit to a UI file (`.css`, `.scss`, `.sass`, `.less`, `.tsx`, `.jsx`, `.vue`, `.svelte`, `.html`, `.astro`, or a theme/token/Tailwind config script), returns findings to Claude as `additionalContext`: design token and global-style impact, co-located style/test/story files, light text classes, images without `alt`, icon-only buttons without a name, clickable `div`/`span`, inputs without labels, very small targets, animation without a reduced-motion path, autoplay, font sizes under 12px, and large fixed widths. Silent when nothing matches. |

The checks are pattern matches, not measurements: they point Claude at likely problems for it to verify, and they never block an edit.

## Test a hook by hand

```bash
echo '{"tool_name":"Write","tool_input":{"file_path":".env"}}' | bash scripts/pre-tool-use.sh
echo '{"tool_name":"Edit","tool_input":{"file_path":"src/components/ui/Button.tsx"}}' | bash scripts/post-tool-use.sh
echo "{\"cwd\":\"$PWD\"}" | bash scripts/session-start.sh
```

## Turn it off

`/plugin` and disable `libreuiux-hooks`, or `claude plugin disable libreuiux-hooks@libreuiux`.
