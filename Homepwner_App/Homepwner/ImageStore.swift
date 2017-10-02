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
        
        //create full URL for image
        let url = imageURL(forKey: key)
        
        //turn image into JPEG data
        if let data = UIImageJPEGRepresentation(image, 0.5) {
            
            //write it to full URL
            let _ = try? data.write(to: url, options: [.atomic])
        }
    }//end of setImage method
    
    //retrieve an image from the cache
    func image(forKey key: String) -> UIImage? {
        //load image from filesystem if it doesn't already have it
        
        if let existingImage = cache.object(forKey: key as NSString) {
            return existingImage
        }
        
        let url = imageURL(forKey: key)
        guard let imageFromDisk = UIImage(contentsOfFile: url.path) else {
            return nil
        }
        
        cache.setObject(imageFromDisk, forKey: key as NSString)
        return imageFromDisk
    }
    
    //delete an image
    func deleteImage(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
        
        let url = imageURL(forKey: key)
        
        //error handling b/c removeItem can throw an error, thus needs to be in the do block
        do {
            try FileManager.default.removeItem(at: url)
        //implicit error name
        } catch let deleteError {
            print("Error removing the image from disk: \(deleteError)")
        }
    }
    
    //create the URL to save images to the application sandbox
    func imageURL(forKey key: String) -> URL {
        
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        
        return documentDirectory.appendingPathComponent(key)
    }
    
    
    
    
    
}//end of ImageStore



