//
//  SecondViewController.swift
//  passingDataTutorial
//
//  Created by Kevin Tran on 5/17/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var textLabel: UILabel!
    
    //receiving variable
    var receivingText = String()
    
    override func viewDidLoad() {
        
        //set receiving text to textlabel
        textLabel.text = receivingText
        
    }
    
    //MARK: - Actions
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
