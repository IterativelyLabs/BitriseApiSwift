//
// V0AppleAPICredentialResponseItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0AppleAPICredentialResponseItem: Codable {

    public var createdAt: String?
    public var issuerId: String?
    public var keyId: String?
    public var name: String?
    public var privateKey: String?
    public var slug: String?
    public var updatedAt: String?

    public init(createdAt: String?, issuerId: String?, keyId: String?, name: String?, privateKey: String?, slug: String?, updatedAt: String?) {
        self.createdAt = createdAt
        self.issuerId = issuerId
        self.keyId = keyId
        self.name = name
        self.privateKey = privateKey
        self.slug = slug
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey { 
        case createdAt = "created_at"
        case issuerId = "issuer_id"
        case keyId = "key_id"
        case name
        case privateKey = "private_key"
        case slug
        case updatedAt = "updated_at"
    }

}

