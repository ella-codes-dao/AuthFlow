---
layout: default
title: Grant Draft
nav_order: 3
---

# AuthFlow: AuthFlow is an Identity & Access Management (IAM) system secured by the Flow Blockchain

## Grant category

Please select one or more of:

- [x] Open source maintenance
- [x] Developer tools / services
- [ ] Educational material

## Description

AuthFlow is an on-chain Identity & Access Management system and a replacement for services like Amazon’s AWS IAM or Microsoft’s Azure Active Directory, secured by the Flow Blockchain. Working in partnership with Emerald City DAO, EmeraldID will be updated to be the sole public Identity Provider for AuthFlow.

### Problem statement

Current blockchain-based authentication methods typically only allow a developer to confirm who a user is and has to utilize other Web2 authentication methods and services (ex. Auth0, Okta)  to do anything beyond smart contract interactions. As we move into a Web3 world there are still many use cases that require secure access to Web2 technologies. Such as accessing simple things like role-based access control to an app’s functions.

#### How it Works *Today*

As a developer creating an application, you want to provide secure access to your app. You allow users to log in using their Web3 Wallets, in the case of the Flow blockchain this is multistep process the provdies you with a user identifier (Flow address) proving ownership of their on-chain account. This process is done through the FCL account proof process which provides functionality to prove a user is in control of a Flow address. All other aspects of authentication, authorization, and session management are up to the application.

This current Web3 solution puts a heavy burdern on the DApp developer(s) requiring them to write extensive backend system to manage user access and authroized access to functionality.

### Proposed solution

AuthFlow is an on-chain Identity & Access Management system, essentially a replacement for services like Amazon’s AWS IAM or Microsoft’s Azure Active Directory. Utilizing the Flow Blockchain, AuthFlow will return control of user identification and authentication to the app developer and end-users.

Each app will create its own AuthSystem that can be managed by multiple AuthSystemAdmins. To ensure the integrity of the Authentication System, once the contract is deployed, all keys will be removed from the account. This prevents any future modification of the contracts that change the way the system authenticates users.

AuthFlow is THE security solution for developers and end-users operating across Web2 and Web3 spaces. The functionality can be defined as an Identity Provider, password manager, merged into one. Your wallet interacts with Web2 as a password manager across all websites and also serves as your identity provider on Web2 and Web3.

#### How it Works with AuthFlow

1.	User clicks log-in on a website, it then requests a nonce from the identity provider.

2.	FCL passes nonce to wallet to complete account-proof and authn process.

3.	Account proof is passed back to identity provider for verification.

4.	If account proof and nonce are valid, the identity provider runs a Cadence script to see what roles and permissions the user has for that website.

5.	Generate 0auth 2 tokens and complet 0auth authorization workflow, completing the verification process.

#### Technical Functionality

At a high level: Identity provider resource (array of auth systems) and admin resource secured by multi-sig authentication.
- Auth systems (various grouping of users)
	- Grouping users
	- Roles: Define permissions
		- Assign permissions to roles.
*May in the future assign permissions to users 
	- Permission Controls: banned auth systems, require approval before auth system can be deposited and used, create additional admins.

User is Created —> Identity created and a sole-bound NFT is sent to your wallet.

Log into your WALLETNAME wallet —> Functionality of the wallet is essentially defined as an Identity Provider and Password Manager are essentially merged into one. The wallet interacts with Web2 as a password manager across all websites and also serves as your identity provider on the Flow Blockchain.

#### Identity Providers and how they work - real-world applications

- AuthFlow Server (open source server you host privately)
- Emerald ID (like sign in with Facebook, peripherally everywhere) *Elastic License
	- Configurable to be transparent to users about who the identity provider is (Emerald ID)
- Business Citadel (Like Emerald ID, Business Citadel is a cloud-hosted Identity Provider (and so much more) but focused on the business sector and providing secure employee access to the Web2 world. We will share more information about Business Citadel soon!)

#### Server/Client SDKs (Wrapper for interacting with the system)
  
- Server SDKs
  - Go (Golang)
  - NodeJS
- Client SDKs
  - Swift
  - JS/NodeJS

### Impact

Let's face it, getting authentication right is complicated and one screw-up can lead to costly data leaks. The AuthFlow SDKs allow you to secure both your front and backend resources with easy-to-use methods that will verify which roles/permissions the user has, as well as evaluate any access policies to ensure users only have access to authorized resources.

The server SDKs not only allow you to protect server-side resources but also allow you to stand up your own Identity Provider server that supports JWT, oAuth2.0 and SAML2.0 authentication methods.

The Client SDK is a wrapper around the FCL SDK, upon login, it verifies your roles and permissions through an AuthFlow Identity Provider and returns JWT/oAuth2 tokens for API access. The Client SDK will also allow for you to control the state of your UI based on the users roles and permissions.

## Milestones and funding

| Milestone | Deliverables   | Timeline | Risks                   | USD proposal |
| --------- | -------------- | -------- | ----------------------- | -------------- |
| 1 - Contract Completion | Smart Contract containing auth-system, auth-system admin, identity provider and identity provider admin resources. Along with needed functions for Dapps to interact with the contract. | 2 months | - Completion within timeline. | “TBD” |
| 2 - Go (Golang) Server SDK   | Go Server SDK with support for oAuth2 | 3 months  | - Completion within timeline. <br /> - Emerald Shield contract audits may require rewrites to the SDK specifications which would extended the overall project timeline. | “TBD” |
| 3 - JS Client SDK   | JS Client SDK with support for server and client-only modes | 3 months  | - Completion within timeline. <br /> - Audits of server and client SDK’s may require rewrites to the SDK specifications which would extended the overall project timeline. | “TBD” |
| 4 - AuthFlow Manager & EmeraldID upgrades. | Hosted management UI for AuthSystem Admins to manage their roles/permissions and policies without building their own UI. | 3 months  | - Team currently does not have a front-end developer to complete the front-end portion of this milestone, and intends to allocate a portion of funding to secure a front-end developer for the project. <br /> - Upgrading EmeraldID to be an AuthFlow identity provider could require rewrites to the EmeraldID contract. | “TBD” |
| 5 - Adoption & Feedback Changes | Feedback period to drive adoption and iron out issues/changes from developer feedback. | 6 months  | - Any issues, vulnerabilities discovered, or changes made from feedback could result in rewrites of all codebases | “TBD” |
| 6 - Swift Client SDK   | Swift Client SDK with support for server and client-only modes | 3 months  | - Completion within timeline. <br /> - The FCL-Swift SDK has not been completed yet and specifically does not support account proofs yet, however the FCL-Swift SDK team recieved a grant to complete the SDK with current timeline estimation showing completion prior to work required on the Swift SDK.. | “TBD” |
| 7 - NodeJS Server SDK   | NodeJS Server SDK with support for oAuth2 | 2 months  | - Completion within timeline. | “TBD” |
| 8 - SAML2.0 Support   | Adding SAML2.0 support to the Go and NodeJS Server SDKs and AuthFlow Manager | 3 months | - Completion within timeline. | “TBD” |
| 9 - Ongoing Maintenance   | Ongoing Maintenance and support for the SDKs | 1 year | - Completion within timeline. | “TBD” |

## Team

| Name | Role                | Bio | Contact         |
| ---- | ------------------- | --- | --------------- |
| Brian Pistone | Executive Team (Founder / Full-Stack Developer / Lead Engineer / Chief IT Guru) | With 2+ decades in IT/software development Brian has been succuesfully running an IT Managed Services Company since 2017. His life long mission of helping businesses grow through the better use of technology has lead to him becoming profficient in PHP, NodeJS/JS, Swift, Go, and now Cadence. | hello@eurekadao.io |
| Ashton Mercer | Executive Team (Chief Development Guru) | ... | hello@eurekadao.io |
| Jordan Roeske | Executive Team (Chief Legal Guru) | ... | hello@eurekadao.io |
| Andrew Van Dyke | Executive Team (Chief Financial Guru) | ... | hello@eurekadao.io |
| Jacob Tucker | Cadence Developer / Emerald ID Manager | Jacob (aka God) was founder of the first DAO on the Flow Blockchain (Emeralid City DAO) and needs no introduction in this space. | hello@eurekadao.io |
