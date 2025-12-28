#!/bin/bash

# LibreUIUX Setup Script
# Bootstraps a project with LibreUIUX design system configuration

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
LIBREUI_VERSION="1.0.0"
REPO_URL="https://raw.githubusercontent.com/HermeticOrmus/LibreUIUX-Claude-Code/main"

echo ""
echo -e "${BLUE}╔══════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     LibreUIUX Setup - v${LIBREUI_VERSION}         ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════╝${NC}"
echo ""

# Check if we're in a project directory
if [ ! -f "package.json" ] && [ ! -f "index.html" ] && [ ! -f "README.md" ]; then
    echo -e "${YELLOW}Warning: This doesn't look like a project directory.${NC}"
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Function to download file
download_file() {
    local url=$1
    local dest=$2

    if command -v curl &> /dev/null; then
        curl -fsSL "$url" -o "$dest" 2>/dev/null
    elif command -v wget &> /dev/null; then
        wget -q "$url" -O "$dest" 2>/dev/null
    else
        echo -e "${RED}Error: curl or wget required${NC}"
        exit 1
    fi
}

# Step 1: Choose design system
echo -e "${GREEN}Step 1: Choose your design system${NC}"
echo ""
echo "  1) Modern Web App (Shadcn, Tailwind, animations)"
echo "  2) SaaS Platform (Dashboard-focused, data-dense)"
echo "  3) Mobile First (Responsive, touch-friendly)"
echo "  4) Minimal (Clean, content-focused)"
echo ""
read -p "Choose (1-4): " choice

case $choice in
    1) TEMPLATE="modern-webapp" ;;
    2) TEMPLATE="saas-platform" ;;
    3) TEMPLATE="mobile-first" ;;
    4) TEMPLATE="minimal" ;;
    *) TEMPLATE="modern-webapp" ;;
esac

echo -e "${BLUE}Selected: ${TEMPLATE}${NC}"
echo ""

# Step 2: Download CLAUDE.md
echo -e "${GREEN}Step 2: Setting up CLAUDE.md${NC}"

if [ -f "CLAUDE.md" ]; then
    echo -e "${YELLOW}CLAUDE.md already exists.${NC}"
    read -p "Overwrite? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Keeping existing CLAUDE.md"
    else
        download_file "${REPO_URL}/templates/CLAUDE.${TEMPLATE}.md" "CLAUDE.md"
        echo -e "${GREEN}✓ CLAUDE.md updated${NC}"
    fi
else
    download_file "${REPO_URL}/templates/CLAUDE.${TEMPLATE}.md" "CLAUDE.md"
    echo -e "${GREEN}✓ CLAUDE.md created${NC}"
fi

# Step 3: Create .libreui-config.yaml
echo ""
echo -e "${GREEN}Step 3: Creating configuration${NC}"

if [ ! -f ".libreui-config.yaml" ]; then
    cat > .libreui-config.yaml << 'EOF'
# LibreUIUX Configuration
# Customize your design system preferences

version: "1.0.0"

# Learning level affects prompt suggestions and documentation links
level: beginner  # beginner | intermediate | advanced

# Design system configuration
design_system:
  style: modern  # modern | minimal | bold | playful

  # Component libraries to reference
  libraries:
    primary: shadcn-ui     # shadcn-ui | radix | headless-ui | mui | chakra
    animation: motion-primitives  # motion-primitives | framer-motion | react-spring
    icons: lucide          # lucide | heroicons | phosphor | feather

  # Tailwind preset (if using Tailwind)
  tailwind:
    enabled: true
    preset: default        # default | typography | forms

# Accessibility standards
accessibility:
  level: AA               # A | AA | AAA
  screen_reader: true
  keyboard_nav: true
  color_contrast: true

# Component defaults
components:
  # Default border radius
  radius: md              # none | sm | md | lg | xl | full

  # Default animation style
  animation: subtle       # none | subtle | playful | dramatic

  # Default spacing scale base (in pixels)
  spacing_base: 4

# Personal preferences (for personalized analogies - optional)
profile:
  interests: []           # e.g., ["gaming", "cooking", "music"]
  experience: ""          # e.g., "2 years frontend development"

# Enabled modules
modules:
  design_vocabulary: true
  component_templates: true
  accessibility_checker: true
  responsive_validator: true
  animation_suggestions: true

# Output preferences
output:
  framework: react        # react | vue | svelte | html
  styling: tailwind       # tailwind | css-modules | styled-components | css
  typescript: true
EOF
    echo -e "${GREEN}✓ .libreui-config.yaml created${NC}"
else
    echo -e "${YELLOW}✓ .libreui-config.yaml already exists${NC}"
fi

# Step 4: Create .claude directory structure (optional)
echo ""
echo -e "${GREEN}Step 4: Setting up commands (optional)${NC}"
read -p "Install custom slash commands? (y/n) " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    mkdir -p .claude/commands

    # Download commands
    download_file "${REPO_URL}/.claude/commands/ui-modern.md" ".claude/commands/ui-modern.md"
    download_file "${REPO_URL}/.claude/commands/ui-critique.md" ".claude/commands/ui-critique.md"
    download_file "${REPO_URL}/.claude/commands/ui-responsive.md" ".claude/commands/ui-responsive.md"

    echo -e "${GREEN}✓ Commands installed:${NC}"
    echo "  /ui-modern - Generate modern components"
    echo "  /ui-critique - Review design quality"
    echo "  /ui-responsive - Check responsive design"
fi

# Step 5: Summary
echo ""
echo -e "${GREEN}╔══════════════════════════════════════╗${NC}"
echo -e "${GREEN}║         Setup Complete!              ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════╝${NC}"
echo ""
echo "Files created:"
echo "  • CLAUDE.md (${TEMPLATE} design system)"
echo "  • .libreui-config.yaml (configuration)"
if [ -d ".claude/commands" ]; then
    echo "  • .claude/commands/ (custom commands)"
fi
echo ""
echo -e "${BLUE}Next steps:${NC}"
echo "  1. Run 'claude' to start Claude Code"
echo "  2. Try: 'Create a modern button with hover effects'"
echo "  3. Read QUICK_START.md for more commands"
echo ""
echo -e "${YELLOW}Tip: Edit .libreui-config.yaml to customize your design system${NC}"
echo ""
