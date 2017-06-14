//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Kevin Tran on 6/12/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    //create new instance of number formatter
    var numberFormatter: NumberFormatter {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }

    //create an optional variable to store fahrenheit value of type Measurement<UnitTemperature>
    var fahrenheitValue: Measurement<UnitTemperature>? {
        //add property observer after property is changed
        didSet {
            updateCelsiusLabel()
        }
    }
    
    //create computed variable for celciusValue
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    //MARK: - Properties
    @IBOutlet var celciusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
        
        updateCelsiusLabel()
        
    }
    
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    }//end of fahrenheitFieldEditingChanged IBAction
    
    
    //create function to resign textField's keyboard
    @IBAction func dismissKeyboard(_ sender: UIGestureRecognizer){
        textField.resignFirstResponder()
    }//end of dismissKeyboard IBAction
    
    //create function to update Celsius label
    func updateCelsiusLabel(){
        //check if celsius value has a value then update its label
        if let celsiusValue = celsiusValue {
            celciusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            celciusLabel.text = "???"
        }
    }//end of updateCelsiusLabel function
    
    //implement the UITestFieldDelegate method
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let existingTextHasDecimalSeperator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        
        if existingTextHasDecimalSeperator != nil, replacementTextHasDecimalSeparator != nil {
            return false
        } else {
            return true
        }
    }
    
    
    
    
    
}//end of ConversionViewController
