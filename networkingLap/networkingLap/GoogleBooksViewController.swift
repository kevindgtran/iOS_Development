//
//  GoogleBooksViewController.swift
//  networkingLap
//
//  Created by Kevin Tran on 3/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class GoogleBooksViewController: UIViewController {

    //create text outlet for json details
    @IBOutlet weak var JSONTextView1: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //create session
      let kURL = "https://maps.googleapis.com/maps/api/geocode/json?address=Oxford%20University,%20uk&sensor=false"
        
    //guard against the url not being a string
      guard let googleBooksURL = URL(string:kURL) else { return }
    
    //create tast
      let task = URLSession.shared.dataTask(with: googleBooksURL)
      { (data, response, error) in
        
        if error != nil {
            print("there's an error")
        } else {
            let jsonObject = String(data: data!, encoding: String.Encoding.utf8)
            DispatchQueue.main.async {
                self.JSONTextView1.text = jsonObject
            }
        }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
