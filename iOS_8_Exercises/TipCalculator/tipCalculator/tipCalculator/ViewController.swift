//
//  ViewController.swift
//  tipCalculator
//
//  Created by Kevin Tran on 2/5/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let fifteenPercent: Float = 0.15
    let twentyPercent: Float = 0.20
    let twentyFivePercent: Float = 0.25

    @IBOutlet weak var amtLabel: UITextField!
    @IBOutlet weak var tipSegmentedControl: UISegmentedControl!
    @IBOutlet weak var totalAmtLabel: UILabel!
    
    @IBAction func calculateBtn(_ sender: Any) {
    
        let userInputString = amtLabel.text! as NSString
        let userInputFloat: Float = userInputString.floatValue
        
        switch tipSegmentedControl.selectedSegmentIndex {
        case 0:
            totalAmtLabel.text = "$\(userInputFloat + (userInputFloat * fifteenPercent))"
        case 1:
            totalAmtLabel.text = "$\(userInputFloat + (userInputFloat * twentyPercent))"
        case 2:
            totalAmtLabel.text = "$\(userInputFloat + (userInputFloat * twentyFivePercent))"
        default:
            print("unable to calculate")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

