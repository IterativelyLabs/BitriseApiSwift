//
// V0BuildTriggerRespModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0BuildTriggerRespModel: Codable {

    public var buildNumber: Int?
    public var buildSlug: String?
    public var buildUrl: String?
    public var message: String?
    public var service: String?
    public var slug: String?
    public var status: String?
    public var triggeredWorkflow: String?

    public init(buildNumber: Int?, buildSlug: String?, buildUrl: String?, message: String?, service: String?, slug: String?, status: String?, triggeredWorkflow: String?) {
        self.buildNumber = buildNumber
        self.buildSlug = buildSlug
        self.buildUrl = buildUrl
        self.message = message
        self.service = service
        self.slug = slug
        self.status = status
        self.triggeredWorkflow = triggeredWorkflow
    }

    public enum CodingKeys: String, CodingKey { 
        case buildNumber = "build_number"
        case buildSlug = "build_slug"
        case buildUrl = "build_url"
        case message
        case service
        case slug
        case status
        case triggeredWorkflow = "triggered_workflow"
    }

}

