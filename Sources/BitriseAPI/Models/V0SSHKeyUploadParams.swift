//
// V0SSHKeyUploadParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0SSHKeyUploadParams: Codable {

    /** The private part of the SSH key you would like to use */
    public var authSshPrivateKey: String?
    /** The public part of the SSH key you would like to use */
    public var authSshPublicKey: String?
    /** If it&#x27;s set to true, the provided SSH key will be registered at the provider of the application */
    public var isRegisterKeyIntoProviderService: Bool?

    public init(authSshPrivateKey: String?, authSshPublicKey: String?, isRegisterKeyIntoProviderService: Bool?) {
        self.authSshPrivateKey = authSshPrivateKey
        self.authSshPublicKey = authSshPublicKey
        self.isRegisterKeyIntoProviderService = isRegisterKeyIntoProviderService
    }

    public enum CodingKeys: String, CodingKey { 
        case authSshPrivateKey = "auth_ssh_private_key"
        case authSshPublicKey = "auth_ssh_public_key"
        case isRegisterKeyIntoProviderService = "is_register_key_into_provider_service"
    }

}

