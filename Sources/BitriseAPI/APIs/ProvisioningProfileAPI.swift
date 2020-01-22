//
// ProvisioningProfileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ProvisioningProfileAPI {
    /**
     Confirm a provisioning profile upload

     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func provisioningProfileConfirm(appSlug: String, provisioningProfileSlug: String, completion: @escaping ((_ data: V0ProvisionProfileResponseModel?,_ error: Error?) -> Void)) {
        provisioningProfileConfirmWithRequestBuilder(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Confirm a provisioning profile upload
     - POST /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}/uploaded

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 

     - returns: RequestBuilder<V0ProvisionProfileResponseModel> 
     */
    open class func provisioningProfileConfirmWithRequestBuilder(appSlug: String, provisioningProfileSlug: String) -> RequestBuilder<V0ProvisionProfileResponseModel> {
        var path = "/apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}/uploaded"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let provisioningProfileSlugPreEscape = "\(provisioningProfileSlug)"
        let provisioningProfileSlugPostEscape = provisioningProfileSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provisioning-profile-slug}", with: provisioningProfileSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0ProvisionProfileResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create a provisioning profile

     - parameter body: (body) Provisioning profile parameters such as file name and file size 
     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func provisioningProfileCreate(body: V0ProvisionProfileUploadParams, appSlug: String, completion: @escaping ((_ data: V0ProvisionProfileResponseModel?,_ error: Error?) -> Void)) {
        provisioningProfileCreateWithRequestBuilder(body: body, appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a provisioning profile
     - POST /apps/{app-slug}/provisioning-profiles

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter body: (body) Provisioning profile parameters such as file name and file size 
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0ProvisionProfileResponseModel> 
     */
    open class func provisioningProfileCreateWithRequestBuilder(body: V0ProvisionProfileUploadParams, appSlug: String) -> RequestBuilder<V0ProvisionProfileResponseModel> {
        var path = "/apps/{app-slug}/provisioning-profiles"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0ProvisionProfileResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a provisioning profile

     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func provisioningProfileDelete(appSlug: String, provisioningProfileSlug: String, completion: @escaping ((_ data: V0ProvisionProfileResponseModel?,_ error: Error?) -> Void)) {
        provisioningProfileDeleteWithRequestBuilder(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a provisioning profile
     - DELETE /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 

     - returns: RequestBuilder<V0ProvisionProfileResponseModel> 
     */
    open class func provisioningProfileDeleteWithRequestBuilder(appSlug: String, provisioningProfileSlug: String) -> RequestBuilder<V0ProvisionProfileResponseModel> {
        var path = "/apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let provisioningProfileSlugPreEscape = "\(provisioningProfileSlug)"
        let provisioningProfileSlugPostEscape = provisioningProfileSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provisioning-profile-slug}", with: provisioningProfileSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0ProvisionProfileResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of the provisioning profiles

     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first provisioning profile in the response (optional)
     - parameter limit: (query) Max number of elements per page (default: 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func provisioningProfileList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping ((_ data: V0ProvisionProfileListResponseModel?,_ error: Error?) -> Void)) {
        provisioningProfileListWithRequestBuilder(appSlug: appSlug, next: next, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of the provisioning profiles
     - GET /apps/{app-slug}/provisioning-profiles

     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }, {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  } ],
  "paging" : {
    "next" : "next",
    "page_item_limit" : 6,
    "total_item_count" : 1
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first provisioning profile in the response (optional)
     - parameter limit: (query) Max number of elements per page (default: 50) (optional)

     - returns: RequestBuilder<V0ProvisionProfileListResponseModel> 
     */
    open class func provisioningProfileListWithRequestBuilder(appSlug: String, next: String? = nil, limit: Int? = nil) -> RequestBuilder<V0ProvisionProfileListResponseModel> {
        var path = "/apps/{app-slug}/provisioning-profiles"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "next": next, 
                        "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<V0ProvisionProfileListResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a specific provisioning profile

     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func provisioningProfileShow(appSlug: String, provisioningProfileSlug: String, completion: @escaping ((_ data: V0ProvisionProfileResponseModel?,_ error: Error?) -> Void)) {
        provisioningProfileShowWithRequestBuilder(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a specific provisioning profile
     - GET /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 

     - returns: RequestBuilder<V0ProvisionProfileResponseModel> 
     */
    open class func provisioningProfileShowWithRequestBuilder(appSlug: String, provisioningProfileSlug: String) -> RequestBuilder<V0ProvisionProfileResponseModel> {
        var path = "/apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let provisioningProfileSlugPreEscape = "\(provisioningProfileSlug)"
        let provisioningProfileSlugPostEscape = provisioningProfileSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provisioning-profile-slug}", with: provisioningProfileSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0ProvisionProfileResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a provisioning profile

     - parameter body: (body) Provisioning profile parameters 
     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func provisioningProfileUpdate(body: V0ProvProfileDocumentUpdateParams, appSlug: String, provisioningProfileSlug: String, completion: @escaping ((_ data: V0ProvisionProfileResponseModel?,_ error: Error?) -> Void)) {
        provisioningProfileUpdateWithRequestBuilder(body: body, appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a provisioning profile
     - PATCH /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter body: (body) Provisioning profile parameters 
     - parameter appSlug: (path) App slug 
     - parameter provisioningProfileSlug: (path) Provisioning profile slug 

     - returns: RequestBuilder<V0ProvisionProfileResponseModel> 
     */
    open class func provisioningProfileUpdateWithRequestBuilder(body: V0ProvProfileDocumentUpdateParams, appSlug: String, provisioningProfileSlug: String) -> RequestBuilder<V0ProvisionProfileResponseModel> {
        var path = "/apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let provisioningProfileSlugPreEscape = "\(provisioningProfileSlug)"
        let provisioningProfileSlugPostEscape = provisioningProfileSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provisioning-profile-slug}", with: provisioningProfileSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0ProvisionProfileResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}