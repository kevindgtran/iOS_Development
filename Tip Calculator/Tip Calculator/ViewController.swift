//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Kevin Tran on 3/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mealCost: Float?
    var tipPercent: Float = 20.0
    
    func finalCost() -> Float {
        return mealCost! + tipPercent/100.0 * mealCost!
    }
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var finalCostLabel: UILabel!
    @IBOutlet var costTextField: UITextField!
    @IBAction func tipSliderChanged(sender: UISlider){
        self.tipPercent = round(sender.value)
        
        self.tipPercentLabel.text = "\(Int(self.tipPercent))%"
        
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else {
            self.finalCostLabel.text = ""
        }
    }
    
    @IBAction func costTextFieldChanged(_ sender: UITextField) {
        self.mealCost = Float(sender.text!)
        
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else {
            self.finalCostLabel.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

