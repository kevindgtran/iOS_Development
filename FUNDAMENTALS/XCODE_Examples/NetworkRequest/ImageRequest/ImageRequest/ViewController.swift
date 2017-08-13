//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create instance of url - this takes a url string and converts it to a url in our code
        let imageURL = URL(string: "https://s-media-cache-ak0.pinimg.com/736x/d7/ab/5b/d7ab5b40b79f98006959e3ffba358a71--puppies-labradoodle-labradoodle-australian.jpg")
        
        //use urlsession to make a request - manage network request on our behalf, we can use
        let task = URLSession.shared.dataTask(with: imageURL!) { (data, response, error) in
            
            //if the error is nil then the data and response was successful
            if error == nil {
                //initialize an image with UIImage initializer passing in the response data
                let downLoadedImage = UIImage(data: data!)
                
                //set the downloaded image to the imageView property
                self.imageView.image = downLoadedImage
            }
        }
        
        //start the task
        task.resume()
        
    }
}
