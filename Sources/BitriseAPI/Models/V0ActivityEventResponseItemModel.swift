//
// V0ActivityEventResponseItemModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0ActivityEventResponseItemModel: Codable {

    public var createdAt: String?
    public var _description: String?
    public var eventIcon: String?
    public var eventStype: String?
    public var repositoryAvatarIconUrl: String?
    public var repositoryTitle: String?
    public var slug: String?
    public var targetPathString: String?
    public var title: String?

    public init(createdAt: String?, _description: String?, eventIcon: String?, eventStype: String?, repositoryAvatarIconUrl: String?, repositoryTitle: String?, slug: String?, targetPathString: String?, title: String?) {
        self.createdAt = createdAt
        self._description = _description
        self.eventIcon = eventIcon
        self.eventStype = eventStype
        self.repositoryAvatarIconUrl = repositoryAvatarIconUrl
        self.repositoryTitle = repositoryTitle
        self.slug = slug
        self.targetPathString = targetPathString
        self.title = title
    }

    public enum CodingKeys: String, CodingKey { 
        case createdAt = "created_at"
        case _description = "description"
        case eventIcon = "event_icon"
        case eventStype = "event_stype"
        case repositoryAvatarIconUrl = "repository_avatar_icon_url"
        case repositoryTitle = "repository_title"
        case slug
        case targetPathString = "target_path_string"
        case title
    }

}
