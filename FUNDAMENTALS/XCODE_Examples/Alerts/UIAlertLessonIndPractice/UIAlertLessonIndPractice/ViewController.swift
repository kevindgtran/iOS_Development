//
//  ViewController.swift
//  UIAlertLessonIndPractice
//
//  Created by Kevin Tran on 3/16/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonOne(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey!", message: "Eat Tacos", preferredStyle:UIAlertControllerStyle.actionSheet)
        
        alertController.addAction(UIAlertAction(title: "YES!", style: UIAlertActionStyle.destructive, handler: nil)
        
        )
        
        alertController.addAction(UIAlertAction(title: "WHERE?", style: UIAlertActionStyle.cancel, handler: nil))
        
        self.present(alertController,animated: true, completion: nil)
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey!", message: "Eat Tacos", preferredStyle:UIAlertControllerStyle.actionSheet)
        
        alertController.addAction(UIAlertAction(title: "YES!", style: UIAlertActionStyle.default, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "WHERE?", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alertController,animated: true, completion: nil)
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey!", message: "Eat Tacos", preferredStyle:UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "YES!", style: UIAlertActionStyle.destructive, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "WHERE?", style: UIAlertActionStyle.destructive, handler: {
        //completion handler to segue to another page
            (action) -> Void in
        
        self.performSegue(withIdentifier: "nextViewController", sender: self)
        })
        )
        
        self.present(alertController,animated: true, completion: nil)
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey!", message: "Eat Tacos", preferredStyle:UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "YES!", style: UIAlertActionStyle.destructive, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "WHERE?", style: UIAlertActionStyle.cancel, handler: nil))
        
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

