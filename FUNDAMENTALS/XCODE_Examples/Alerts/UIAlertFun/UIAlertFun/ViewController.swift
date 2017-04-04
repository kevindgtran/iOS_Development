//
//  ViewController.swift
//  UIAlertFun
//
//  Created by Kevin Tran on 3/16/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func triggerAllert(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey!", message: "Eat Tacos", preferredStyle:UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Left most button", style: UIAlertActionStyle.default, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "Right most button", style: UIAlertActionStyle.cancel, handler: nil))
        
        self.present(alertController,animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

