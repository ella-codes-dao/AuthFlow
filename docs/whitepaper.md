---
layout: default
title: Whitepaper
nav_order: 2
---

# AuthFlow Whitepaper

** This is a work in progress **

Current blockchain-based authentication methods typically only allow a developer to confirm who a user is and has to utilize other Web2 authentication methods and services to do anything beyond smart contract interactions. As we move into a Web3 world there are still many use cases that require secure access to Web2 technologies and even things as simple as just role-based access control to an app's functions.

AuthFlow aims to be an on-chain replacement for something like AWS IAM or Azure Active Directory. Utilizing the Flow Blockchain we can return control of user identification and authentication to the app developer and end-users. Each app will create its own AuthSystem that can be managed by multiple AuthSystemAdmins. To ensure the integrity of the Authentication System, once the contract is deployed all keys will be removed from the account preventing any future modification of the contracts that change the way the system authenticates users.

## Cadence Contracts

** Special thanks to Jacob Tucker @ Emerald City DAO for all his hard work **
** I have borrowed the IVerifiers from the FLOAT Project while work on Emerald Gate is being completed **

### AuthFlow Contract

1. #### AuthSystem Resource
    TODO: 

2. #### AuthSystem Admin Resource
    TODO: 

3. #### NFT Resource (User Profile)
    * To comply with the NFT standard the User Profile is the "NFT" resource in this contract and as such is stored in a "Collection" as defined in the NFT specifications. Each user Profile represents an account inside an AuthSystem, and it is possible to have more than one account or profile for an AuthSystem.

4. #### Collection Resource
    * The Collection Resource olds the User Profiles and provides functions for AuthSystems to query data about the user.

### IVerifiers

* The complicated part is the FLOATVerifiers contract. That contract defines a list of "verifiers" that can be tagged onto a FLOATEvent to make the claiming more secure. For example, a host can decide to put a time constraint on when users can claim a FLOAT. They would do that by passing in a Timelock struct (defined in FLOATVerifiers.cdc) with a time period for which users can claim.

## Server and Client SDKs

Let's face it, getting authentication right is complicated and one screw-up can lead to costly data leaks. The AuthFlow SDKs allow you to secure both your front and backend resources with easy-to-use methods that will verify which roles/permissions the user has, as well as evaluate any access policies to ensure users only have access to authorized resources.

* Server SDKs
    * Go (Golang)
    * NodeJS
    * PHP
* Client SDKs
    * Go (Golang)
    * JS
    * Swift