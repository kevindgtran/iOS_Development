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
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //MODEL
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
    
    //CONTROLLER
    //create currentQuestion counter
    var currentQuestionIndex: Int = 0
    
    //before each view will appear, set the questionLabel's alpha to 0
    override func viewWillAppear(_ animated: Bool) {
        nextQuestionLabel.alpha = 0
    }//end of viewWillAppear
    
    override func viewDidLoad() {
        currentQuestionLabel.text = questions[currentQuestionIndex]
    }//end of viewDidLoad
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        //add 1 to currentQuestionIndex
        currentQuestionIndex += 1
        
        //check if currentQuestionIndex == questions.count then reset currentQuestionIndex to 0
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        //create new variable = index questions with currentQuestionIndex counter
        let question: String = questions[currentQuestionIndex]
        
        //update questionLabel with new variable
        nextQuestionLabel.text = question
        
        //set answerLabel to ???
        answerLabel.text = "???"
        
        //call the animateLabelTransitions function
        animateLabelTransitions()
    }//end of showNextQuestion action
    
    @IBAction func showAnswer(_ sender: UIButton) {
        //new constant = subscripting answers
        let currentAnswer = answers[currentQuestionIndex]
        
        //assign new constant to answerlabel
        answerLabel.text = currentAnswer
    }//end of showAnswer action
    
    //create function to animate label
    func animateLabelTransitions() {
        //declare closure constant that takes/ returns no values
        //let animationClosure = { () -> Void in
        //self.questionLabel.alpha = 1
        //}//end of animationClosure
        
        //animate the alpha of the questionLabel
        UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: { 
            self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1
        }, completion: { _ in
            swap(&self.currentQuestionLabel, &self.nextQuestionLabel)
        })//end of UIView animate 
        
        
    }//end of animationClosure function
    
    
    
}//end of ViewController

