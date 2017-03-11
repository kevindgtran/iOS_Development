//
//  GroceryListViewController.swift
//  groceryList
//
//  Created by Kevin Tran on 2/27/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class GroceryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //struct of fruit
    struct Fruit {
        var name: String
        var image: String
        var quantity: Int
    }
    
    //array of dictionary Fruit struct
    var fruitList: [Fruit] = [
        Fruit(name : "Strawberry", image : "🍓", quantity : 0),
        Fruit(name : "Banana", image : "🍌", quantity : 0),
        Fruit(name : "Kiwi", image : "🥝", quantity : 0),
        Fruit(name : "Grapes", image : "🍇", quantity : 0),
        Fruit(name : "Peache", image : "🍑", quantity : 0),
        Fruit(name : "Apple", image : "🍏", quantity : 0),
        Fruit(name : "Orange", image : "🍊", quantity : 0),
        Fruit(name : "Watermelon", image : "🍉", quantity : 0)
    ]
    
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
        fruitList[0].quantity += 1
        if fruitList[0].quantity > 1 {
            fruitList[0].name = "Strawberries"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
    }
    
    @IBAction func bananaPress(_ sender: UIButton) {
        fruitList[1].quantity += 1
        if fruitList[1].quantity > 1 {
            fruitList[1].name = "Bananas"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
    }

    @IBAction func kiwiPress(_ sender: UIButton) {
        fruitList[2].quantity += 1
        if fruitList[2].quantity > 1 {
            fruitList[2].name = "Kiwis"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
    }
    
    @IBAction func grapesPress(_ sender: UIButton) {
        fruitList[3].quantity += 1
        if fruitList[3].quantity > 1 {
            fruitList[3].name = "Grapes"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
    }
    
    @IBAction func peachPress(_ sender: UIButton) {
        fruitList[4].quantity += 1
        if fruitList[4].quantity > 1 {
            fruitList[4].name = "Peaches"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
    }
    
    @IBAction func ApplePress(_ sender: UIButton) {
        fruitList[5].quantity += 1
        if fruitList[5].quantity > 1 {
            fruitList[5].name = "Apples"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
    }
    
    @IBAction func orangePress(_ sender: UIButton) {
        fruitList[6].quantity += 1
        if fruitList[6].quantity > 1 {
            fruitList[6].name = "Oranges"
        }
        tableViewController.reloadData()
    }
    
    @IBAction func watermelonPress(_ sender: UIButton) {
        fruitList[7].quantity += 1
        if fruitList[7].quantity > 1 {
            fruitList[7].name = "Watermelons"
            tableViewController.reloadData()
        }
        tableViewController.reloadData()
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
        cell.listFruitImageLabel.text = "\(fruitList[row].image)"
        cell.listFruitNameLabel.text = "\(fruitList[row].name)"
        cell.listAmountLabel.text = "\(fruitList[row].quantity)"
        return cell
    }
}
