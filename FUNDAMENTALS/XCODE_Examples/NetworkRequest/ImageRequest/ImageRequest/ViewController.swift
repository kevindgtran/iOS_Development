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
        
        //setup a network request to retrieve an image and populate the imageView property
        
        //setup the URL class
        let url = URL(string: "https://i.redd.it/qh713wbo4r8y.jpg")
        
        //setup the URLSessionDataTask class
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error == nil {
                let downloadedImage = UIImage(data: data!)
                
                self.imageView.image = downloadedImage
            }
        }
        
        //start URLSessionDataTask
        task.resume()
    }
}


