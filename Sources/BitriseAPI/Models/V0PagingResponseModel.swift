//
// V0PagingResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0PagingResponseModel: Codable {

    /** Next is the \&quot;anchor\&quot; for pagination. This value should be passed to the same endpoint to get the next page. Empty/not included if there&#x27;s no \&quot;next\&quot; page. Stop paging when there&#x27;s no \&quot;Next\&quot; item in the response! */
    public var next: String?
    /** PageItemLimit - per-page item count. A given page might include less items if there&#x27;s not enough items. This value is the \&quot;max item count per page\&quot;. */
    public var pageItemLimit: Int?
    /** TotalItemCount - total item count, through \&quot;all pages\&quot; */
    public var totalItemCount: Int?

    public init(next: String?, pageItemLimit: Int?, totalItemCount: Int?) {
        self.next = next
        self.pageItemLimit = pageItemLimit
        self.totalItemCount = totalItemCount
    }

    public enum CodingKeys: String, CodingKey { 
        case next
        case pageItemLimit = "page_item_limit"
        case totalItemCount = "total_item_count"
    }

}

