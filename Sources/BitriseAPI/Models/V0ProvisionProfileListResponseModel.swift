//
// V0ProvisionProfileListResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0ProvisionProfileListResponseModel: Codable {

    public var data: [V0ProvisionProfileResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0ProvisionProfileResponseItemModel]?, paging: V0PagingResponseModel?) {
        self.data = data
        self.paging = paging
    }


}

