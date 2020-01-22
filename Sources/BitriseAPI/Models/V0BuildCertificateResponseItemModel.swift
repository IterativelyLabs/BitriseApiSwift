//
// V0BuildCertificateResponseItemModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0BuildCertificateResponseItemModel: Codable {

    public var certificatePassword: String?
    public var downloadUrl: String?
    public var isExpose: Bool?
    public var isProtected: Bool?
    public var processed: Bool?
    public var slug: String?
    public var uploadFileName: String?
    public var uploadFileSize: Int?
    public var uploadUrl: String?

    public init(certificatePassword: String?, downloadUrl: String?, isExpose: Bool?, isProtected: Bool?, processed: Bool?, slug: String?, uploadFileName: String?, uploadFileSize: Int?, uploadUrl: String?) {
        self.certificatePassword = certificatePassword
        self.downloadUrl = downloadUrl
        self.isExpose = isExpose
        self.isProtected = isProtected
        self.processed = processed
        self.slug = slug
        self.uploadFileName = uploadFileName
        self.uploadFileSize = uploadFileSize
        self.uploadUrl = uploadUrl
    }

    public enum CodingKeys: String, CodingKey { 
        case certificatePassword = "certificate_password"
        case downloadUrl = "download_url"
        case isExpose = "is_expose"
        case isProtected = "is_protected"
        case processed
        case slug
        case uploadFileName = "upload_file_name"
        case uploadFileSize = "upload_file_size"
        case uploadUrl = "upload_url"
    }

}

