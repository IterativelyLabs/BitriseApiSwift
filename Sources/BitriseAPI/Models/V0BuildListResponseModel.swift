//
// V0BuildListResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0BuildListResponseModel: Codable {

    public var data: [V0BuildResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0BuildResponseItemModel]?, paging: V0PagingResponseModel?) {
        self.data = data
        self.paging = paging
    }


}

