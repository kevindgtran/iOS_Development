//
//  RedditAPIViewController.swift
//  networkingLap
//
//  Created by Kevin Tran on 3/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class RedditAPIViewController: UIViewController {

    //create outlet for text view json data
    @IBOutlet weak var JSONDataView3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //create session, kURL, guard
    let kURL = "https://www.reddit.com/.json"
        
    guard let redditURL = URL(string: kURL) else { return }
        
    //create task, closure, error handler, update outlet, task resume
        let task = URLSession.shared.dataTask(with: redditURL) {( data, response, error) in
            
            if error != nil {
                print("error!!!")
            } else {
                let jsonObject = String(data: data!, encoding: String.Encoding.utf8)
                DispatchQueue.main.async {
                    self.JSONDataView3.text = jsonObject
                }
            }
        } //end closure
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
