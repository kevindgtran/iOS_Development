//
//  Photo.swift
//  Photorama
//
//  Created by Kevin Tran on 7/12/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

//initialize a photo class for photos retrieved from HTTP request
class Photo {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    init(title: String, remoteURL: URL, photoID: String, dateTaken: Date) {
        self.title = title
        self.remoteURL = remoteURL
        self.photoID = photoID
        self.dateTaken = dateTaken
    }
    
    
}
