//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Kevin Tran on 6/12/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
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
            celciusLabel.text = "\(celsiusValue.value)"
        } else {
            celciusLabel.text = "???"
        }
    }//end of updateCelsiusLabel function
    
}//end of ConversionViewController
