# HR & Legal Compliance

> Compliance-aware HR operations and legal document generation for hiring, onboarding, policies, performance management, and regulatory texts.

## Overview

This plugin provides two complementary agents for human resources and legal documentation needs. The HR agent delivers structured, bias-mitigated templates for hiring, onboarding, PTO policies, performance reviews, and employee relations across multiple jurisdictions. The legal agent drafts privacy policies, terms of service, and compliance documentation for technology products. Use these agents when creating job descriptions, interview kits, employee policies, privacy policies, or any documentation that requires legal and regulatory awareness. Both agents include clear disclaimers that their output is not legal advice and recommend consulting qualified counsel.

## Contents

### Agents

- **hr-pro** -- Professional, compliance-first HR partner covering the full employee lifecycle. Produces structured interview kits with scoring rubrics, 30/60/90 onboarding plans, accrual-based PTO policies, competency matrices, performance improvement plans, employee relations investigation templates, and offboarding checklists. Asks for jurisdiction and company context before advising. Outputs include implementation checklists, communication drafts, and tracking metrics. Collaborates with docs-architect, legal-advisor, and security-auditor agents for cross-functional needs.

- **legal-advisor** -- Technology law specialist drafting privacy policies (GDPR, CCPA, LGPD, PIPEDA compliant), terms of service, cookie policies, data processing agreements, SaaS licensing terms, e-commerce legal requirements, and email marketing compliance documents (CAN-SPAM, CASL). Produces complete legal documents with jurisdiction-specific variations, placeholder sections for company-specific details, implementation notes for technical requirements, and compliance checklists. Always includes a disclaimer recommending review by qualified legal counsel.

### Commands

_None_

### Skills

_None_

## Usage

Both agents activate proactively when working on HR or legal documentation. They ask targeted questions about jurisdiction, company size, and constraints before generating deliverables.

```
Ask: "Create a structured interview kit and scorecard for a Senior Backend Engineer in California"
Ask: "Draft a GDPR-compliant privacy policy for a SaaS application that processes EU user data"
```

## Related Plugins

- **git-pr-workflows** -- The onboard command provides complementary technical onboarding workflows
- **full-stack-orchestration** -- Security auditor agent for privacy and compliance in technical systems
- **incident-response** -- Incident communication templates that complement HR's employee relations processes
