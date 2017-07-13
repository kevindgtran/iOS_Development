//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Kevin Tran on 7/10/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    //MARK: - Properties
    @IBOutlet var imageView: UIImageView!
    
    //reference to PhotoStore
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchInterestingPhotos {
            (photosResult) -> Void in
            
            switch photosResult {
            case let .success(photos):
                print("Successfully found \(photos.count) photos.")
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
            }
        }
    }
    
    
    
    
    
}
