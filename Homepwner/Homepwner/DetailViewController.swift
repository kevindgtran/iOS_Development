//
//  DetailViewController.swift
//  Homepwner
//
//  Created by Kevin Tran on 6/21/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    //MARK: - Properties
    @IBOutlet var nameField: UITextField!
    @IBOutlet var serialNumberField: UITextField!
    @IBOutlet var valueField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    //create a property observer to the item property that updates the title
    var item: Item! {
        didSet {
            navigationItem.title = item.name
        }
    }
    
    //create number & date formatters instead of string interpolation
    let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    
    //override viewWillAppear with item information in outlets
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameField.text = item.name
        serialNumberField.text = item.serialNumber
        valueField.text = numberFormatter.string(from: NSNumber(value: item.valueInDollars))
        dateLabel.text = dateFormatter.string(from: item.dateCreated)
    }//end of viewWillAppear
    
    //when navigationController called viewWillDisappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //dismiss the keyboard upon view being popped off the stack
        view.endEditing(true)
        
        //save changes to item
        item.name = nameField.text ?? ""
        item.serialNumber = serialNumberField.text
        
        if let valueText = valueField.text, let value = numberFormatter.number(from: valueText) {
            item.valueInDollars = value.intValue
        } else {
            item.valueInDollars = 0
        }
    }//end of viewWillDisappear
    
    //dismiss keyboard on keyboard return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }//end of textFieldShouldReturn
    
    //MARK: - Actions
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        //call endEditing
        view.endEditing(true)
    }
    
    @IBAction func takePicture(_ sender: UIBarButtonItem) {
        //create instance of UIImagePickerController
        let imagePicker = UIImagePickerController()
        
        //if the device has a camera then set its sourceType to camera, otherwise set it to the photolibrary
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        
        //set DetailViewController as the UIImagePickers delegate
        imagePicker.delegate = self
        
        //present UIImagePicker modally
        present(imagePicker, animated: true, completion:  nil)
        
    }//end of takePicture method
    
    //save image after user selects an image, call the didFinishPickingMediaWithInfo method
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //get picked image from info dictionay, then cast as UIImage
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        //put selected image on view screen
        imageView.image = image
        
        //then take image picker off screen
        dismiss(animated: true, completion: nil)
    }//end of imagePickerController method
    
    
    
    
    
}//end of DetailViewController



