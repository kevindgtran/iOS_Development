//
//  ViewController.swift
//  Quiz
//
//  Created by Kevin Tran on 5/17/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //Model
    let questions: [String] = [
        "What is 7 + 7?",
        "What is the capital of Vernmont?",
        "What is cognac made of?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    //Controller
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        //add 1 to currentQuestionIndex
        currentQuestionIndex += 1
        
        //check if currentQuestionIndex == questions.count then reset currentQuestionIndex to 0
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        //create new variable = index questions with currentQuestionIndex counter
        let currentQuestion = questions[currentQuestionIndex]
        
        //update questionLabel with new variable
        questionLabel.text = currentQuestion
        
        //set answerLabel to ???
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        //new constant = subscripting answers
        let currentAnswer = answers[currentQuestionIndex]
        
        //assign new constant to answerlabel
        answerLabel.text = currentAnswer
    
    }

}

