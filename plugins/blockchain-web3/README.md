# Blockchain & Web3

> Smart contract development, DeFi protocols, NFT platforms, and Web3 application architecture across multiple blockchain ecosystems.

## Overview

This plugin provides end-to-end blockchain development capabilities from smart contract coding to Web3 frontend integration. It covers Ethereum and EVM-compatible chains, Solana, Cosmos, Polkadot, and enterprise blockchains, with deep expertise in DeFi protocol mechanics, NFT standards, security auditing, and tokenomics design. Use it when building decentralized applications, implementing DeFi protocols, creating NFT platforms, designing DAO governance, or integrating blockchain functionality into enterprise systems.

## Contents

### Agents

- **blockchain-developer** -- Production-grade Web3 developer covering Solidity (proxy contracts, diamond standard, factory patterns), Rust for Solana/NEAR/Cosmos, and Vyper for formal verification. Specializes in DeFi protocols (AMMs, lending, yield farming, derivatives), NFT platforms (ERC-721/1155, marketplaces, dynamic NFTs), DAO governance, and enterprise blockchain integration. Handles Layer 2 scaling (Polygon, Arbitrum, Optimism, Base, zkSync), oracle integration (Chainlink, API3, Pyth), Web3 frontend with Wagmi/RainbowKit, infrastructure with Hardhat/Foundry, and security auditing with Slither/Mythril/Certora.

### Skills

- **defi-protocol-templates** -- Production-ready Solidity templates for common DeFi primitives: staking contracts with reward distribution, automated market makers, governance token systems, lending/borrowing protocols, and flash loan functionality. Built with OpenZeppelin libraries and ReentrancyGuard protection.

- **nft-standards** -- Implementation guides for ERC-721 and ERC-1155 token standards with proper metadata handling (on-chain and IPFS), minting strategies, marketplace integration (OpenSea-compatible), royalty standards (EIP-2981), soulbound tokens, and dynamic/evolving NFTs.

- **solidity-security** -- Smart contract security patterns and vulnerability prevention. Covers reentrancy attacks with checks-effects-interactions pattern, integer overflow protection, access control vulnerabilities, gas optimization while maintaining security, and preparation for professional audits.

- **web3-testing** -- Comprehensive smart contract testing with Hardhat and Foundry. Covers unit tests, integration test suites, gas optimization testing, fuzz testing for edge cases, mainnet forking for realistic scenarios, automated coverage reporting, and Etherscan contract verification.

## Supported Ecosystems

The blockchain-developer agent works across multiple blockchain ecosystems:

- **Ethereum and EVM-compatible chains** -- Mainnet development with Web3.js, Ethers.js, and Viem. Layer 2 solutions including Polygon, Arbitrum, Optimism, Base, and zkSync. EVM-compatible chains: BSC, Avalanche, Fantom. EIP implementations: ERC-20, ERC-721, ERC-1155, ERC-4337 (account abstraction).
- **Alternative ecosystems** -- Solana development with Anchor framework and Rust, Cosmos SDK for custom chain development, Polkadot parachain development with Substrate, NEAR Protocol with JavaScript SDK, Cardano Plutus with Haskell, and Algorand PyTeal.
- **Enterprise blockchain** -- Hyperledger Fabric for permissioned networks, supply chain tracking, digital identity with KYC/AML compliance, asset tokenization (real estate, securities), and CBDC integration patterns.
- **Infrastructure** -- Local development with Hardhat and Foundry, blockchain indexing with The Graph Protocol, RPC node management, IPFS deployment, and multi-chain deployment automation.
- **Oracle integration** -- Chainlink price feeds, VRF (verifiable randomness), and Functions (off-chain computation). Also supports API3 first-party oracles, Band Protocol, and Pyth Network price feeds. Includes MEV protection and front-running prevention patterns.

## Usage

```bash
claude plugin install blockchain-web3
```

Example workflows:

```
@blockchain-developer Build a production-ready DeFi lending protocol with liquidation mechanisms
@blockchain-developer Implement a cross-chain NFT marketplace with royalty distribution
@blockchain-developer Design a DAO governance system with token-weighted voting and proposal execution
@blockchain-developer Create a multi-signature treasury management system with time-locked transactions
@blockchain-developer Implement a blockchain voting system with zero-knowledge privacy preservation
```

The skills provide code templates you can reference directly:

```
Use the defi-protocol-templates skill to scaffold a staking contract with reward distribution
Use the nft-standards skill to implement ERC-721 with royalties and marketplace integration
Use the solidity-security skill to audit this contract for reentrancy vulnerabilities
Use the web3-testing skill to set up Hardhat tests with mainnet forking
```

## Related Plugins

- **backend-api-security** -- Security patterns for the off-chain backend services that Web3 applications rely on.
- **api-scaffolding** -- Backend framework agents for building the off-chain API layer of decentralized applications.
- **business-analytics** -- Business analysis for tokenomics modeling, market sizing, and protocol economics.
