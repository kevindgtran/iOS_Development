//
//  ListsViewController.swift
//  ToDoList
//
//  Created by Kevin Tran on 3/1/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

//implement the UITableViewDelegates and UITableViewDataSource protocals into our ViewController
class ListsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //declare a variable that'll hold our class data
    var sampleToDoList = [ToDoItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Properties
    @IBOutlet weak var tableViewVC: UITableView!
    @IBOutlet weak var listInputField: UITextField!
    
    //MARK: Actions
    @IBAction func addListButton(_ sender: UIButton) {
        if (listInputField.text != "") {
            let exampleToDoItem = ToDoItem(name: listInputField.text!, list: [])
            sampleToDoList.append(exampleToDoItem)
            
            
            listInputField.text = ""
            listInputField.resignFirstResponder()
            tableViewVC.reloadData()
        }
    }
    
    //customize dynamic table cells with sections, rows and cell data
    func numberOfSections(in tableView: UITableView) -> Int {
        return(1)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(sampleToDoList.count)
    }
    
    //displaying model data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Lists_Cell_Identifier", for: indexPath) as! ListsTableViewCell
        let toDoItem = sampleToDoList[indexPath.row].title
        cell.ListsNameLabel.text = toDoItem
        return(cell)
    }
    
    //swipe to delete and custom color
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let remove = UITableViewRowAction(style: .normal, title: "DONE!") { (action, indexPath) in
            //self.arrayname
            self.sampleToDoList.remove(at: indexPath.row)
            //self.IBOutletTableView
            self.tableViewVC.reloadData()
        }
        remove.backgroundColor = UIColor(red:0.91, green:0.29, blue:0.24, alpha:1.0)
        return[remove]
    }
    
    //Segue
    //function is called when user taps on this selectedRow
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDoThings = sampleToDoList[indexPath.row]
        performSegue(withIdentifier: "segueToItems", sender: toDoThings)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ToDosViewController{
            if let toDoThings = sender as? ToDoItem {
                destination.tempVariable = toDoThings
            }
        }
    }
    
    
    
    
    
    
    
    
}

