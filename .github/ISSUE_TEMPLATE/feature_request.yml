---
name: Feature Request
description: Suggest an improvement or new feature for existing subagents
title: "[FEATURE] "
labels: ["enhancement"]
body:
  - type: markdown
    attributes:
      value: |
        Thank you for suggesting a feature! Please provide detailed
        information to help us understand your request.

        **Note**: For new subagent proposals, please use the
        "New Subagent Proposal" template instead.

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
        - label: This is a constructive feature request for legitimate use cases
          required: true

  - type: input
    id: subagent
    attributes:
      label: Target Subagent
      description: Which subagent would this feature enhance?
      placeholder: e.g., python-pro, frontend-developer, etc.
    validations:
      required: true

  - type: textarea
    id: problem-description
    attributes:
      label: Problem Description
      description: What problem does this feature solve?
      placeholder: Currently, users need to... This is frustrating because...
    validations:
      required: true

  - type: textarea
    id: proposed-solution
    attributes:
      label: Proposed Solution
      description: Describe your preferred solution
      placeholder: I would like the subagent to be able to...
    validations:
      required: true

  - type: textarea
    id: use-cases
    attributes:
      label: Use Cases
      description: Provide specific examples of how this would be used
      placeholder: |
        1. When developing...
        2. For projects that...
        3. To help with...
    validations:
      required: true

  - type: textarea
    id: alternatives
    attributes:
      label: Alternatives Considered
      description: Other solutions you've considered
      placeholder: I also considered... but this wouldn't work because...

  - type: textarea
    id: additional-context
    attributes:
      label: Additional Context
      description: Any other relevant information
      placeholder: Add any other context, examples, or screenshots here...
