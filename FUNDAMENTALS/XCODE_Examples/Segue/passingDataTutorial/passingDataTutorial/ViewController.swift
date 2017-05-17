//
//  ViewController.swift
//  passingDataTutorial
//
//  Created by Kevin Tran on 5/17/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //prepare data to be sent before we perform manual segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if textField != nil {
        
        //create destination variable cast as SecondViewController
        let dest: SecondViewController = segue.destination as! SecondViewController
        
        //update destination viewcontroller.recievingtext with textField input
        dest.receivingText = textField.text!
        
        textField.text = ""
       
        } else {
            
            //create destination2 variable and cast as viewcontroller
            let dest2: SecondViewController = segue.destination as! SecondViewController
            
            //call viewcontroller.textfield and assign with textfield
            dest2.receivingText = "???"
            
        }
    }

}

