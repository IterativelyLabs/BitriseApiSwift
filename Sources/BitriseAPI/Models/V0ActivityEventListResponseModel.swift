//
// V0ActivityEventListResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0ActivityEventListResponseModel: Codable {

    public var data: [V0ActivityEventResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0ActivityEventResponseItemModel]?, paging: V0PagingResponseModel?) {
        self.data = data
        self.paging = paging
    }


}

