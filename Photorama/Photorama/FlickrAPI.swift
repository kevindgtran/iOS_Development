//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Kevin Tran on 7/11/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

//create enum for possible errors for when parsing JSON
enum FlickrError: Error {
    case invalidJSONData
}

//create an enum, with raw values to hold mult API endpoints
enum Method: String {
    case interestingPhotos = "flickr.interestingness.getList"
}

struct FlickrAPI {
    
    //private access control, type level property for the Flickr baseURL
    private static let baseURLString = "https://api.flickr.com/services/rest"
    
    private static let apiKey = "8313db3d427fc545223eb04e2713db73"
    
    //create an instance of DateFormatter to convert datetaken string into an instance of Date
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()
    
    //create method to parse JSON dictionary into a Photo instance
    private static func photo(fromJSON json: [String: Any]) -> Photo? {
        guard
            let photoID = json["id"] as? String,
            let title = json["title"] as? String,
            let dateString = json["datetaken"] as? String,
            let photoURLString = json["url_h"] as? String,
            let url = URL(string: photoURLString),
            let dateTaken = dateFormatter.date(from: dateString) else {
                //insuffient information to create photo
                return nil
        }
        return Photo(title: title, remoteURL: url, photoID: photoID, dateTaken: dateTaken)
    }

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
    
    //create method that takes an instance of Data, and uses the JSONSerialization class to convert the data into the basic foundation objects
    static func photos(fromJson data: Data) -> PhotosResult {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
            
            guard
                let jsonDictionary = jsonObject as? [AnyHashable: Any],  //outer layer of JSON data
                let photos = jsonDictionary["photos"] as? [String: Any], //first layer of JSON data
                let photosArray = photos["photo"] as? [[String: Any]] else {
              
                    //error in parsing data
                    return .failure(FlickrError.invalidJSONData)
            }
            
            var finalPhotos = [Photo]()
            
            //parse dictionary into photo instances then return these as part of the success enumerator
            for photoJSON in photosArray {
                if let photo = photo(fromJSON: photoJSON) {
                    finalPhotos.append(photo)
                }
            }
            
            if finalPhotos.isEmpty && !photosArray.isEmpty {
                //unable to parse the photos, or the JSON format for photos has changed
                return .failure(FlickrError.invalidJSONData)
            }
            
            return .success(finalPhotos)
        } catch let error {
            return .failure(error)
        }
    }
    
    
    
    
    
}
