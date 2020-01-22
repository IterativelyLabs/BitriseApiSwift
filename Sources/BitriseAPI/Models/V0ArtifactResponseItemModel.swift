//
// V0ArtifactResponseItemModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0ArtifactResponseItemModel: Codable {

    public var artifactMeta: String?
    public var artifactType: String?
    public var expiringDownloadUrl: String?
    public var fileSizeBytes: Int?
    public var isPublicPageEnabled: Bool?
    public var publicInstallPageUrl: String?
    public var slug: String?
    public var title: String?

    public init(artifactMeta: String?, artifactType: String?, expiringDownloadUrl: String?, fileSizeBytes: Int?, isPublicPageEnabled: Bool?, publicInstallPageUrl: String?, slug: String?, title: String?) {
        self.artifactMeta = artifactMeta
        self.artifactType = artifactType
        self.expiringDownloadUrl = expiringDownloadUrl
        self.fileSizeBytes = fileSizeBytes
        self.isPublicPageEnabled = isPublicPageEnabled
        self.publicInstallPageUrl = publicInstallPageUrl
        self.slug = slug
        self.title = title
    }

    public enum CodingKeys: String, CodingKey { 
        case artifactMeta = "artifact_meta"
        case artifactType = "artifact_type"
        case expiringDownloadUrl = "expiring_download_url"
        case fileSizeBytes = "file_size_bytes"
        case isPublicPageEnabled = "is_public_page_enabled"
        case publicInstallPageUrl = "public_install_page_url"
        case slug
        case title
    }

}

