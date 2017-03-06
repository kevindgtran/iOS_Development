//
//  ToDosViewController.swift
//  ToDoList
//
//  Created by Kevin Tran on 3/2/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit


//implement the UITableViewDelegates and UITableViewDataSource protocals into our ViewController
class ToDosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

//setup storage of model with the class
    var tempVariable: ToDoItem!

        
//MARK: Properties
    @IBOutlet weak var ToDoTableView: UITableView!
    @IBOutlet weak var addToDoTextField: UITextField!

//MARK: Actions
    @IBAction func addToDoButton(_ sender: UIButton) {
        if addToDoTextField.text != "" {
            tempVariable.checklistDetails.append(addToDoTextField.text!)
            
            addToDoTextField.text = ""
            addToDoTextField.resignFirstResponder()
            ToDoTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//set dynamic table view's sections, number of rows, and cell details
    func numberOfSections(in tableView: UITableView) -> Int {
        return(1)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(tempVariable.checklistDetails.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItems_Cell_Identifier", for: indexPath) as! ToDoListTableViewCell
        cell.toDoItemLabel.text = "\(tempVariable.checklistDetails[indexPath.row])"
        return cell
    }
    
//Swipe to delete row function
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let remove = UITableViewRowAction(style: .normal, title: "DONE!") { (action, indexPath) in
            //self.arrayname
            self.tempVariable.checklistDetails.remove(at: indexPath.row)
            //self.IBOutletTableView
            self.ToDoTableView.reloadData()
        }
        //swipe custom color
        remove.backgroundColor = UIColor(red:0.91, green:0.29, blue:0.24, alpha:1.0)
        return [remove]
    }
}
