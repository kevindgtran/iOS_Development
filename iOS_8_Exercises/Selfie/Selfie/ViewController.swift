//
//  ViewController.swift
//  Selfie
//
//  Created by Kevin Tran on 2/9/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func selfieTapped(_ sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
            
            if (UIImagePickerController.isCameraDeviceAvailable(.front)) {
                imagePicker.cameraDevice = .front
            } else {
                imagePicker.cameraDevice = .rear
            }
        } else {
            imagePicker.sourceType = .photoLibrary
        }
    
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!){
        
        myImageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func shareTapped(_ sender: UIBarButtonItem) {
        func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!){
        }
        
        let social = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        social?.add(myImageView.image)
        
        self.present(social!, animated: true, completion: nil)
        
    }

}

