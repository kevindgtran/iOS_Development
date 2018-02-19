//
//  ViewController.swift
//  Passport
//
//  Created by Kevin Tran on 2/6/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kevinPerson = Person()
        kevinPerson.printStatus()
        
        nameLabel.text = kevinPerson.name
        birthdayLabel.text = kevinPerson.birthday
        nationalityLabel.text = kevinPerson.nationality
    }
}

