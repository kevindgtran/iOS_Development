//
//  PhotoStore.swift
//  Photorama
//
//  Created by Kevin Tran on 7/11/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

//PhotoStore will be where we initiate the web service requests, fetch data (images)
class PhotoStore {
    
    //new instance of URLSession
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    } ()
    
    //URLRequest to the FLickr API: Create URLSession to create URLSessionDataTask
    
    func fetchInterestingPhotos() {
        
        //1) create a URL instance
        let url = FlickrAPI.interestingPhotosURL  //url end point
        let request = URLRequest(url: url)
        
        //2) create URLSession URLSessionTask
        let task = session.dataTask(with: request) {
            (data, response, error) -> Void in
        
            //3)
            if let jsonData = data {
                if let jsonString = String(data: jsonData, encoding: .utf8) {
                    print(jsonString)
                }
            } else if let requestError = error {
                print("Error fetching interesting photos: \(requestError)")
            } else {
                print("Unexpected error with the request")
            }
        }//end of task
        
        task.resume()

    }//end of fetchInterestingPhotos function
    

}//end of PhotoStore class
