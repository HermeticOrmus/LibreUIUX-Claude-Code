# People mine: LibreUIUX-Claude-Code

What people who use the product said in its own public places: issues, issue comments, discussions, pull requests, and forks that changed something. Optional third pantry source; a product with no outside voices yet leaves the Hits table empty and says so.

## How this fills

1. List the product's own repos (the kitchen law names them).
2. Read what people outside the maintainers wrote since the last run: issues (the `feedback` label first), issue comments, discussions and their comments, pull requests, and forks with commits ahead of the default branch.
3. One row per voice. Quote a short snippet and link the exact issue, comment, discussion, PR or commit. Say whether they gave credit consent when the source has a consent box.
4. Tag each row with the capability it is about, in the same words as the competitor map's matrix, so the queue can cite it next to competitor and X rows.
5. Never count stars as feedback, never infer sentiment the person did not state, never paraphrase a number. Maintainers' own issues are not voices.
6. Save as `YYYY-MM-DD-people-mine.md` beside the other dated files (keep this TEMPLATE).

## Hits

| Repo | Kind (bug/feature/question/praise/contribution) | Snippet | Link | Theme (matrix capability) | Credit consent |
|------|--------------------------------------------------|---------|------|---------------------------|----------------|
| jburnerr/LibreUIUX-Claude-Code (fork), branch `claude/frontend-design-plugins-maag8u` | contribution | "Add frontend-design plugin: tokens, responsive patterns, design-to-code" ... "Bridges design-mastery (principles) and frontend-mobile-development (implementation) with the seam between them" | https://github.com/jburnerr/LibreUIUX-Claude-Code/commit/82b7de30b90f082efa3b820efca3b8cefe5fa74c | Design system and tokens | not given (a fork has no consent box; no issue or PR was opened) |
| jburnerr/LibreUIUX-Claude-Code (fork), branch `claude/mcp-server-install-m8c50w` | contribution | "Add 21st.dev MCP server config for Claude" | https://github.com/jburnerr/LibreUIUX-Claude-Code/commit/14b0a3fec8ae3ceebea24bc3e40f8e167ef604ac | Component library integration | not given (a fork has no consent box; no issue or PR was opened) |

Both commits are one commit ahead of the fork point and 17 behind `main` (GitHub compare API, 2026-09-30). The first adds a `plugins/frontend-design/` folder (one agent, two commands, three skills) and a marketplace entry; the second adds a root `.mcp.json`. They are evidence of what someone wanted, not code to merge: nothing from them is copied into this pantry, and the queue atom built on the first is open to anyone, the fork's owner included.

## Read log (what we read)

- Issues and pull requests, all states (`gh api repos/HermeticOrmus/LibreUIUX-Claude-Code/issues?state=all`): #1 to #5, all opened by the maintainer (HermeticOrmus). No outside voices.
- Issue comments (`issues/comments`): one, by the maintainer on #3. No outside voices.
- Pull request review comments (`pulls/comments`): none.
- Commit comments (`repos/.../comments`): none.
- Discussions (GraphQL `repository.discussions`): enabled, 0 discussions. Categories: Announcements, General, Ideas, Polls, Q&A, Show and tell.
- `feedback` label: exists, no issues carry it.
- Forks (`repos/.../forks`): 18. Every branch of every fork compared against `main`:
  - jburnerr/LibreUIUX-Claude-Code: two branches 1 ahead (rows above); `main` 0 ahead.
  - tvp-2020/LibreUIUX-Claude-Code: branches `claude/add-command-structure-...` and `claude/improve-code-ui-ux-...` share no history with `main`; their heads (`e24aad72f7`, `dab10c46ee`) are the same commits as this repo's own branches of the same names, so they carry nothing new and are not an outside voice. `main` 0 ahead.
  - The other 16 forks: `main` only, 0 ahead.
- Stars are not counted as feedback.
</content>
</invoke>
