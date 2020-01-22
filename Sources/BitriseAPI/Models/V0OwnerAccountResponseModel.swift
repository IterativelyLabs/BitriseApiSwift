//
// V0OwnerAccountResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0OwnerAccountResponseModel: Codable {

    public var accountType: String?
    public var name: String?
    public var slug: String?

    public init(accountType: String?, name: String?, slug: String?) {
        self.accountType = accountType
        self.name = name
        self.slug = slug
    }

    public enum CodingKeys: String, CodingKey { 
        case accountType = "account_type"
        case name
        case slug
    }

}
