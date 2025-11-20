---
name: New Subagent Proposal
description: Propose a new specialized subagent for the collection
title: "[NEW AGENT] "
labels: ["new-subagent"]
body:
  - type: markdown
    attributes:
      value: |
        Thank you for proposing a new subagent! Quality subagents
        require careful design and clear specialization.

        **Important**: Only propose subagents for legitimate,
        constructive use cases. Proposals for malicious or harmful
        capabilities will be rejected and may result in moderation action.

  - type: checkboxes
    id: preliminary-checks
    attributes:
      label: Preliminary Checks
      description: Please confirm you have completed these steps
      options:
        - label: I have read the [Code of Conduct](.github/CODE_OF_CONDUCT.md)
          required: true
        - label: >-
            I have reviewed existing subagents to ensure this is not a duplicate
          required: true
        - label: This proposal is for legitimate, constructive use cases only
          required: true
        - label: I have domain expertise in the proposed area
          required: true

  - type: input
    id: agent-name
    attributes:
      label: Proposed Agent Name
      description: What should this subagent be called?
      placeholder: e.g., blockchain-developer, devops-security, etc.
    validations:
      required: true

  - type: textarea
    id: domain-expertise
    attributes:
      label: Domain Expertise
      description: >-
        What specific domain or technology does this agent specialize in?
      placeholder: This agent specializes in...
    validations:
      required: true

  - type: textarea
    id: unique-value
    attributes:
      label: Unique Value Proposition
      description: >-
        How is this different from existing subagents?
        What unique capabilities does it provide?
      placeholder: Unlike existing agents, this one would...
    validations:
      required: true

  - type: textarea
    id: use-cases
    attributes:
      label: Primary Use Cases
      description: What specific tasks would this agent handle?
      placeholder: |
        1. Design and implement...
        2. Optimize performance for...
        3. Debug issues related to...
        4. Review code for...
    validations:
      required: true

  - type: textarea
    id: tools-capabilities
    attributes:
      label: Required Tools & Capabilities
      description: What tools and capabilities would this agent need?
      placeholder: |
        - File manipulation for...
        - Bash commands for...
        - Specialized knowledge of...
        - Integration with...
    validations:
      required: true

  - type: textarea
    id: examples
    attributes:
      label: Example Interactions
      description: >-
        Provide 2-3 example interactions showing how users would
        work with this agent
      placeholder: |
        **Example 1:**
        User: "Implement a smart contract for..."
        Agent response: "I'll create a secure smart contract with..."

        **Example 2:**
        User: "Optimize this blockchain query..."
        Agent response: "Let me analyze the query and suggest optimizations..."
    validations:
      required: true

  - type: textarea
    id: expertise-evidence
    attributes:
      label: Your Expertise
      description: >-
        What experience or credentials do you have in this domain?
      placeholder: >-
        I have X years of experience in... I've worked with...
        I hold certifications in...
    validations:
      required: true

  - type: textarea
    id: additional-context
    attributes:
      label: Additional Context
      description: >-
        Any other relevant information, resources, or considerations
      placeholder: >-
        Relevant documentation, similar tools, potential challenges...
