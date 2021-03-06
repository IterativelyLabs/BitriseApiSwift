//
// V0BuildCertificateListResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0BuildCertificateListResponseModel: Codable {

    public var data: [V0BuildCertificateResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0BuildCertificateResponseItemModel]?, paging: V0PagingResponseModel?) {
        self.data = data
        self.paging = paging
    }


}

