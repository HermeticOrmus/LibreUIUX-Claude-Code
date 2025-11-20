---
name: Bug Report
description: Report a bug or issue with an existing subagent
title: "[BUG] "
labels: ["bug"]
body:
  - type: markdown
    attributes:
      value: |
        Thank you for reporting a bug! Please fill out this template
        to help us understand and resolve the issue.

        **Important**: This template is for technical bugs only.
        For questions, discussions, or general feedback, please use
        GitHub Discussions instead.

  - type: checkboxes
    id: preliminary-checks
    attributes:
      label: Preliminary Checks
      description: Please confirm you have completed these steps
      options:
        - label: I have read the [Code of Conduct](.github/CODE_OF_CONDUCT.md)
          required: true
        - label: >-
            I have searched existing issues to ensure this is not a duplicate
          required: true
        - label: This report contains only technical information about a bug

  - type: input
    id: subagent
    attributes:
      label: Affected Subagent
      description: Which subagent is experiencing the issue?
      placeholder: e.g., python-pro, frontend-developer, etc.
    validations:
      required: true

  - type: textarea
    id: bug-description
    attributes:
      label: Bug Description
      description: A clear and concise description of what the bug is
      placeholder: Describe the unexpected behavior...
    validations:
      required: true

  - type: textarea
    id: reproduction-steps
    attributes:
      label: Steps to Reproduce
      description: Steps to reproduce the behavior
      placeholder: |
        1. Use subagent for...
        2. Provide input...
        3. Observe output...
        4. See error...
    validations:
      required: true

  - type: textarea
    id: expected-behavior
    attributes:
      label: Expected Behavior
      description: What you expected to happen
      placeholder: The subagent should have...
    validations:
      required: true

  - type: textarea
    id: additional-context
    attributes:
      label: Additional Context
      description: Any other context, screenshots, or examples
      placeholder: Add any other context about the problem here...
