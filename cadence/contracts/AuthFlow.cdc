// Welcome to the AuthSystem contract
//
// This contract is a service that maps a user's on-chain address
// to their DiscordID.

import NonFungibleToken from "./core/NonFungibleToken.cdc"
import MetadataViews from "./core/MetadataViews.cdc"

// ** Special thanks to Jacob Tucker @ Emerald City DAO for all his hard work **
// ** I have borrowed the IVerifiers from the FLOAT Project while work on Emerald Gate is being completed **
import FLOAT from "./FLOAT/FLOAT.cdc"
import FLOATVerifiers from "./FLOAT/FLOATVerifiers.cdc"

pub contract AuthFlow: NonFungibleToken {
    /***********************************************/
    /******************** PATHS ********************/
    /***********************************************/

    // Contract Specific Paths
    pub let AdministratorStoragePath: StoragePath
    pub let AdministratorPrivatePath: PrivatePath

    // User Profile Paths
    pub let UserProfileStoragePath: StoragePath
    pub let UserProfilePublicPath: PublicPath
    pub let UserProfilePrivatePath: PrivatePath

    // Auth System Paths
    pub let AuthSystemCollectionStoragePath: StoragePath
    pub let AuthSystemsCollectionPublicPath: PublicPath
    pub let AuthSystemAdminCollectionStoragePath: StoragePath
    pub let AuthSystemAdminCollectionPrivatePath: PrivatePath

    /************************************************/
    /******************** EVENTS ********************/
    /************************************************/

    // Contract Specefic Events
    pub event ContractInitialized()

    // User Profile Events
    pub event UserProfileCreated(id: UInt64, address: Address, displayName: String, avatar: String)
    pub event UserProfileDestroyed(id: UInt64, address: Address)

    // Auth System Events
    pub event AuthSystemCreated(id: UInt64, name: String, address: Address, description: String, image: String, url: String)
    pub event AuthSystemDestroyed(id: UInt64, name: String, address: Address)
    pub event AuthSystemAdminCreated(authSystemId: UInt64, profileId: UInt64, authSystemAddrs: Address, profileAddress: Address)
    pub event AuthSystemAdminDestroyed(authSystemId: UInt64, profileId: UInt64, authSystemAddrs: Address, profileAddress: Address)

    /***********************************************/
    /******************** STATE ********************/
    /***********************************************/

    // The total amount of User Profiles that have ever been
    // created (does not go down when a User Profile is destroyed)
    pub var totalSupply: UInt64

    // The total amount of Auth Systems that have ever been
    // created (does not go down when an Auth System is destroyed)
    pub var totalAuthSystems: UInt64

    // Map of user profiles to their Flow Account
    access(account) var profiles: {Address: ProfileIdentifier}

    /***********************************************/
    /**************** FUNCTIONALITY ****************/
    /***********************************************/


    // A helpful wrapper to contain an address, 
    // the id of a User Profile, and its serial
    pub struct ProfileIdentifier {
        pub let id: UInt64
        pub let address: Address
        pub let serial: UInt64

        init(_id: UInt64, _address: Address, _serial: UInt64) {
            self.id = _id
            self.address = _address
            self.serial = _serial
        }
    }


    //
    // User Profile
    //
    pub resource NFT: NonFungibleToken.INFT, MetadataViews.Resolver {
        // Profile Identifiers
        pub let id: UInt64
        pub let serial: UInt64
        pub let createdAt: UFix64

        // Auth System Details
        pub let authSystemId: UInt64

        // User Profile Information
        pub var displayName: String
        pub var firstName: String
        pub var lastName: String
        pub var description: String
        pub var gender: String
        pub var avatar: String

        /***************** Setters for the Profile Owner *****************/
        pub fun updateDisplayName(_displayName: String) {
            self.displayName = _displayName
        }

        pub fun updateFirstName(_firstName: String) {
            self.firstName = _firstName
        }

        pub fun updateLastName(_lastName: String) {
            self.lastName = _lastName
        }

        pub fun updateDescription(_description: String) {
            self.description = _description
        }

        pub fun updateAvatar(_avatar: String) {
            self.avatar = _avatar
        }

        // This is for the MetdataStandard
        pub fun getViews(): [Type] {
            panic("TODO")
        }

        // This is for the MetdataStandard
        pub fun resolveView(_ view: Type): AnyStruct? {
            panic("TODO")
        }

        init (_serial: UInt64, _authSystemId: UInt64, _displayName: String, _firstName: String, _lastName: String, _description: String, _avatar: String, _gender: String) {
            self.id = self.uuid
            self.serial = _serial
            self.authSystemId = _authSystemId
            self.createdAt = getCurrentBlock().timestamp
            self.displayName = _displayName
            self.firstName = _firstName
            self.lastName = _lastName
            self.description = _description
            self.gender = _gender
            self.avatar = _avatar
        }

        destroy() {
            // TODO: Create EMIT event
        }
    }

    // A public interface for people to call into our Collection
    pub resource interface CollectionPublic {
        pub fun deposit(token: @NFT)
        pub fun getIDs(): [UInt64]
        pub fun borrowNFT(id: UInt64): &NFT
    }

    pub resource Collection: NonFungibleToken.Provider, NonFungibleToken.Receiver, NonFungibleToken.CollectionPublic, MetadataViews.ResolverCollection, CollectionPublic {
        pub var ownedNFTs: @{UInt64: NFT}

        pub fun borrowViewResolver(id: UInt64): &AnyResource{MetadataViews.Resolver} {
            panic("TODO")
        }

        pub fun getIDs(): [UInt64] {
            panic("TODO")
        }

        pub fun deposit(token: @NonFungibleToken.NFT) {
            panic("TODO")
        }

        pub fun borrowNFT(id: UInt64): &NonFungibleToken.NFT {
            panic("TODO")
        }

        pub fun withdraw(withdrawID: UInt64): @NonFungibleToken.NFT {
            panic("TODO")
        }

        init() {
            self.ownedNFTs <- {}
        }

        destroy() {
            destroy self.ownedNFTs
        }
    }

    pub fun createEmptyCollection(): @NonFungibleToken.Collection {
        panic("TODO")
    }

    //
    // Auth System
    //
    pub resource AuthSystem {
        // AuthSystem Identifiers
        pub let id: UInt64
        pub let serial: UInt64
        pub let createdAt: UFix64

        // AuthSysten Information
        pub var displayName: String
        pub var description: String
        pub var logo: String
        pub var url: String

        // AuthSystem Admins
        pub let admins: {UInt64: ProfileIdentifier}

        // AuthSystem User Information
        access(account) var currentUsers: {Address: ProfileIdentifier}
        access(account) var bannedUsers: {Address: ProfileIdentifier}
        pub var totalUsers: UInt64

        // AuthSystem Settings
        pub var canRegister: Bool
        access(account) let verifiers: {String: [{FLOAT.IVerifier}]}
    }

    //
    // Auth System Collection
    //
    pub resource AuthSystemCollection {
        
    }

    init() {
        self.totalSupply = 0
        self.totalAuthSystems = 0
        self.profiles = {}

        emit ContractInitialized()

        self.AdministratorStoragePath = /storage/AuthSystemGlobalAdministrator
        self.AdministratorPrivatePath = /private/AuthSystemGlobalAdministrator
        self.UserProfileStoragePath = /storage/AuthSystemUserProfile
        self.UserProfilePrivatePath = /private/AuthSystemUserProfile
        self.UserProfilePublicPath = /public/AuthSystemUserProfile
        self.AuthSystemCollectionStoragePath = /storage/AuthSystemCollection
        self.AuthSystemsCollectionPublicPath = /public/AuthSystemCollection
        self.AuthSystemAdminCollectionStoragePath = /storage/AuthSystemAdminCollection
        self.AuthSystemAdminCollectionPrivatePath = /private/AuthSystemAdminCollection
    }
}