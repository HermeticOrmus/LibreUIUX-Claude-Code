# LibreUIUX Plugins Installation Guide

> How to install and manage Claude Code plugins from this collection.

---

## Quick Start

### Install a Single Plugin

```bash
# Navigate to your Claude settings directory
cd ~/.claude

# Create commands directory if it doesn't exist
mkdir -p commands

# Symlink a single plugin
ln -s ~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins/python-development ~/.claude/commands/python-development
```

### Verify Installation

```bash
# Check symlink was created
ls -la ~/.claude/commands/

# Test in Claude Code
claude
# Then type: @python-pro (should autocomplete if agent is found)
```

---

## Installation Methods

### Method 1: Individual Plugin Installation

For targeted installations, symlink specific plugins:

```bash
# Single plugin
ln -s /path/to/LibreUIUX-Claude-Code/plugins/PLUGIN_NAME ~/.claude/commands/PLUGIN_NAME

# Example: Install python-development
ln -s ~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins/python-development ~/.claude/commands/python-development
```

### Method 2: Bundle Installation

Install a curated bundle of related plugins:

```bash
#!/bin/bash
# install-bundle.sh

PLUGINS_SOURCE=~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins
CLAUDE_COMMANDS=~/.claude/commands

# Web Developer Bundle
WEB_BUNDLE=(
    "javascript-typescript"
    "python-development"
    "backend-development"
    "frontend-mobile-development"
    "developer-essentials"
    "git-pr-workflows"
    "unit-testing"
)

for plugin in "${WEB_BUNDLE[@]}"; do
    ln -sf "$PLUGINS_SOURCE/$plugin" "$CLAUDE_COMMANDS/$plugin"
    echo "Installed: $plugin"
done
```

### Method 3: Install All Plugins

```bash
#!/bin/bash
# install-all-plugins.sh

PLUGINS_SOURCE=~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins
CLAUDE_COMMANDS=~/.claude/commands

# Create commands directory
mkdir -p "$CLAUDE_COMMANDS"

# Link all plugins
for plugin in "$PLUGINS_SOURCE"/*/; do
    plugin_name=$(basename "$plugin")
    # Skip non-plugin files
    if [[ "$plugin_name" == "CATALOG.md" ]] || [[ "$plugin_name" == "INSTALLATION.md" ]]; then
        continue
    fi
    ln -sf "$PLUGINS_SOURCE/$plugin_name" "$CLAUDE_COMMANDS/$plugin_name"
    echo "Installed: $plugin_name"
done

echo "Done! Installed $(ls -d "$CLAUDE_COMMANDS"/*/ | wc -l) plugins"
```

---

## Bundle Installation Scripts

### Web Developer Bundle

```bash
#!/bin/bash
# bundles/web-developer.sh

PLUGINS_SOURCE=${PLUGINS_SOURCE:-~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins}
CLAUDE_COMMANDS=~/.claude/commands

mkdir -p "$CLAUDE_COMMANDS"

PLUGINS=(
    "javascript-typescript"
    "python-development"
    "backend-development"
    "frontend-mobile-development"
    "developer-essentials"
    "git-pr-workflows"
    "unit-testing"
)

echo "Installing Web Developer Bundle..."
for plugin in "${PLUGINS[@]}"; do
    if [[ -d "$PLUGINS_SOURCE/$plugin" ]]; then
        ln -sf "$PLUGINS_SOURCE/$plugin" "$CLAUDE_COMMANDS/$plugin"
        echo "  + $plugin"
    else
        echo "  ! $plugin not found"
    fi
done
echo "Done!"
```

### DevOps Engineer Bundle

```bash
#!/bin/bash
# bundles/devops-engineer.sh

PLUGINS_SOURCE=${PLUGINS_SOURCE:-~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins}
CLAUDE_COMMANDS=~/.claude/commands

mkdir -p "$CLAUDE_COMMANDS"

PLUGINS=(
    "cloud-infrastructure"
    "kubernetes-operations"
    "cicd-automation"
    "observability-monitoring"
    "incident-response"
    "deployment-validation"
    "security-scanning"
)

echo "Installing DevOps Engineer Bundle..."
for plugin in "${PLUGINS[@]}"; do
    if [[ -d "$PLUGINS_SOURCE/$plugin" ]]; then
        ln -sf "$PLUGINS_SOURCE/$plugin" "$CLAUDE_COMMANDS/$plugin"
        echo "  + $plugin"
    else
        echo "  ! $plugin not found"
    fi
done
echo "Done!"
```

### Security Specialist Bundle

```bash
#!/bin/bash
# bundles/security-specialist.sh

PLUGINS_SOURCE=${PLUGINS_SOURCE:-~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins}
CLAUDE_COMMANDS=~/.claude/commands

mkdir -p "$CLAUDE_COMMANDS"

PLUGINS=(
    "security-compliance"
    "security-scanning"
    "backend-api-security"
    "frontend-mobile-security"
    "payment-processing"
)

echo "Installing Security Specialist Bundle..."
for plugin in "${PLUGINS[@]}"; do
    if [[ -d "$PLUGINS_SOURCE/$plugin" ]]; then
        ln -sf "$PLUGINS_SOURCE/$plugin" "$CLAUDE_COMMANDS/$plugin"
        echo "  + $plugin"
    else
        echo "  ! $plugin not found"
    fi
done
echo "Done!"
```

### AI/ML Developer Bundle

```bash
#!/bin/bash
# bundles/ai-ml-developer.sh

PLUGINS_SOURCE=${PLUGINS_SOURCE:-~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins}
CLAUDE_COMMANDS=~/.claude/commands

mkdir -p "$CLAUDE_COMMANDS"

PLUGINS=(
    "llm-application-dev"
    "machine-learning-ops"
    "python-development"
    "data-engineering"
    "vibe-coding"
)

echo "Installing AI/ML Developer Bundle..."
for plugin in "${PLUGINS[@]}"; do
    if [[ -d "$PLUGINS_SOURCE/$plugin" ]]; then
        ln -sf "$PLUGINS_SOURCE/$plugin" "$CLAUDE_COMMANDS/$plugin"
        echo "  + $plugin"
    else
        echo "  ! $plugin not found"
    fi
done
echo "Done!"
```

### UI/UX Designer Bundle

```bash
#!/bin/bash
# bundles/ui-ux-designer.sh

PLUGINS_SOURCE=${PLUGINS_SOURCE:-~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins}
CLAUDE_COMMANDS=~/.claude/commands

mkdir -p "$CLAUDE_COMMANDS"

PLUGINS=(
    "design-mastery"
    "archetypal-alchemy"
    "accessibility-compliance"
    "frontend-mobile-development"
)

echo "Installing UI/UX Designer Bundle..."
for plugin in "${PLUGINS[@]}"; do
    if [[ -d "$PLUGINS_SOURCE/$plugin" ]]; then
        ln -sf "$PLUGINS_SOURCE/$plugin" "$CLAUDE_COMMANDS/$plugin"
        echo "  + $plugin"
    else
        echo "  ! $plugin not found"
    fi
done
echo "Done!"
```

---

## Plugin Structure

Each plugin follows this structure:

```
plugin-name/
├── README.md           # Plugin documentation (optional)
├── agents/             # Specialist agent definitions
│   └── agent-name.md   # Agent persona and capabilities
├── commands/           # Slash commands
│   └── command-name.md # Command definition
└── skills/             # Knowledge base
    └── skill-name/
        ├── SKILL.md    # Skill definition
        ├── assets/     # Templates, examples
        └── references/ # Reference documentation
```

### Component Types

| Component | Purpose | How Claude Uses It |
|-----------|---------|-------------------|
| **Agents** | Specialist personas | `@agent-name` invokes the agent |
| **Commands** | Slash command workflows | `/command-name` runs the workflow |
| **Skills** | Deep knowledge reference | Auto-loaded for context |

---

## Managing Installations

### List Installed Plugins

```bash
ls -la ~/.claude/commands/
```

### Remove a Plugin

```bash
rm ~/.claude/commands/plugin-name
```

### Update All Plugins

Since plugins are symlinked, pulling the repo updates all plugins:

```bash
cd ~/projects/01-ACTIVE/LibreUIUX-Claude-Code
git pull
# All symlinked plugins now updated
```

### Check for Broken Symlinks

```bash
find ~/.claude/commands -type l -xtype l
```

---

## Troubleshooting

### Plugin Not Found

1. Check symlink exists:
```bash
ls -la ~/.claude/commands/plugin-name
```

2. Check symlink points to valid directory:
```bash
readlink -f ~/.claude/commands/plugin-name
```

3. Recreate symlink:
```bash
rm ~/.claude/commands/plugin-name
ln -s /full/path/to/plugins/plugin-name ~/.claude/commands/plugin-name
```

### Agent Not Responding

1. Verify agent file exists:
```bash
ls ~/.claude/commands/plugin-name/agents/
```

2. Check agent file has correct frontmatter:
```yaml
---
name: agent-name
description: Agent description
model: sonnet
---
```

### Command Not Working

1. Verify command file exists:
```bash
ls ~/.claude/commands/plugin-name/commands/
```

2. Check command syntax in the .md file

---

## Best Practices

### 1. Start Small

Install only what you need. Too many plugins can slow context loading:

```bash
# Good: Install focused bundle
./bundles/web-developer.sh

# Avoid: Installing everything at once
./install-all-plugins.sh  # Only if you truly need everything
```

### 2. Use Absolute Paths

Always use absolute paths in symlinks:

```bash
# Good
ln -s ~/projects/01-ACTIVE/LibreUIUX-Claude-Code/plugins/python-development ~/.claude/commands/python-development

# Avoid
ln -s ../plugins/python-development ~/.claude/commands/python-development
```

### 3. Keep Plugins Updated

```bash
# Update plugins regularly
cd ~/projects/01-ACTIVE/LibreUIUX-Claude-Code
git pull
```

### 4. Test After Installation

```bash
# Start Claude Code and test
claude

# Test agent
@python-pro help

# Test command
/debug-assist
```

---

## Directory Structure Reference

```
~/.claude/
├── CLAUDE.md           # Your personal Claude instructions
├── commands/           # Symlinked plugins go here
│   ├── python-development -> ~/projects/.../plugins/python-development
│   ├── javascript-typescript -> ~/projects/.../plugins/javascript-typescript
│   └── ...
└── docs/               # Personal documentation
```

---

## Available Bundles Summary

| Bundle | Plugins | Skills | Use Case |
|--------|:-------:|:------:|----------|
| Web Developer | 7 | 22 | Frontend/backend web dev |
| DevOps Engineer | 7 | 17 | Infrastructure & deployment |
| Security Specialist | 5 | 5 | Security audits & compliance |
| AI/ML Developer | 5 | 10 | AI-powered applications |
| UI/UX Designer | 4 | 7 | Design-focused development |
| Quality & Testing | 7 | 8 | Testing & code quality |

---

## Next Steps

1. **Choose a bundle** based on your work focus
2. **Run the installation script** for that bundle
3. **Verify installation** with `ls ~/.claude/commands/`
4. **Test in Claude Code** by invoking an agent or command
5. **Check CATALOG.md** for detailed plugin information

---

*Installation guide for LibreUIUX-Claude-Code plugin collection*
