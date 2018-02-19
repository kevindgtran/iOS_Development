//
//  CountriesTableViewController.swift
//  Passport
//
//  Created by Kevin Tran on 2/6/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    let countries = ["Mexico", "France", "United Kingdom"]
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as UITableViewCell
        let coutriestxt = countries[indexPath.row]
        cell.textLabel?.text = coutriestxt
        cell.accessoryType = .checkmark
        return cell
    }
    
}
