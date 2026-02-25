# Backend API Security

> Secure backend architecture and hands-on security coding for API hardening, authentication, and vulnerability prevention.

## Overview

This plugin pairs a backend system architect with a security-focused coding specialist to cover both the architectural and implementation sides of backend security. The architect handles service design with built-in resilience, authentication, and observability, while the security coder focuses on writing defensive code that prevents OWASP Top 10 vulnerabilities, implements proper input validation, and configures security headers. Use it when designing secure backend systems, implementing authentication flows, hardening APIs against attack vectors, or conducting security code reviews.

## Contents

### Agents

- **backend-architect** -- Expert backend system architect for scalable, resilient API design. Covers REST/GraphQL/gRPC API patterns, microservices with Domain-Driven Design boundaries, event-driven architectures (Kafka, RabbitMQ, NATS), OAuth 2.0/JWT/mTLS authentication, rate limiting, CORS/CSRF protection, circuit breakers, distributed tracing, and caching strategies. Designs contract-first with observability and security as first-class concerns across Node.js, Python, Java, Go, C#, Ruby, and Rust frameworks.

- **backend-security-coder** -- Hands-on secure coding specialist focused on writing defensive backend code. Covers input validation with allowlist approaches, SQL/NoSQL/LDAP/command injection prevention, HTTP security headers (CSP, HSTS, X-Frame-Options), cookie security (HttpOnly, Secure, SameSite), CSRF protection with anti-CSRF tokens and double-submit cookies, database security (parameterized queries, field-level encryption, audit logging), API security (JWT handling, RBAC/ABAC, rate limiting), SSRF prevention, and secure external request handling. Distinct from a security auditor: this agent writes the secure code rather than auditing it.

## Key Security Areas

The two agents together cover the following security domains:

- **Authentication systems** -- Multi-factor authentication (TOTP, hardware tokens, biometrics), password hashing with bcrypt/Argon2, JWT with secure signing and token rotation, OAuth 2.0/2.1 with PKCE, and session management with fixation prevention and concurrent session control.
- **Authorization patterns** -- Role-based access control (RBAC) with permission hierarchies, attribute-based access control (ABAC) with policy engines, scope-based API authorization, and zero-trust service identity with least-privilege enforcement.
- **Injection prevention** -- SQL injection via parameterized queries, NoSQL injection, LDAP injection, command injection, and XML External Entity (XXE) attacks. All input validation uses allowlist approaches rather than denylists.
- **HTTP security** -- Content Security Policy with nonce strategies, HSTS headers, X-Frame-Options, X-Content-Type-Options, Referrer-Policy, strict CORS policies, and SameSite cookie enforcement.
- **Infrastructure security** -- Container security (Docker image scanning, runtime security), secrets management (HashiCorp Vault, AWS Secrets Manager), IAM roles with least privilege, network segmentation, and environment variable encryption.
- **Monitoring and compliance** -- Security event logging, SIEM integration, anomaly detection, tamper-evident audit trails, and compliance logging for SOC2, PCI DSS, and HIPAA requirements.

## Usage

```bash
claude plugin install backend-api-security
```

Example workflows:

```
@backend-architect Design authentication and authorization for a multi-service architecture
@backend-security-coder Implement secure user authentication with JWT and refresh token rotation
@backend-security-coder Review this API endpoint for injection vulnerabilities and implement proper validation
@backend-security-coder Configure CSRF protection for a cookie-based authentication system
@backend-security-coder Set up comprehensive security headers and CSP for a web application
```

## Related Plugins

- **api-scaffolding** -- Provides the framework-specific agents (FastAPI, Django, GraphQL) that implement the security patterns defined here.
- **backend-development** -- Broader backend development with architecture patterns, TDD, and workflow orchestration that complement security design.
- **api-testing-observability** -- Mock servers and documentation tools support security testing and vulnerability documentation.
