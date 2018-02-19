//
//  ViewController.swift
//  RaceCar
//
//  Created by Kevin Tran on 2/5/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var topSpeedLabel: UILabel!
    
    @IBAction func honkBtnPressed(_ sender: Any) {
        let newRaceCar = RaceCar()
        brandLabel.text = newRaceCar.brand
        colorLabel.text = newRaceCar.color
        topSpeedLabel.text = "\(newRaceCar.topSpeed)"
        newRaceCar.honk()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() //the super is very important, this refers back to UIViewController's viewDidLoad method and overrides it.
    }
}

