# Frontend & Mobile Security

> Hands-on security coding for client-side web applications and mobile apps, covering XSS prevention, WebView hardening, and platform-specific security patterns.

## Overview

This plugin focuses on writing secure frontend and mobile code rather than high-level auditing. It provides agents that implement XSS prevention, Content Security Policy configuration, secure DOM manipulation, WebView security, certificate pinning, biometric authentication, and platform-specific hardening. Use it when building security-sensitive UI features, reviewing client-side code for vulnerabilities, or hardening mobile applications against OWASP MASVS threats.

## Contents

### Agents

- **frontend-developer** -- The same React/Next.js expert from the frontend-mobile-development plugin, included here for security-context UI work.

- **frontend-security-coder** -- Specializes in client-side security implementation: safe DOM manipulation (textContent over innerHTML), DOMPurify integration, CSP header configuration with nonce/hash-based policies, clickjacking protection, secure redirect validation, Subresource Integrity, Trusted Types, WebAuthn/FIDO2 authentication, and Progressive Web App security patterns.

- **mobile-security-coder** -- Implements secure mobile development patterns: encrypted local storage (Keychain/Keystore), WebView security with URL allowlisting and JavaScript controls, certificate pinning, biometric authentication flows, root/jailbreak detection, code obfuscation (ProGuard/R8), deep link validation, and cross-platform security for React Native, Flutter, and Cordova.

### Commands

- **xss-scan** -- Scans frontend codebases for Cross-Site Scripting vulnerabilities using static analysis. Detects unsafe innerHTML usage, unsanitized dangerouslySetInnerHTML in React, v-html in Vue, URL injection via location assignment, and missing DOMPurify sanitization. Generates a severity-ranked report with specific fix recommendations and secure coding examples.

### Skills

_None_

## Usage

The security agents activate proactively during frontend and mobile security work. Use `frontend-security-coder` for browser-side security and `mobile-security-coder` for iOS/Android/cross-platform security. Run the `xss-scan` command against your source directory for automated vulnerability detection.

```
/xss-scan Scan the src/components directory for XSS vulnerabilities
```

## Related Plugins

- **frontend-mobile-development** -- Core frontend and mobile development (non-security focused)
- **full-stack-orchestration** -- Includes a security-auditor agent for high-level security audits and compliance
- **incident-response** -- For responding to security incidents in production
