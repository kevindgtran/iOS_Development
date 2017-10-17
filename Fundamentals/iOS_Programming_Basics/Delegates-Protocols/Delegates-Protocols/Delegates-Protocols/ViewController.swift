//
//  ViewController.swift
//  Delegates-Protocols
//
//  Created by Kevin Tran on 10/16/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var SWLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var chooseSideBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //on button press, present next viewcontroller
    @IBAction func chooseSideBtnPress(_ sender: UIButton) {
        //segue to view with ID "SelectionVC"
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let selectionViewController = storyBoard.instantiateViewController(withIdentifier: "SelectionVC") as! SelectionViewController
        self.present(selectionViewController, animated: true, completion: nil)
    }
}

