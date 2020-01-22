//
// BuildRequestAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class BuildRequestAPI {
    /**
     List the open build requests for an app

     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildRequestList(appSlug: String, completion: @escaping ((_ data: V0BuildRequestListResponseModel?,_ error: Error?) -> Void)) {
        buildRequestListWithRequestBuilder(appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List the open build requests for an app
     - GET /apps/{app-slug}/build-requests

     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "build_params" : "build_params",
    "created_at" : "created_at",
    "pull_request_url" : "pull_request_url",
    "slug" : "slug"
  }, {
    "build_params" : "build_params",
    "created_at" : "created_at",
    "pull_request_url" : "pull_request_url",
    "slug" : "slug"
  } ]
}}]
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0BuildRequestListResponseModel> 
     */
    open class func buildRequestListWithRequestBuilder(appSlug: String) -> RequestBuilder<V0BuildRequestListResponseModel> {
        var path = "/apps/{app-slug}/build-requests"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildRequestListResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a build request

     - parameter body: (body) Build request parameters 
     - parameter appSlug: (path) App slug 
     - parameter buildRequestSlug: (path) Build request slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildRequestUpdate(body: V0BuildRequestUpdateParams, appSlug: String, buildRequestSlug: String, completion: @escaping ((_ data: V0BuildRequestUpdateResponseModel?,_ error: Error?) -> Void)) {
        buildRequestUpdateWithRequestBuilder(body: body, appSlug: appSlug, buildRequestSlug: buildRequestSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a build request
     - PATCH /apps/{app-slug}/build-requests/{build-request-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "build_params" : "build_params",
    "created_at" : "created_at",
    "pull_request_url" : "pull_request_url",
    "slug" : "slug"
  }
}}]
     - parameter body: (body) Build request parameters 
     - parameter appSlug: (path) App slug 
     - parameter buildRequestSlug: (path) Build request slug 

     - returns: RequestBuilder<V0BuildRequestUpdateResponseModel> 
     */
    open class func buildRequestUpdateWithRequestBuilder(body: V0BuildRequestUpdateParams, appSlug: String, buildRequestSlug: String) -> RequestBuilder<V0BuildRequestUpdateResponseModel> {
        var path = "/apps/{app-slug}/build-requests/{build-request-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildRequestSlugPreEscape = "\(buildRequestSlug)"
        let buildRequestSlugPostEscape = buildRequestSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-request-slug}", with: buildRequestSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildRequestUpdateResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
