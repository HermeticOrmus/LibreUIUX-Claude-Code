# Pantry: LibreUIUX-Claude-Code

This folder is where the next work on LibreUIUX-Claude-Code comes from, in the open. It is research, not a wish list: every row cites where it came from.

## How it works

1. **Stock.** Each run writes dated files from four sources: a competitor map (what other packs and tools in this domain do, from their public docs), an X mine (praise and complaints people posted, with links), a people mine (what users of this repo said in its issues, discussions, pull requests and forks), and a pantry queue (5 to 8 Goal atoms, each with a Done-when anyone can check).
2. **Menu.** [`MENU.md`](MENU.md) is generated from the newest queue. It orders the atoms and names exactly one as up next. Nobody edits it by hand; steering happens with the `pin` and `parked` labels on `[menu]` issues.
3. **Goal issues.** The up-next atom becomes a `[menu]` issue with its Done-when. Anyone can take it: comment that you are on it, then open a pull request that says `Closes #<issue>`.
4. **Done** means merged, released, and the Done-when holds.

Rules: never invent numbers, stars or quotes; cite the URL or leave the cell blank. A person's words are evidence, never a target, and the pantry never contacts anyone.

Want to add to it? Open a [feedback issue](https://github.com/HermeticOrmus/LibreUIUX-Claude-Code/issues/new?template=feedback.yml), or see [CONTRIBUTING.md](../CONTRIBUTING.md).

## Latest run

- Competitor map: [2026-09-30](2026-09-30-competitor-map.md)
- X mine: [2026-09-30](2026-09-30-x-mine.md)
- People mine: [2026-09-30](2026-09-30-people-mine.md)
- Pantry queue: [2026-09-30](2026-09-30-pantry-queue.md)

## Templates

`TEMPLATE-competitor-map.md`, `TEMPLATE-x-mine.md`, `TEMPLATE-people-mine.md`, `TEMPLATE-pantry-queue.md`. Copy one to a dated file; leave the templates as they are.
