# Payment Processing

> Secure payment integration with Stripe, PayPal, PCI compliance, and automated billing/subscription management.

## Overview

This plugin covers secure payment processing from integration through compliance. It includes a payment integration specialist agent and four skills addressing Stripe checkout flows, PayPal integration, PCI DSS compliance requirements, and automated billing with subscription lifecycle management. The focus is on minimizing PCI scope through tokenization while building robust, production-ready payment systems.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **payment-integration** | Payment integration specialist covering Stripe, PayPal, Square, Braintree, and Adyen with webhook handling, idempotency, PCI compliance, multi-currency support, and dispute management. |

### Skills

| Skill | Description |
|-------|-------------|
| **billing-automation** | Automated billing and subscription management including recurring invoicing, dunning workflows for failed payments, proration handling, usage-based billing, tax calculation, and revenue recognition. |
| **paypal-integration** | PayPal checkout integration with Orders API, IPN webhook handling, subscription billing plans, refund processing, and dispute resolution. |
| **pci-compliance** | PCI DSS compliance implementation covering the 12 core requirements, data minimization, tokenization, AES-256 encryption, access control, audit logging, and SAQ selection guidance. |
| **stripe-integration** | Stripe payment processing with hosted Checkout Sessions, Payment Intents for custom UI, Setup Intents, subscription creation, webhook verification, customer management, and refund handling. |

## Usage

- **Adding payments to an app**: Start with stripe-integration or paypal-integration for the payment flow, then apply pci-compliance for security hardening.
- **Subscription billing**: Combine stripe-integration (or paypal-integration) with billing-automation for recurring payments, dunning, and proration.
- **PCI audit preparation**: The pci-compliance skill walks through all 12 DSS requirements with code examples for tokenization, encryption, and access control.
- **Multi-provider strategy**: The payment-integration agent helps architect systems that support multiple payment processors with consistent interfaces.
- **Scope reduction**: Follow tokenization and hosted checkout patterns to achieve SAQ A (minimal PCI burden).

## Related Plugins

- **security-compliance** -- GDPR, HIPAA, and SOC2 compliance that complements PCI DSS requirements.
- **security-scanning** -- Dependency scanning and SAST for payment-related code.
- **multi-platform-apps** -- Frontend and mobile agents for building checkout UIs across platforms.
