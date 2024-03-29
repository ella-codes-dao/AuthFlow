---
layout: default
title: Grant Draft
nav_order: 2
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

Current blockchain-based authentication methods typically only allow a developer to confirm who a user is and has to utilize other Web2 authentication methods and services (ex. Auth0, Okta) to do anything beyond smart contract interactions. As we move into a Web3 world there are still many use cases that require secure access to Web2 technologies. Such as accessing simple things like role-based access control to an app’s functions or a simple backend.

#### How it Works *Today*

As a developer creating an application, you want to provide secure access to your app. You allow users to log in using their Web3 Wallets, in the case of the Flow blockchain this is a multi-step process that provides you with a user identifier (Flow address) proving ownership of their on-chain account. This process is done through the FCL account proof process which provides functionality to prove a user is in control of a Flow address. All other aspects of authentication, authorization and session management are up to the application.

This current Web3 solution puts a heavy burden on the DApp developer(s) requiring them to write an extensive backend system to manage user access and authorized access to functionality.

### Proposed solution

AuthFlow is an on-chain Identity & Access Management system, essentially a replacement for services like Amazon’s AWS IAM, Microsoft’s Azure Active Directory, and Auth0. Utilizing the Flow Blockchain, AuthFlow will return control of user identification and authentication to the app developer and end-users by merging Web3 with known authentication methods like JWT and OAuth 2.0.

Each app will create its own AuthSystem with an Identity Provider that can be managed by multiple AuthSystemAdmins. To ensure the integrity of the Authentication System, once the contract is deployed, all keys will be removed from the account. This prevents any future modification of the contracts that change the way the system authenticates users.

AuthFlow is THE security solution for developers and end-users operating across Web2 and Web3 spaces. The functionality can be defined as an Identity Provider and Password Manager merged into one. Your wallet interacts with Web2 as a password manager across all websites and also serves as your identity provider on Web2 and Web3.

#### Identity Providers

- AuthFlow Server (open source server you host privately)
- Emerald ID (like sign in with Facebook, peripherally everywhere)
  - Configurable to be transparent to users about who the identity provider is (Emerald ID)
- Business Citadel (Like Emerald ID, Business Citadel is a cloud-hosted Identity Provider (and so much more) but focused on the business sector and providing secure employee access to the Web2 world. We will share more information about Business Citadel soon!)

#### Server/Client SDKs
  
- Server SDKs
  - Go (Golang)
  - NodeJS
- Client SDKs
  - Swift
  - JS/NodeJS

### Impact

Let’s face it, getting authentication right is complicated and one screw-up can lead to costly data leaks. The AuthFlow SDKs allow you to secure both your front and backend resources with easy-to-use methods that will verify which roles/permissions the user has, as well as evaluate any access policies to ensure users only have access to authorized resources.

The server SDKs not only allow you to protect server-side resources but also allow you to stand up your own Identity Provider server that supports JWT, oAuth2.0, and SAML2.0 authentication methods.

Currently, The security measures that are present in Web2 authentication offered by identity providers like Auth0, Amazon’s AWS IAM, or Microsoft’s Azure Active Directory are superior to those on Web3. Not only does AuthFlow protect its user from vulnerabilities in the Web3 space, but it will also tighten user security across Web2 sites.

AuthFlow is THE security solution for developers and end-users operating across Web2 and Web3 spaces.

## Milestones and funding

| Milestone | Deliverables   | Timeline | Risks                   | USD proposal |
| --------- | -------------- | -------- | ----------------------- | -------------- |
| 1 - Contract Completion & AuthFlow Server | Smart Contract(s) (including needed scripts/transactions) containing auth-system, auth-system admin, identity provider and identity provider admin resources. Along with the primary Identity Provider backend codebase | 4 months | - Completion within timeline. | $30,000 USD |
| 2 - Go (Golang) Server SDK   | Go Server SDK for securing backend resources with support for oAuth2 and JWT. As well as managing your auth-system | 2 months  | - Completion within timeline. <br /> - Emerald Shield contract and other audits may require rewrites to the SDK specifications which would extended the overall project timeline. | $12,500 USD |
| 3 - JS Client SDK   | JS Client SDK with support for interacting with server sdks as well as a client-only mode for dapps with no backend | 2 months  | - Completion within timeline. <br /> - Audits of server and client SDK’s may require rewrites to the SDK specifications which would extended the overall project timeline. | $12,500 USD |
| 4 - EmeraldID Identity Provider Upgrades. | Upgrade/Integrate existing EmeraldID smart contracts with AuthFlow Server, standing up a publicly available Identity Provider with a hosted management dashbaord for dapps to controls their roles and permissions.  | 2 months  | - Team currently does not have a front-end developer to complete the front-end portion of this milestone, and intends to allocate a portion of funding to secure a front-end developer for the project. <br /> - Upgrading EmeraldID to be an AuthFlow identity provider could require rewrites to the EmeraldID contract. | $15,000 USD |
| 5 - Adoption & Feedback Changes | Feedback period to drive adoption and iron out issues/changes from developer feedback. | 6 months <br /> (Paid Monthly) | - Any issues, vulnerabilities discovered, or changes made from feedback could result in rewrites of all codebases | $30,000 USD |
| 6 - Swift Client SDK   | Swift Client SDK with support for server and client-only modes | 2 months  | - Completion within timeline. | $12,500 USD |
| 7 - NodeJS Server SDK   | NodeJS Server SDK with support for oAuth2 | 2 months  | - Completion within timeline. | $12,500 USD |
| 8 - SAML2.0 Support   | Adding SAML2.0 support to AuthFlow Server as well as the SDKs | 3 months | - Completion within timeline. | $18,750 USD |
| 9 - Ongoing Maintenance   | Ongoing Maintenance and support for the SDKs | 1 year <br /> (Paid Monthly) | - Completion within timeline. | $60,000 USD |

## Team

| Name | Role                | Bio | Contact         |
| ---- | ------------------- | --- | --------------- |
| Brian Pistone | Executive Team (Founder / Full-Stack Developer / Lead Engineer / Chief IT Guru) | With 2+ decades in IT/software development Brian has been successfully running an IT Managed Services Company since 2017. <br /><br /> His life long mission of helping businesses grow through the better use of technology has lead to him becoming proficient in PHP, NodeJS/JS, Swift, Go, and now Cadence. | brian@eurekadao.io |
| Ashton Mercer | Executive Team (Chief Development Guru) | Ashton has spent the past four years studying marketing and entrepreneurial management at Boise State University, his knowledge and expertise on startup's and new venture creation is crucial to the developmental success of AuthFlow. | ashton@eurekadao.io |
| Jordan Roeske | Executive Team (Chief Legal Guru) | Jordan is a licensed Attorney operating in multiple states, who enjoys and excels at legal research. Jordan provides the AuthFlow team with necessary legal guidance as AuthFlow expands into unseen territories. | jordan@eurekadao.io |
| Andrew Van Dyke | Executive Team (Chief Financial Guru) | Andrew is a financial advisor and strategist with expansive knowledge of financial markets and regulations. Andrew offers financial/accounting expertise and oversee's AuthFlows finances.  | andrew@eurekadao.io |
| Jacob Tucker | Cadence Developer / Emerald ID Manager | Jacob (aka God) was founder of the first DAO on the Flow Blockchain (Emerald City DAO) and needs no introduction in this space. | jacobtucker818@gmail.com |

