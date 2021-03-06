//
// WebhookDeliveryItemAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class WebhookDeliveryItemAPI {
    /**
     List the webhook delivery items of an app

     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter next: (query) Slug of the first delivery item in the response (optional)
     - parameter limit: (query) Max number of elements per page (default: 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhookDeliveryItemList(appSlug: String, appWebhookSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping ((_ data: V0WebhookDeliveryItemShowResponseModel?,_ error: Error?) -> Void)) {
        webhookDeliveryItemListWithRequestBuilder(appSlug: appSlug, appWebhookSlug: appWebhookSlug, next: next, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List the webhook delivery items of an app
     - GET /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "response_seconds" : "response_seconds",
    "response_headers" : "response_headers",
    "updated_at" : "updated_at",
    "response_http_status" : "response_http_status",
    "request_headers" : "request_headers",
    "created_at" : "created_at",
    "response_body" : "response_body",
    "request_payload" : "request_payload",
    "request_url" : "request_url",
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter next: (query) Slug of the first delivery item in the response (optional)
     - parameter limit: (query) Max number of elements per page (default: 50) (optional)

     - returns: RequestBuilder<V0WebhookDeliveryItemShowResponseModel> 
     */
    open class func webhookDeliveryItemListWithRequestBuilder(appSlug: String, appWebhookSlug: String, next: String? = nil, limit: Int? = nil) -> RequestBuilder<V0WebhookDeliveryItemShowResponseModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let appWebhookSlugPreEscape = "\(appWebhookSlug)"
        let appWebhookSlugPostEscape = appWebhookSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-webhook-slug}", with: appWebhookSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "next": next, 
                        "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<V0WebhookDeliveryItemShowResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Re-deliver the webhook delivery items of an app

     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter webhookDeliveryItemSlug: (path) Webhook delivery item slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhookDeliveryItemRedeliver(appSlug: String, appWebhookSlug: String, webhookDeliveryItemSlug: String, completion: @escaping ((_ data: ServiceStandardErrorRespModel?,_ error: Error?) -> Void)) {
        webhookDeliveryItemRedeliverWithRequestBuilder(appSlug: appSlug, appWebhookSlug: appWebhookSlug, webhookDeliveryItemSlug: webhookDeliveryItemSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Re-deliver the webhook delivery items of an app
     - POST /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug}/redeliver

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter webhookDeliveryItemSlug: (path) Webhook delivery item slug 

     - returns: RequestBuilder<ServiceStandardErrorRespModel> 
     */
    open class func webhookDeliveryItemRedeliverWithRequestBuilder(appSlug: String, appWebhookSlug: String, webhookDeliveryItemSlug: String) -> RequestBuilder<ServiceStandardErrorRespModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug}/redeliver"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let appWebhookSlugPreEscape = "\(appWebhookSlug)"
        let appWebhookSlugPostEscape = appWebhookSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-webhook-slug}", with: appWebhookSlugPostEscape, options: .literal, range: nil)
        let webhookDeliveryItemSlugPreEscape = "\(webhookDeliveryItemSlug)"
        let webhookDeliveryItemSlugPostEscape = webhookDeliveryItemSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{webhook-delivery-item-slug}", with: webhookDeliveryItemSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ServiceStandardErrorRespModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a specific delivery item of a webhook

     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter webhookDeliveryItemSlug: (path) Webhook delivery item slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhookDeliveryItemShow(appSlug: String, appWebhookSlug: String, webhookDeliveryItemSlug: String, completion: @escaping ((_ data: V0WebhookDeliveryItemResponseModel?,_ error: Error?) -> Void)) {
        webhookDeliveryItemShowWithRequestBuilder(appSlug: appSlug, appWebhookSlug: appWebhookSlug, webhookDeliveryItemSlug: webhookDeliveryItemSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a specific delivery item of a webhook
     - GET /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "response_seconds" : "response_seconds",
  "response_headers" : "response_headers",
  "updated_at" : "updated_at",
  "response_http_status" : "response_http_status",
  "request_headers" : "request_headers",
  "created_at" : "created_at",
  "response_body" : "response_body",
  "request_payload" : "request_payload",
  "request_url" : "request_url",
  "slug" : "slug"
}}]
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter webhookDeliveryItemSlug: (path) Webhook delivery item slug 

     - returns: RequestBuilder<V0WebhookDeliveryItemResponseModel> 
     */
    open class func webhookDeliveryItemShowWithRequestBuilder(appSlug: String, appWebhookSlug: String, webhookDeliveryItemSlug: String) -> RequestBuilder<V0WebhookDeliveryItemResponseModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let appWebhookSlugPreEscape = "\(appWebhookSlug)"
        let appWebhookSlugPostEscape = appWebhookSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-webhook-slug}", with: appWebhookSlugPostEscape, options: .literal, range: nil)
        let webhookDeliveryItemSlugPreEscape = "\(webhookDeliveryItemSlug)"
        let webhookDeliveryItemSlugPostEscape = webhookDeliveryItemSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{webhook-delivery-item-slug}", with: webhookDeliveryItemSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0WebhookDeliveryItemResponseModel>.Type = BitriseAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
