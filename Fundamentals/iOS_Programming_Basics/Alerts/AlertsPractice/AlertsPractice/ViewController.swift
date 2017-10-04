//
//  ViewController.swift
//  AlertsPractice
//
//  Created by Kevin Tran on 5/18/17.
//  Copyright © 2017 com.example. All rights reserved.
//

//replicate above but on button click and with style sheet

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
    }
    
    //ALERT ON PAGE LOAD
    //after view did appear call alert function
    override func viewDidAppear(_ animated: Bool) {
        //call our alert function
        alertCall(title: "Understand?", message: "UIAlerts")
    }
    
    //alert function
    func alertCall(title: String, message: String) -> () {
        //create a new UIAlertController instance with parameters (title, message, preferredstyle)
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //create actions (YES, NO)
        let alertYes = UIAlertAction(title: "YES", style: .default) { (action) in
            print("yes - you da man!")
        }
        
        let alertNo = UIAlertAction(title: "NO", style: .cancel) { (action) in
            print("no - keep practicing, you'll get it!")
        }
        
        //call actions on new UIAlertController instances
        alert.addAction(alertYes)
        alert.addAction(alertNo)
        
        //present alert instance, animated: true, completion: nil
        self.present(alert, animated: true, completion: nil)
    }
    
    //ALERT ON BUTTON CLICK
    //IBAction button
    @IBAction func buttonClick(_ sender: UIButton) {
        //call alertfunction
        alertFunction(title: "button alert!", message: "oh yeah")
    }
    
    //create alert function
    func alertFunction(title: String, message: String) -> Void {
        //create UIAlertController instance
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        //create alert actions
        let alertDefault = UIAlertAction(title: "OK", style: .default) { (action) in
            print("ok - action sheet alert - success!")
        }
        
        let alertCancel = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            print("cancel - action sheet alert - success!")
        }
        
        //call actions on alert
        alert.addAction(alertDefault)
        alert.addAction(alertCancel)
        
        //present alert
        self.present(alert, animated: true, completion: nil)
    }
}

