//
//  SelectionViewController.swift
//  Delegates-Protocols
//
//  Created by Kevin Tran on 10/16/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var imperialBtn: UIButton!
    @IBOutlet weak var rebelBtn: UIButton!
    @IBOutlet weak var chooseSideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    @IBAction func imperialBtnPress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func RebelBtnPress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    
}
