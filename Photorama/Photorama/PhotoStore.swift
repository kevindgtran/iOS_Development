//
//  PhotoStore.swift
//  Photorama
//
//  Created by Kevin Tran on 7/11/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

//create an enum for both success and failures of JSON parsing
enum PhotosResult {
    case success([Photo])
    case failure(Error)  //Error is a protocol that all errors conform to, NSError is the error many frameworks throw, and it conforms to Error. 
}

//PhotoStore will be where we initiate the web service requests, fetch data (images)
class PhotoStore {
    
    //new instance of URLSession
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    } ()
    
    //URLRequest to the FLickr API: Create URLSession to create URLSessionDataTask
    
    func fetchInterestingPhotos(completion: @escaping (PhotosResult) -> Void) {
        
        //1) create a URL instance
        let url = FlickrAPI.interestingPhotosURL  //url end point
        let request = URLRequest(url: url)
        
        //2) create URLSession URLSessionTask
        let task = session.dataTask(with: request) {
            (data, response, error) -> Void in
        
//            //3) parse returned data
//            if let jsonData = data {
//                
//                  //print JSON data as a String in the console
//                  //if let jsonString = String(data: jsonData, encoding: .utf8) {
//                      //print(jsonString)
//                   //}
//                
//                do {
//                    let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
//                        print(jsonObject)
//                } catch let error {
//                    print("error creating JSON object: \(error)")
//                }
//                
//            } else if let requestError = error {
//                print("Error fetching interesting photos: \(requestError)")
//            } else {
//                print("Unexpected error with the request")
//            }
            
            
            let result = self.processPhotosRequest(data: data, error: error)
            completion(result)
            
          }//end of task
        
        //4) start task (task are always created in the suspended state)
        task.resume()

    }//end of fetchInterestingPhotos function
    
    //method to process the JSON data that is returned from the web services request
    private func processPhotosRequest(data: Data?, error: Error?) -> PhotosResult {
        guard let jsonData = data else {
            return .failure(error!)
        }
        return FlickrAPI.photos(fromJson: jsonData)
    }
    
    
    
    

}//end of PhotoStore class
