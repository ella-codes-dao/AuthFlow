---
layout: default
title: Grant Draft
nav_order: 3
---

# AuthFlow: AuthFlow is an Identity & Access Management (IAM) system secured by the Flow Blockchain

## Grant category

Please select one or more of:

- [ ] Open source maintenance
- [x] Developer tools / services
- [ ] Educational material

## Description

AuthFlow is an on-chain Identity & Access Management system and a replacement for services like Amazon’s AWS IAM or Microsoft’s Azure Active Directory, secured by the Flow Blockchain.

### Problem statement

Current blockchain-based authentication methods typically only allow a developer to confirm who a user is and has to utilize other Web2 authentication methods and services (ex. Auth0)  to do anything beyond smart contract interactions. As we move into a Web3 world there are still many use cases that require secure access to Web2 technologies. Such as accessing simple things like role-based access control to an app’s functions.

### Proposed solution

AuthFlow is an on-chain Identity & Access Management system, essentially a replacement for services like Amazon’s AWS IAM or Microsoft’s Azure Active Directory. Utilizing the Flow Blockchain, AuthFlow will return control of user identification and authentication to the app developer and end-users. Each app will create its own AuthSystem that can be managed by multiple AuthSystemAdmins. To ensure the integrity of the Authentication System, once the contract is deployed all keys will be removed from the account preventing any future modification of the contracts that change the way the system authenticates users.

AuthFlow is THE security solution for developers and end-users operating across Web3 and Web2 spaces. The functionality can be defined as an Identity Provider, password manager, and payment method manager merged into one. Your wallet interacts with Web2 as a password/payment method manager across all websites and also serves as your identity provider on the Flow Blockchain.

How it Works

As a developer creating an application, you want to provide secure access to your app.

Identifier through Flow address proving ownership of their on-chain account.

FCL account proof provides functionality to prove a user is in control of a Flow address. All other aspects of authentication, authorization, and session management are up to the application.
	What is a proof?
	In Web2 terms, a proof is when someone on their computer accesses a website and attempts to log in, the website then requests a nonce (a random or semi-random number that is generated for a specific use from the server, in this case to login) and is returned a nonce which is then stored on the website as a user object with account proof inside.
	In Web3 terms, someone at their computer would interact with a website by selecting their wallet (typically as a browser extension) and confirming. The website then sends the wallets’ account proof to the server/backend where it checks for the existence of a nonce, if yes then delete it, and if not then it is not valid. If a nonce is present, the server then checks the account proof with FCL (Flow Client Library “A package used to interact with user wallets and the Flow blockchain. When using FCL for authentication, dapps can support all FCL-compatible wallets on Flow and their users without any custom integrations or changes needed to the dapp code”), FCL returns a confirmation to the website in turn giving access to the user.
This current Web3 solution lacks protection due to the user’s ability to push artificial data to be verified. AuthFlow solves this problem by independently generating and sending an immutable nonce based on your specific wallet to the server to then be verified by AuthFlow through FCL. Since AuthFlow independently/securely creates and transmits a nonce, only AuthFlow can receive and confirm its validity. This creates a closed loop system that protects its users and developers, immutable by anyone, even the developers.

Technical Functionality
The contract is deployed

At the top level: Identity provider resource (array of auth systems) and admin resource secured by multi-sig authentication.
- Auth systems (various grouping of users)
	- Grouping users
	- Roles: Define permissions
		- Assign permissions to roles.
*May in the future assign permissions to users 
	- Permission Controls: banned auth systems, require approval before auth system can be deposited and used, create additional admins.

User is Created —> Identity created and a sole-bound NFT is sent to your wallet.

Log into your WALLETNAME wallet —> Functionality of the wallet is essentially defined as an Identity Provider and Password Manager are essentially merged into one. The wallet interacts with Web2 as a password manager across all websites and also serves as your identity provider on the Flow Blockchain.

Identity Providers and how they work - real-world applications

- AuthFlow Server (open source server you host privately)
- Emerald ID (like sign in with Facebook, peripherally everywhere) *Elastic License
	- Configurable to be transparent to users about who the identity provider is (Emerald ID)
- Business Citadel (Like Emerald ID, Business Citadel is a cloud-hosted Identity Provider (and so much more) but focused on the business sector and providing secure employee access to the Web2 world. We will share more information about Business Citadel soon!)


- Server SDKs
  - Go (Golang)
  - NodeJS
- Client SDKs
  - Go (Golang)
  - JS
  - Swift

### Impact

Let's face it, getting authentication right is complicated and one screw-up can lead to costly data leaks. The AuthFlow SDKs allow you to secure both your front and backend resources with easy-to-use methods that will verify which roles/permissions the user has, as well as evaluate any access policies to ensure users only have access to authorized resources.

The server SDKs not only allow you to protect server-side resources but also allow you to stand up your own Identity Provider server that supports oAuth2.0 and SAML2.0 authentication methods.

The Client SDK is a wrapper around the FCL SDK, upon login, it verifies your roles and permissions through an AuthFlow Server and returns JWT/oAuth2 tokens for API access. If you do not need to protect server-side resources or usage for an Identity Provider server you can use the Client SDKs without a server as well. When in client-only mode the client SDK will verify the user's roles/permissions upon login and provide a signed/verifiable security token to secure your front end. In either mode, you can use the client SDK to verify the user's login status and roles/permissions.

## Milestones and funding

| Milestone | Deliverables   | Timeline | Risks                   | USD proposal |
| --------- | -------------- | -------- | ----------------------- | -------------- |
| 1 - Contract Completion | Smart Contract | 1 month |  | “TBD” |
| 2 - Go (Golang) Server SDK   | Go Server SDK with support for oAuth2 | 3 months  | Contracts and transactions will need to be audited before we can complete the SDK specifications. | “TBD” |
| 3 - JS Client SDK   | JS Client SDK with support for server and client-only modes | 3 months  | - | “TBD” |
| 4 - AuthFlow Manager | Hosted management UI for AuthSystem Admins to manage their roles/permissions and policies without building their own UI. | 3 months  | - | “TBD” |
| 5 - Adoption & Feedback Changes | Feedback period to drive adoption and iron out issues/changes from developer feedback. | 6 months  | - | “TBD” |
| 6 - Swift Client SDK   | Swift Client SDK with support for server and client-only modes | 3 months  | The FCL-Swift SDK has not been completed yet. | “TBD” |
| 7 - Go Client SDK   | Go (Golang) Client SDK with support for server and client-only modes | 3 months  | - | “TBD” |
| 8 - NodeJS Server SDK   | NodeJS Server SDK with support for oAuth2 | 2 months  | - | “TBD” |
| 9 - SAML2.0 Support   | Adding SAML2.0 support to the Go and NodeJS Server SDKs and AuthFlow Manager | 3 months |  | “TBD” |
| 10 - Ongoing Maintenance   | Ongoing Maintenance and support for the SDKs | 1 year |  | “TBD” |

## Team

| Name | Role                | Bio | Contact         |
| ---- | ------------------- | --- | --------------- |
| Brian Pistone | Full-Stack Engineer/Founder | ... | dev@boiseitguru.com |
| Ashton Mercer | Executive Team/Marketing | ... | hello@eurekadao.io |
