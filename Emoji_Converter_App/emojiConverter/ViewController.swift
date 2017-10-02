//
//  ViewController.swift
//  emojiConverter
//
//  Created by Kevin Tran on 2/25/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: properties
    @IBOutlet weak var appHeader: UILabel!
    //ONE - create IBOutlet for user input field
    @IBOutlet weak var userInputField: UITextField!
    //TWO - create IBOutlet for results label
    @IBOutlet weak var emojiResultsLabel: UILabel!
    
    //MARK: actions
    //THREE - create IBAction for button - when IUbutton is press this action/ function will execute
    @IBAction func convertButton(_ sender: UIButton) {
        //step One - obtain user input, lower case
        //step two - match user input with emoji (switch statement)
        //step four - update results label with emoji image
        
        let emoji = userInputField.text!
        
        switch emoji.lowercased() {
        case "happy":
            emojiResultsLabel.text = "😀"
        case "sad":
            emojiResultsLabel.text = "😔"
        case "kool":
            emojiResultsLabel.text = "😎"
        case "love":
            emojiResultsLabel.text = "😍"
        case "laugh":
            emojiResultsLabel.text = "😂"
        case "mad":
            emojiResultsLabel.text = "😡"
        case "kiss":
            emojiResultsLabel.text = "😘"
        case "funny":
            emojiResultsLabel.text = "😝"
        case "surprised":
            emojiResultsLabel.text = "😮"
        case "scared":
            emojiResultsLabel.text = "😱"
        case "cry":
            emojiResultsLabel.text = "😭"
        default:
            emojiResultsLabel.text = "not found"
        }
    }
}

