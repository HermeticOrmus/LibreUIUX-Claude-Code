---
name: Moderation Report
description: >-
  Report inappropriate content, behavior, or Code of Conduct violations
title: "[MODERATION] "
labels: ["moderation"]
body:
  - type: markdown
    attributes:
      value: |
        **⚠️ Use this template to report violations of our Code of Conduct,
        inappropriate content, or concerning behavior.**

        All reports are taken seriously and will be reviewed by maintainers.
        False reports may result in moderation action.

        **For urgent safety concerns or severe violations, you may also use
        GitHub's built-in reporting tools.**

  - type: checkboxes
    id: preliminary-checks
    attributes:
      label: Reporting Guidelines
      description: Please confirm you understand these guidelines
      options:
        - label: I am reporting a genuine violation of the Code of Conduct
          required: true
        - label: I understand that false reports may result in moderation action
          required: true
        - label: >-
            I have attempted to resolve minor issues through direct
            communication (if applicable)
          required: false

  - type: dropdown
    id: violation-type
    attributes:
      label: Type of Violation
      description: What type of inappropriate behavior are you reporting?
      options:
        - Hate speech or discriminatory language
        - Personal attacks or harassment
        - Spam or off-topic content
        - Inappropriate or offensive content
        - Threats or intimidation
        - Doxxing or privacy violations
        - Impersonation
        - Other Code of Conduct violation
    validations:
      required: true

  - type: input
    id: location
    attributes:
      label: Location of Violation
      description: >-
        Where did this occur? (issue number, PR, comment link, etc.)
      placeholder: e.g., Issue #123, PR #456, comment in issue #789  # Location
    validations:
      required: true

  - type: input
    id: user-involved
    attributes:
      label: User(s) Involved
      description: >-
        GitHub username(s) of the person(s) involved (if known)
      placeholder: e.g., @username1, @username2

  - type: textarea
    id: description
    attributes:
      label: Description of Violation
      description: >-
        Detailed description of what happened and why it violates
        our Code of Conduct
      placeholder: Please provide specific details about the violation...
    validations:
      required: true

  - type: textarea
    id: evidence
    attributes:
      label: Evidence
      description: Any additional evidence (quotes, screenshots, etc.)
      placeholder: |
        You can include:
        - Direct quotes (use > for blockquotes)
        - Links to specific comments
        - Screenshots (drag and drop images here)
        - Timestamps of when violations occurred

  - type: textarea
    id: impact
    attributes:
      label: Impact
      description: How has this affected you or the community?
      placeholder: >-
        This behavior has made me feel... It affects the community by...

  - type: checkboxes
    id: previous-reports
    attributes:
      label: Previous Reports
      options:
        - label: This is the first time I'm reporting this user/behavior
        - label: I have reported this user/behavior before

  - type: markdown
    attributes:
      value: |
        **What happens next:**
        - Maintainers will review your report within 24-48 hours
        - We may follow up with questions if needed
        - We will take appropriate action based on our Code of Conduct
        - We will update you on the resolution when possible

        Thank you for helping maintain a respectful community.
