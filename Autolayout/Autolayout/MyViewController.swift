//
//  MyViewController.swift
//  Autolayout
//
//  Created by Kevin Tran on 3/6/17.
//  Copyright © 2017 General Assembly. All rights reserved.
//

import UIKit
import QuartzCore

class MyViewController: UIViewController {
    
    
    //MARK: View Outlets
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: View Styles
        topLeftView.layer.borderWidth = 5
        topLeftView.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        topLeftView.layer.cornerRadius = 2
        
        topRightView.layer.borderWidth = 5
        topRightView.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        topRightView.layer.cornerRadius = 2
        
        bottomLeftView.layer.borderWidth = 5
        bottomLeftView.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        bottomLeftView.layer.cornerRadius = 2
        
        bottomRightView.layer.borderWidth = 5
        bottomRightView.layer.cornerRadius = 2
        bottomRightView.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
