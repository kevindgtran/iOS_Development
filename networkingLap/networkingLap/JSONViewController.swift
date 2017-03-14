//
//  JSONViewController.swift
//  networkingLap
//
//  Created by Kevin Tran on 3/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class JSONViewController: UIViewController {

    
    @IBOutlet weak var JSONtextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a constant kURL for the URL
        let kURL = "https://www.reddit.com/.json"
        
        //convert to object session can use
        guard let redditURL = URL(string:kURL) else { return }
        
        //create instance of the task (network call) - singleton - access the urlsession manager
        let task = URLSession.shared.dataTask(with: redditURL) { (data, response, error) in
            
            if error != nil {
                print("there's an error")
            } else {
                let jsonObject = String(data: data!, encoding: String.Encoding.utf8)
                DispatchQueue.main.async {
                    self.JSONtextView.text = jsonObject
                }
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
