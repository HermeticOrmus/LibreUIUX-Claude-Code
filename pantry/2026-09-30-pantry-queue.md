# Pantry queue: LibreUIUX-Claude-Code

## How this fills

1. Read the latest competitor map, X mine and people mine.
2. Propose 5 to 8 Goal atoms that answer their themes. The Menu needs at least 3.
3. Each atom needs a Done predicate someone else can check on this repo, a surface, the evidence rows it answers, and a confidence (high, medium or low).
4. Save as `YYYY-MM-DD-pantry-queue.md`; the Menu reads the newest one.
5. Retire an atom only with a bullet under "Explicitly not stocked" of the form `<Title>: shipped, PR #N` or `<Title>: parked, <reason>`.

Sources for this run: [competitor map](2026-09-30-competitor-map.md), [X mine](2026-09-30-x-mine.md), [people mine](2026-09-30-people-mine.md). "Clean config" below means `export CLAUDE_CONFIG_DIR=$(mktemp -d)`, then `claude plugin marketplace add ./` and `claude plugin install <plugin>@libreuiux`, the same steps CI runs.

## Atoms

| # | Title | Done predicate | Surface | Evidence | Confidence |
|---|-------|----------------|---------|----------|------------|
| 1 | Write the Chrome DevTools MCP setup guide the README links (`browser-loop-guide`) | `advanced/mcp-servers/chrome-devtools/README.md` exists, so the README's "Set up Chrome DevTools MCP" link resolves; it gives a `claude mcp add` command for chrome-devtools-mcp whose flags match `claude mcp add --help` and the upstream client guide, and one worked loop (the prompt, the screenshot step, the fix) that names the `mcp-integrations:browser-devtools-mcp` skill | repo | Map: Chrome DevTools MCP, OneRedOak design review. Matrix: Checks the rendered page in a browser (Us P). X: gmchande, AnandChowdhary, marcospereeira, shao__meng | high |
| 2 | Package the root .claude UI commands and synthesis-master as a plugin (`ui-commands-plugin`) | A new `plugins/<name>/` holds ui-modern, ui-critique, ui-responsive, ui-review, ui-synth and the synthesis-master agent, each with a routing description; `claude plugin validate --strict plugins/<name>` passes; after a clean-config install, `claude plugin details <name>@libreuiux` lists all six; the root `.claude/` files stay where they are; `advanced/slash-commands/README.md` exists and documents both install paths | repo | Map: Product surfaces (root `.claude/` in no plugin). Matrix: Design critique command, Claude Code plugin install. X: claude_code (critique and audit commands are what people reach for) | high |
| 3 | Check relative Markdown links in CI (`link-check-ci`) | `.github/workflows/validate.yml` has a step that fails when a tracked `.md` file links a repo path that does not exist; today's missing targets sit in a committed allowlist the step reads; a test commit that adds a new broken link fails the step, and the step passes on the PR head | repo | Map: Product, known gaps on main (48 links to missing targets across 6 docs, 4 of them in README.md). Matrix: Learning path for people | high |
| 4 | Write the two case studies the README promises (`case-studies`) | `intermediate/examples/saas-dashboard/README.md` and `intermediate/examples/ecommerce-product/README.md` exist, so both "See full case study" links resolve; each shows the exact prompts, the template or design-system file it started from, and before and after code or screenshots a reader can reproduce with the plugins it names | repo | Matrix: Learning path for people. X: michaelbrowk (every build looked the same; a before and after shows the fix). Map: Product, known gaps on main | medium |
| 5 | Port the upstream ui-design plugin with credit (`upstream-ui-design`) | `plugins/ui-design/` passes `claude plugin validate --strict`; `.claude-plugin/marketplace.json` lists it with Seth Hobson as author and MIT; NOTICE.md and the README plugin list include it; after a clean-config install, `claude plugin details ui-design@libreuiux` lists agents accessibility-expert, design-system-architect and ui-designer | repo | Map: wshobson/agents (ui-design 1.0.5 is upstream, not here). Matrix: Design system and tokens, Design critique command | medium |
| 6 | Bring upstream's accessibility skills into accessibility-compliance (`a11y-skills-sync`) | After a clean-config install, `claude plugin details accessibility-compliance@libreuiux` lists skills `wcag-audit-patterns` and `screen-reader-testing`; the plugin.json version is raised; `claude plugin validate --strict plugins/accessibility-compliance` passes; NOTICE.md notes the sync | repo | Map: wshobson/agents (upstream 1.2.3 ships both skills, ours 1.2.0 ships none), Accessibility Agents. Matrix: Accessibility audit (WCAG). X: tayarndt | medium |
| 7 | Build a design-to-code plugin for tokens and responsive layouts (`design-to-code`) | A new `plugins/<name>/` has an agent and a skill whose descriptions say when to use them ("Use this agent when", "Use when"); `claude plugin validate --strict` passes on it; the marketplace lists it; its README gives one prompt (for example "turn these Figma variables into Tailwind tokens") and the agent or skill that answers it; it links design-mastery and frontend-mobile-development instead of repeating them | repo | People: jburnerr fork commit 82b7de3 (Design system and tokens). Map: UI UX Pro Max, Impeccable (`extract`, DESIGN.md), Google Stitch skills. X: ihteshamali, om_patel5, suna_gaku | medium |
| 8 | Document LibreUIUX skills in Cursor, Codex and Gemini CLI (`other-harnesses`) | README gains an "Other agents" section with an install command for Cursor, Codex or Gemini CLI that the contributor ran (output pasted in the PR), and says which parts carry over (skills) and which do not (agents, commands, hooks) | repo | Matrix: Other harnesses (Us N; wshobson/agents, UI UX Pro Max, Impeccable, Hallmark, Accessibility Agents Y). X: abduzeedo, DanKornas | medium |

## Explicitly not stocked (and why)

- Merging the jburnerr fork branches as they stand: nobody has opened a pull request from them. Atom 7 is open to anyone who wants to build that plugin, the fork's owner included.
- A root `.mcp.json` for the 21st MCP (the fork's second branch): a root MCP config would apply to everyone who opens the repo, and the server needs a 21st.dev account and API key.
- A deterministic UI detector like Impeccable's 61 rules: large, and `libreuiux-hooks` already runs pattern checks after UI edits. Restock if routing-miss or feedback issues ask for it.
- Eval suites for the other original plugins: waits for design-mastery's eval baseline, which its own repo's pantry stocks first.
</content>
</invoke>
