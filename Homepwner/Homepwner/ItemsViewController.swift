//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Kevin Tran on 6/19/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    
    //add property for an ItemStore - giving the controller access to the ItemStore class
    var itemStore: ItemStore!
    var imageStore: ImageStore!
    
    //setup the leftBarButton to editButtonItem
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        navigationItem.leftBarButtonItem = editButtonItem
    }//end of aDecoder init function
    
    //MARK: - Actions
    @IBAction func addNewItem(_ sender: UIBarButtonItem){
        
        //create a new item and add it to the store
        let newItem = itemStore.createItem()
        
        //where is the item in the array
        if let index = itemStore.allItems.index(of: newItem) {
            let indexPath = IndexPath(row: index, section: 0)
            
            //insert this new row into the table
            tableView.insertRows(at: [indexPath], with: .automatic)
            
        }
    }//end of addNewItem
    
    //when navigation calls viewWillAppear, reload table data
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        
    }//end of viewWillAppear
    
    override func viewDidLoad() {
        
        //compute cell height based on constraints
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
        
    }
    
    //UITableView required method for UITableViewDataSource protocol
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //create an instance of UITableViewCell with a style of value1
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        //create an instance if tableView with reusable cells with the custom cell's unique identifier, cast as custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        
        //set the item at the nth index path, where the n in the row
        //set the cells label text with the item name (at that index path's row)
        //set the cells detail label with the items description
        //return the cell content
        
        let item = itemStore.allItems[indexPath.row]
        
        //configure cell labels
        cell.nameLabel.text = item.name
        cell.serialNumberLabel.text = item.serialNumber
        cell.valueLabel.text = "$\(item.valueInDollars)"
        
        return cell
    }//end of cellForRowAt method
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        //if the table view is asking to commit a delete command
        if editingStyle == .delete {
            let item = itemStore.allItems[indexPath.row]
            
            //setup alert to confirm with user of deletion - instance of UIAlertController
            //setup title
            //setup message
            //create instance of UIAlertController
            
            let title = "Delete \(item.name)?"
            let message = "Are you sure you want to delete this item?"
            
            let ac = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
            
            //create alert actions - instance of UIAlertActions
            //add each action to the UIAlertController instance
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            ac.addAction(cancelAction)
            
            let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: { (action) -> Void in
                //remove the item from the store (model)
                self.itemStore.removeItem(item)
                
                //remove the image from the ImageStore
                self.imageStore.deleteImage(forKey: item.itemKey)
                
                //then remove item from the tableview
                self.tableView.deleteRows(at: [indexPath], with: .automatic)
            })
            ac.addAction(deleteAction)

            //present the alert controller
            present(ac, animated: true, completion: nil)
        }
    }//end of delete tableview cell functino
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        //update the model
        itemStore.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
    
    }//end of moveRowAt method
    
    //create prepare(for: sender:) method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if triggered segue is the correct "showItem" segue identifier
        switch segue.identifier {
        case "showItem"?:
            //first find the tapped row
            if let row = tableView.indexPathForSelectedRow?.row {
                //get item with this row and pass it along
                let item = itemStore.allItems[row]
                
                let detailViewController = segue.destination as! DetailViewController
                detailViewController.item = item
                
                //set the imageStore property on DetailViewController
                detailViewController.imageStore = imageStore
            }
        default:
            preconditionFailure("Unexpected segue identifier.")
        }//end of switch statement
    }//end of prepare for segue function
    
    
    
    
}//end of ItemViewController
