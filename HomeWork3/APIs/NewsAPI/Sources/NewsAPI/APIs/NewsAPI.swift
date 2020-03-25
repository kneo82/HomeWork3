//
// NewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class NewsAPI {
    /**
     Get News
     
     - parameter country: (query) Country 
     - parameter apiKey: (query) Api Key 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNews(country: String, apiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: NewsList?,_ error: Error?) -> Void)) {
        getNewsWithRequestBuilder(country: country, apiKey: apiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get News
     - GET /v2/top-headlines
     - parameter country: (query) Country 
     - parameter apiKey: (query) Api Key 
     - returns: RequestBuilder<NewsList> 
     */
    open class func getNewsWithRequestBuilder(country: String, apiKey: String) -> RequestBuilder<NewsList> {
        let path = "/v2/top-headlines"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "country": country.encodeToJSON(), 
            "apiKey": apiKey.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<NewsList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}