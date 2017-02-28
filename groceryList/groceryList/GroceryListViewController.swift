//
//  GroceryListViewController.swift
//  groceryList
//
//  Created by Kevin Tran on 2/27/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class GroceryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var fruitList: [String] = ["Strawberry", "Banana", "Kiwi", "Grapes", "Peach", "Apple", "Orange", "Watermelon"]
    
    var fruitImages: [String] = ["🍓", "🍌", "🥝", "🍇", "🍑", "🍏", "🍉"]
    
    //MARK: - Outlets
    @IBOutlet weak var tableViewController: UITableView!
    @IBOutlet weak var strawberryImage: UIButton!
    @IBOutlet weak var bananaImage: UIButton!
    @IBOutlet weak var kiwiImage: UIButton!
    @IBOutlet weak var grapesImage: UIButton!
    @IBOutlet weak var peachImage: UIButton!
    @IBOutlet weak var appleImage: UIButton!
    @IBOutlet weak var orangeImage: UIButton!
    @IBOutlet weak var watermelonImage: UIButton!
    
    //MARK: - Actions
    @IBAction func strawberryPress(_ sender: UIButton) {
    }
    
    @IBAction func bananaPress(_ sender: UIButton) {
    }

    @IBAction func kiwiPress(_ sender: UIButton) {
    }
    
    @IBAction func grapesPress(_ sender: UIButton) {
    }
    
    @IBAction func peachPress(_ sender: UIButton) {
    }
    
    @IBAction func ApplePress(_ sender: UIButton) {
    }
    
    @IBAction func orangePress(_ sender: UIButton) {
    }
    
    @IBAction func watermelonPress(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "masterCell", for: indexPath) as! ListFruitTableViewCell
        let row = indexPath.row
//        cell.listFruitImageLabel.text = "\(fruitImages[row])"
        cell.listFruitNameLabel.text = "\(fruitList[row])"
        cell.listAmountLabel.text = "0"
        return cell
    }

}
