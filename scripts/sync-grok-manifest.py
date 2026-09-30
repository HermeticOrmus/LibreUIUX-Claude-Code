#!/usr/bin/env python3
"""Write .grok-plugin/marketplace.json from .claude-plugin/marketplace.json.

One source, two tools: the Claude Code marketplace manifest is the source of
truth, and Grok Build reads the same plugin folders (it reads
.claude-plugin/plugin.json natively). Grok only looks for marketplaces at
.grok-plugin/marketplace.json, so this script derives that file.

A repo whose only plugin is the repo root (source "./") needs no Grok
marketplace: `grok plugin install HermeticOrmus/<repo>` installs it directly,
and Grok cannot list a repo's own root as a marketplace entry. For those repos
the script writes nothing and removes a stale generated file.

Usage:
  python3 scripts/sync-grok-manifest.py          write or refresh the file
  python3 scripts/sync-grok-manifest.py --check  exit 1 if the file is missing or stale
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CLAUDE = ROOT / ".claude-plugin" / "marketplace.json"
GROK = ROOT / ".grok-plugin" / "marketplace.json"
KEYS = ("name", "description", "version", "category", "keywords")


def is_root(source) -> bool:
    return isinstance(source, str) and source.strip().rstrip("/") in ("", ".")


def build() -> dict | None:
    mk = json.loads(CLAUDE.read_text(encoding="utf-8"))
    plugins = [p for p in mk.get("plugins", []) if not is_root(p.get("source", ""))]
    if not plugins:
        return None
    out = {"name": mk["name"], "owner": mk.get("owner", {})}
    if mk.get("metadata"):
        out["metadata"] = mk["metadata"]
    out["plugins"] = []
    for p in plugins:
        entry = {k: p[k] for k in KEYS if k in p}
        entry.setdefault("category", "developer-tools")
        entry["source"] = p["source"]
        out["plugins"].append(entry)
    return out


def render(data: dict) -> str:
    return json.dumps(data, indent=2, ensure_ascii=False) + "\n"


def main() -> int:
    check = "--check" in sys.argv[1:]
    data = build()
    if data is None:
        if GROK.exists():
            if check:
                print("stale: this repo is a single root plugin; .grok-plugin/marketplace.json should not exist")
                return 1
            GROK.unlink()
        print("single root plugin: install with `grok plugin install <owner>/<repo>`; no Grok marketplace needed")
        return 0
    want = render(data)
    have = GROK.read_text(encoding="utf-8") if GROK.exists() else None
    if check:
        if have != want:
            print("stale: run python3 scripts/sync-grok-manifest.py and commit .grok-plugin/marketplace.json")
            return 1
        print("grok manifest in sync: %d plugins" % len(data["plugins"]))
        return 0
    GROK.parent.mkdir(parents=True, exist_ok=True)
    if have != want:
        GROK.write_text(want, encoding="utf-8")
    print("wrote .grok-plugin/marketplace.json: %d plugins" % len(data["plugins"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
