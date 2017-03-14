//
//  GoogleMapsViewController.swift
//  networkingLap
//
//  Created by Kevin Tran on 3/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class GoogleMapsViewController: UIViewController {
    //outlet of text view for json data
    @IBOutlet weak var JSONDataTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //create session, kURL, guard
    let kURL = "http://api.open-notify.org/iss-now.json"
    
        guard let RANDOMURL = URL(string:kURL) else { return }
        
    //create task
        let task = URLSession.shared.dataTask(with: RANDOMURL) { (data, response, error) in
            
            if error != nil {
                print("error loading data")
            } else {
                let jsonObject = String(data: data!, encoding: String.Encoding.utf8)
                DispatchQueue.main.async {
                    self.JSONDataTextView.text = jsonObject
                }
            }
        }
        task.resume()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
