//
// V0AvatarPromoteParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0AvatarPromoteParams: Codable {

    public var isPromoted: Bool?

    public init(isPromoted: Bool?) {
        self.isPromoted = isPromoted
    }

    public enum CodingKeys: String, CodingKey { 
        case isPromoted = "is_promoted"
    }

}
