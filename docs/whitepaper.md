---
layout: default
title: Whitepaper
nav_order: 2
---

# AuthFlow Whitepaper

** This is a work in progress **

Current blockchain based authentication methods typically only allow a developer to confirm who a user is and has to utilize other Web2 authentication methods and services to do anything beyond smart contract interactions. As we move into a Web3 world there are still many user cases that require secure access to Web2 technologies and even things as simple as just role based access control to an apps functions.

AuthFlow aims to be an on-chain replacement for something like AWS IAM or Azure Active Directory. Utilziing the Flow Blockchain we can return control of user identification and authentication back to the app developer. Each app will create their own AuthSystem that can be managed by multiple AuthSystemAdmins. To ensure the integrity of the Authentication System, once the contract is deployed all keys will be removed from the account preventing any future modification of the contracts that change the way the system authenticates users.

## Cadence Contracts

** Special thanks to Jacob Tucker @ Emerald City DAO for all his hard work **
** I have borrowed the IVerifiers from the FLOAT Project while work on Emerald Gate is being completed **

### AuthFlow Contract

1. #### NFT Resource (User Profile)
    * In order to comply with the NFT standard the User Profile is the "NFT" resource in this contract and as such is stored in a "Collection" as defined in the NFT specifications. Each user Profile represents an account inside an AuthSystem, and it is possible to have more than one account or profile for an AuthSystem.

2. #### Collection Resource
    * The Collection Resource olds the User Profiles and provides functions for AuthSystems to query data about the user.

3. #### AuthSystem Resource

4. #### AuthSystem Admin Resource