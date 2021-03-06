//
// AvatarCandidateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AvatarCandidateAPI {
    /**
     Create avatar candidates

     - parameter body: (body) Avatar candidate parameters 
     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func avatarCandidateCreate(body: [V0AvatarCandidateCreateParams], appSlug: String, completion: @escaping ((_ data: V0AvatarCandidateCreateResponseItems?,_ error: Error?) -> Void)) {
        avatarCandidateCreateWithRequestBuilder(body: body, appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create avatar candidates
     - POST /apps/{app-slug}/avatar-candidates

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example=[ {
  "filename" : "filename",
  "upload_url" : "upload_url",
  "filesize" : 0,
  "slug" : "slug"
}, {
  "filename" : "filename",
  "upload_url" : "upload_url",
  "filesize" : 0,
  "slug" : "slug"
} ]}]
     - parameter body: (body) Avatar candidate parameters 
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0AvatarCandidateCreateResponseItems> 
     */
    open class func avatarCandidateCreateWithRequestBuilder(body: [V0AvatarCandidateCreateParams], appSlug: String) -> RequestBuilder<V0AvatarCandidateCreateResponseItems> {
        var path = "/apps/{app-slug}/avatar-candidates"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AvatarCandidateCreateResponseItems>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get list of the avatar candidates

     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func avatarCandidateList(appSlug: String, completion: @escaping ((_ data: V0FindAvatarCandidateResponse?,_ error: Error?) -> Void)) {
        avatarCandidateListWithRequestBuilder(appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of the avatar candidates
     - GET /v0.1/apps/{app-slug}/avatar-candidates

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "filename" : "filename",
    "download_url" : "download_url",
    "slug" : "slug"
  }, {
    "filename" : "filename",
    "download_url" : "download_url",
    "slug" : "slug"
  } ]
}}]
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0FindAvatarCandidateResponse> 
     */
    open class func avatarCandidateListWithRequestBuilder(appSlug: String) -> RequestBuilder<V0FindAvatarCandidateResponse> {
        var path = "/v0.1/apps/{app-slug}/avatar-candidates"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0FindAvatarCandidateResponse>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Promote an avatar candidate

     - parameter body: (body) Avatar promote parameters 
     - parameter appSlug: (path) App slug 
     - parameter avatarSlug: (path) Avatar candidate slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func avatarCandidatePromote(body: V0AvatarPromoteParams, appSlug: String, avatarSlug: String, completion: @escaping ((_ data: V0AvatarPromoteResponseModel?,_ error: Error?) -> Void)) {
        avatarCandidatePromoteWithRequestBuilder(body: body, appSlug: appSlug, avatarSlug: avatarSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Promote an avatar candidate
     - PATCH /apps/{app-slug}/avatar-candidates/{avatar-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "is_candidate" : true,
    "upload_file_name" : "upload_file_name",
    "upload_file_size" : 0,
    "slug" : "slug"
  }
}}]
     - parameter body: (body) Avatar promote parameters 
     - parameter appSlug: (path) App slug 
     - parameter avatarSlug: (path) Avatar candidate slug 

     - returns: RequestBuilder<V0AvatarPromoteResponseModel> 
     */
    open class func avatarCandidatePromoteWithRequestBuilder(body: V0AvatarPromoteParams, appSlug: String, avatarSlug: String) -> RequestBuilder<V0AvatarPromoteResponseModel> {
        var path = "/apps/{app-slug}/avatar-candidates/{avatar-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let avatarSlugPreEscape = "\(avatarSlug)"
        let avatarSlugPostEscape = avatarSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{avatar-slug}", with: avatarSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AvatarPromoteResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
