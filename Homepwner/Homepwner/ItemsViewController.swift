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
    
    //UITableView required method for UITableViewDataSource protocol
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    
}
