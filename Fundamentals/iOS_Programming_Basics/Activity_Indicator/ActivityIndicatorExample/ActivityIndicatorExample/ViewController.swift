//
//  ViewController.swift
//  ActivityIndicatorExample
//
//  Created by Kevin Tran on 5/29/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //connect objects on storyboard
    @IBOutlet var labelText: UILabel!

    //create new instance of UIActivityIndicatorView
    let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBAction func startButton(_ sender: AnyObject){
        //center the activityIndicator
        activityIndicator.center = self.view.center
        
        //set activityIndicator style to grey
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        //hide activity indicator when not running
        activityIndicator.hidesWhenStopped = true
        
        //add activity indicator to view
        view.addSubview(activityIndicator)
        
        //run activity indicator
        activityIndicator.startAnimating()
        
        //update label to read "loading..."
        labelText.text = "Loading..."
        
        //unhide label
        labelText.isHidden = false
        
    }
    
    @IBAction func stopButton(_ sener: AnyObject){
        //stop activity indicator
        activityIndicator.stopAnimating()
        
        //hide loading text
        labelText.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide the label on app load
        labelText.isHidden = true
    }
}

