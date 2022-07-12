---
layout: default
title: Grant Draft
nav_order: 3
---

# AuthFlow: AuthFlow is an Identity & Access Management (IAM) system secured by the Flow Blockchain

# Grant category

Please select one or more of:

- [ ] Open source maintenance
- [x] Developer tools / services
- [ ] Educational material

# Description

AuthFlow is an on-chain Identity & Access Management system and a replacement for something like AWS IAM or Azure Active Directory.

## Problem statement

Current blockchain-based authentication methods typically only allow a developer to confirm who a user is and has to utilize other Web2 authentication methods and services to do anything beyond smart contract interactions. As we move into a Web3 world there are still many use cases that require secure access to Web2 technologies and even things as simple as just role-based access control to an app's functions.

## Proposed solution

AuthFlow is an on-chain Identity & Access Management system and a replacement for something like AWS IAM or Azure Active Directory. Utilizing the Flow Blockchain we can return control of user identification and authentication to the app developer and end-users. Each app will create its own AuthSystem that can be managed by multiple AuthSystemAdmins. To ensure the integrity of the Authentication System, once the contract is deployed all keys will be removed from the account preventing any future modification of the contracts that change the way the system authenticates users.

* Server SDKs
    * Go (Golang)
    * NodeJS
* Client SDKs
    * Go (Golang)
    * JS
    * Swift

## Impact

Let's face it, getting authentication right is complicated and one screw-up can lead to costly data leaks. The AuthFlow SDKs allow you to secure both your front and backend resources with easy-to-use methods that will verify which roles/permissions the user has, as well as evaluate any access policies to ensure users only have access to authorized resources.

The server SDKs not only allow you to protect server-side resources but also allow you to stand up your own Identity Provider server that supports oAuth2.0 and SAML2.0 authentication methods.

The Client SDK is a wrapper around the FCL SDK, upon login, it verifies your roles and permissions through an AuthFlow Server and returns JWT/oAuth2 tokens for API access. If you do not need to protect server-side resources or usage for an Identity Provider server you can use the Client SDKs without a server as well. When in client-only mode the client SDK will verify the user's roles/permissions upon login and provide a signed/verifiable security token to secure your front end. In either mode, you can use the client SDK to verify the user's login status and roles/permissions.

# Milestones and funding

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

# Team

| Name | Role                | Bio | Contact         |
| ---- | ------------------- | --- | --------------- |
| Brian Pistone | Full-Stack Engineer/Founder | ... | dev@boiseitguru.com |
| Ashton Mercer | Executive Team/Marketing | ... | hello@eurekadao.io |