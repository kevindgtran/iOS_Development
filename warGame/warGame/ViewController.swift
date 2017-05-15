//
//  ViewController.swift
//  warGame
//
//  Created by Kevin Tran on 5/13/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueScore: UILabel!
    @IBOutlet weak var blueWinner: UILabel!
    
    @IBOutlet weak var orangeWinner: UILabel!
    @IBOutlet weak var orangeScore: UILabel!
    
    var blueScoreCard = 0
    var orangeScoreCard = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueWinner.text = ""
        orangeWinner.text = ""
        
        blueScore.text = "0"
        orangeScore.text = "0"
        
        blueScore.transform = CGAffineTransform(rotationAngle: 3.14)
        
        blueWinner.transform = CGAffineTransform(rotationAngle: 3.14)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func blueSideButton(_ sender: Any) {
        blueScoreCard += 1
        blueScore.text = "\(blueScoreCard)"

        if blueScoreCard == 30 {
            blueWinner.text = "Winner!"
            orangeWinner.text = "Loser"
            orangeScoreCard = 0
        }
    }
    
    @IBAction func orangeSideButton(_ sender: Any) {
        orangeScoreCard += 1
        print(orangeScoreCard)
        orangeScore.text = "\(orangeScoreCard)"

        
        if orangeScoreCard == 30 {
            orangeWinner.text = "Winner!"
            blueScoreCard = 0
            blueWinner.text = "loser"

        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        blueScoreCard = 0
        orangeScoreCard = 0
        viewDidLoad()
    
    }
}

