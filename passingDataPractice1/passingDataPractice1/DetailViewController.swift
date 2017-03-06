//
//  DetailViewController.swift
//  passingDataPractice1
//
//  Created by Kevin Tran on 2/28/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieImageLabel: UIImageView!
    
    //need to create a "storage" variable to pass into viewDidLoad
    var recievedMovieTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //update label text with "storage" variable
        movieTitleLabel.text = recievedMovieTitle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
