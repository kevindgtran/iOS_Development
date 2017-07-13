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
                if let firstPhoto = photos.first {
                    self.updateImageView(for: firstPhoto)
                }
                
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
            }
        }
    }
    
    func updateImageView(for photo: Photo) {
        store.fetchImage(for: photo) {
            (imageResult) -> Void in
            
            switch imageResult {
            case let .success(image):
                self.imageView.image = image
            case let .failure(error):
                print("Error downloading image: \(error)")
            }
        }
    }
    
    
    
}
