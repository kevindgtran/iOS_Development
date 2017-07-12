//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Kevin Tran on 7/11/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

//create an enum, with raw values to hold mult API endpoints
enum Method: String {
    case interestingPhotos = "flickr.interestingness.getList"
}

struct FlickrAPI {
    
    //private access control, type level property for the Flickr baseURL
    private static let baseURLString = "https://api.flickr.com/services/rest"
    
    private static let apiKey = "8313db3d427fc545223eb04e2713db73"

    private static func flickrURL(method: Method, parameters: [String: String]?) -> URL {

        var components = URLComponents(string: baseURLString)!
        
        var queryItems = [URLQueryItem]()
        
        let baseParams = [
            "method": method.rawValue,
            "format": "json",
            "nojsoncallback": "1",
            "api_key": apiKey
        ]
        
        for (key, value) in baseParams {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
    
        if let additionalParams = parameters {
            for (key, value) in additionalParams {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        components.queryItems = queryItems
        
        return components.url!
    }
    
    static var interestingPhotosURL: URL {
        return flickrURL(method: .interestingPhotos, parameters: ["extras": "url_h,date_taken"])
    }
    
    
    
    
}
