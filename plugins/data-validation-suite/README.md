# Data Validation Suite

> Secure backend coding practices for input validation, authentication, API security, and vulnerability prevention.

## Overview

The data-validation-suite plugin provides a specialized agent for writing security-first backend code. Use it when implementing input validation frameworks, building authentication systems, securing APIs, hardening database access, or fixing security vulnerabilities in backend services. It focuses on hands-on secure coding rather than high-level audits, covering OWASP Top 10 prevention, CSRF protection, and secrets management.

## Contents

### Agents

- **backend-security-coder** -- Expert in secure backend coding practices including input validation and sanitization, injection attack prevention (SQL, NoSQL, LDAP, command), authentication systems (OAuth 2.0, JWT, MFA), API security (rate limiting, CORS, request validation), database security (parameterized queries, encryption, access control), HTTP security headers, CSRF protection, SSRF prevention, and security logging. Distinct from the security-auditor agent: this one writes secure code while the auditor assesses security posture. Uses the `sonnet` model.

## Usage

Install the plugin by adding it to your Claude Code configuration:

```bash
claude plugins add data-validation-suite
```

Then use the agent via subagent delegation:

```
Task(subagent_type="data-validation-suite::backend-security-coder")
"Implement secure user authentication with JWT and refresh token rotation"
```

## Related Plugins

- **data-engineering** -- Backend architecture that complements security implementations
- **error-debugging** -- Diagnosing security-related errors and vulnerabilities
- **deployment-validation** -- Cloud security architecture and compliance
