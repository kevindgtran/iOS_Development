//
//  ImageStore.swift
//  Homepwner
//
//  Created by Kevin Tran on 6/22/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ImageStore {
    
    let cache = NSCache<NSString,UIImage>()
    
    //add an image to the cache
    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    //retrieve an image from the cache
    func image(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
    
    //delete an image
    func deleteImage(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
    
    
    
    
    
    
    
    
}//end of ImageStore



