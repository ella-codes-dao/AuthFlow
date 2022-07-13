---
layout: default
title: Identity Providers
nav_order: 3
has_children: true
---

# Identity Providers

Identity Providers function like normal Web2 Identity Providers, and are similiar to existing platforms like AWS IAM, Azure Active Directory, Auth0, Octa, and many others. The major difference being that they utilize the Flow Blockchain for data storage and security. At launch we will support oAuth2.0 with SAML2.0 coming soon after that. In following the vision of "Open Software" you will be able to transition your application and AuthSystem to a different Identity Provider at any time.

## Self-Hosted

### AuthFlow Server

To run your own Identity Provider, you can utilize the AuthFlow Server package. AuthFlow Server provides the needed backend services to secure the FCL login process with account proofs/JWTs and provides a UI to manage to your users. It provides the oAuth2.0 (and future SAML2.0) gateway allowing your to validate users in the Web2 world.

## Public Identity Providers

Partnership & Integration With [Emerald ID](https://id.ecdao.org/) from [Emerald City DAO](https://www.ecdao.org/)
{: .fs-6 .fw-300 }

### Emerald ID

Emerald ID is the only authorized public Identity Provider for AuthFlow. Think of this as the first "social login" for the Flow Blockchain. You authorize Emarld ID as the Identity Provider for your AuthSystem and are able to utilize all the functionality of AuthFlow without needing to host your own AuthFlow Server.

### Business Citadel

Like Emerald ID, Business Citadel is a cloud hosted Identity Provider (and so much more) but focused on the business sector and providing secure employee access to the Web2 world. We will share more information about Business Citadel soon!
