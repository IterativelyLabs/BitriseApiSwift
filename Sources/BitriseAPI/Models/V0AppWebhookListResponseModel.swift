//
// V0AppWebhookListResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0AppWebhookListResponseModel: Codable {

    public var data: [V0AppWebhookResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0AppWebhookResponseItemModel]?, paging: V0PagingResponseModel?) {
        self.data = data
        self.paging = paging
    }


}

