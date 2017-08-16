//
//  ViewController.swift
//  SleepingInTheLibrary
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoTitleLabel: UILabel!
    @IBOutlet weak var grabImageButton: UIButton!

    
    // MARK: Actions
    
    @IBAction func grabNewImage(_ sender: AnyObject) {
        setUIEnabled(false)
        getImageFromFlickr()
    }

    
    // MARK: Configure UI
    
    private func setUIEnabled(_ enabled: Bool) {
        photoTitleLabel.isEnabled = enabled
        grabImageButton.isEnabled = enabled
        
        if enabled {
            grabImageButton.alpha = 1.0
        } else {
            grabImageButton.alpha = 0.5
        }
    }
    
    // MARK: Make Network Request
    
    private func getImageFromFlickr() {
        
       //create our method parameters
        let methodParameters = [
            Constants.FlickrParameterKeys.Method: Constants.FlickrParameterValues.GalleryPhotosMethod,
            Constants.FlickrParameterKeys.APIKey: Constants.FlickrParameterValues.APIKey,
            Constants.FlickrParameterKeys.GalleryID: Constants.FlickrParameterValues.GalleryID,
            Constants.FlickrParameterKeys.Extras: Constants.FlickrParameterValues.MediumURL,
            Constants.FlickrParameterKeys.Format: Constants.FlickrParameterValues.ResponseFormat,
            Constants.FlickrParameterKeys.NoJSONCallback: Constants.FlickrParameterValues.DisableJSONCallback
        ]
        
        //create our url string
        let urlString = Constants.Flickr.APIBaseURL + escapedParameters(methodParameters as [String : AnyObject])
        
        //create the URL class
        let url = URL(string: urlString)!
        
        //use the URLRequest Class to "wrap" our URL which will create a URLRequest
        let request = URLRequest(url: url)
        
        //create our URLSession
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            //check for error, if none, print data
            if error == nil  {
                
                //convert data from optional with optional binding
                if let data = data {
                    
                    //create a variable to hold our parsed dictionary results
                    var parsedResult: AnyObject!
                    
                    //time to convert the json into a foundation object
                    do {
                        parsedResult = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: AnyObject] as AnyObject
                    } catch {
                        print("unable to parseResults")
                        return
                    }
                    
                    //PARSE JSON
                    //Create foundation object - dictionary to hold parsed key and value
                    if let photosDictionary = parsedResult[Constants.FlickrResponseKeys.Photos] as? [String: AnyObject],
                        let photosArray = photosDictionary["photo"] as? [[String: AnyObject]]
                    {
                        //print(photosDictionary)
                        //print(photosArray[0])
                        
                        //create a random int value
                        let randomPhotoIndex = Int(arc4random_uniform(UInt32(photosArray.count)))
                        
                        //subscipt the photos array for one photo key-value pair
                        let photoDictionary = photosArray[randomPhotoIndex] as [String: AnyObject]
                        
                        if let imageUrlString = photoDictionary[Constants.FlickrResponseKeys.MediumURL] as? String,
                            let photoTitle = photoDictionary[Constants.FlickrResponseKeys.Title] as? String {
                            
                            print(imageUrlString)
                            print(photoTitle)
                            
                        }
                    }
                }
            }
        }
        
        //initiate URLSession task
        task.resume()
        
        
    }
    
    //create helper method to build the URL request and all its arguments
    func escapedParameters(_ parameters: [String: AnyObject]) -> String {
    
            //check if parameters are empty then return empty string
        if parameters.isEmpty {
            return ""
        } else {
            //create an array to help each key value pair converted into a string
            var keyValuePairs = [String]()
            
            //loop through parameter key-value pairs
            for (key, value) in parameters {
                
                //convert the value into a string
                let stringValue = "\(value)"
                
                //convert string into safe ASCII characters
                let escapedValue = stringValue.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
                
                //append newly created key-value into our array
                keyValuePairs.append(key + "=" + "\(escapedValue!)")
            }
            
            //return correctly built URL string
            return "?\(keyValuePairs.joined(separator: "&"))"
        }
        
    }//end of escapedParameters helper function
    
    
    
    
    
    
    
    

    
    
}//end of UIViewController
