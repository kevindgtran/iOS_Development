//
//  ViewController.swift
//  AnimationsLab
//
//  Created by Kevin Tran on 4/18/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    //second
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //set the initial view of the animations
        view1.alpha = 0.0
    }
    
    //first
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //third
    override func viewDidAppear(_ animated: Bool) {
        
        //set the final view of the animations
        UIView.animate(withDuration: 1.0) {
            self.view1.alpha = 1.0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

