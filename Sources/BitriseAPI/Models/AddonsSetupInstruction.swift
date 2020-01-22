//
// AddonsSetupInstruction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AddonsSetupInstruction: Codable {

    public var cardContent: String?
    public var _description: String?
    public var type: String?

    public init(cardContent: String?, _description: String?, type: String?) {
        self.cardContent = cardContent
        self._description = _description
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case cardContent = "card_content"
        case _description = "description"
        case type
    }

}
