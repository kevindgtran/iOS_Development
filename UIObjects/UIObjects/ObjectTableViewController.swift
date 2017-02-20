//
//  ObjectTableViewController.swift
//  UIObjects
//
//  Created by Kevin Tran on 2/19/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//
//NUMBERS == STEPS TO SETUP SEARCH IN TABLE VIEW CONTROLLER

import UIKit

//TEN - update table view controller to also be a UISearchResultsUpdating
class ObjectTableViewController: UITableViewController, UISearchResultsUpdating {
//ONE - create array of elements for table view
        var objects = ["Slider", "Switch", "Stepper", "AVKit Player View Controller", "Segmented Control", "Date Picker", "Picker View", "Map Kit View", "Tap Gesture", "Pinch Gesture Recognizer", "Rotation Gesture Recognizer", "Swipe Gesture Recognizer", "Pan Gesture Recognizer", "Screen Edge Pan Gesture", "Long Press Gesture Recognizer"]
//THIRTEEN - create an emtpy array for filtered objects
        var filteredObjects = [String]()
    
//FIVE - create search controller
        var searchController : UISearchController!
//SEVEN - create results tableview controller
        var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//FIFTEEN - take updated list and display on new table view
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        
//SIX - upon user typing into search bar, display new table controller with only their results
        self.searchController = UISearchController(searchResultsController: self.resultsController)
//EIGHT - set the new table view controllers header to the results controller
        self.tableView.tableHeaderView = self.searchController.searchBar
//NINE - setup the search results updater
        self.searchController.searchResultsUpdater = self
//customize the list to not dim/darken list on user input into search field
        self.searchController.dimsBackgroundDuringPresentation = false
//customize the list to not have extra cell space at top of list
        definesPresentationContext = true
    }
    
//ELEVEN - create the update search results function
    func updateSearchResults(for searchController: UISearchController) {
        //first filter through objects in list
//TWELVE - filter through array and return object then assign to filteredObjects variable
        self.filteredObjects = self.objects.filter { (object:String) -> Bool in
            if object.lowercased().contains(self.searchController.searchBar.text!.lowercased()) {
                return true
            } else {
                return false
            }
        }
//FOURTEEN - update table with new filtered objects array
        //update the results in table view
        self.resultsController.tableView.reloadData()
    }
// MARK: - Table view data source
//SIXTEEN A - return cell with the correct label else display entire filtered list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
//TWO - return this number of cells within the table
            return self.objects.count
        } else {
            return self.filteredObjects.count
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//THREE - create table cell in table view
        let cell = UITableViewCell()
      
//SIXTEEN B - return cell with the correct label else display entire filtered list
        if tableView == self.tableView {
//FOUR - within each cell label, display the objects name
            cell.textLabel?.text = self.objects[indexPath.row]
        } else {
            cell.textLabel?.text = self.filteredObjects[indexPath.row]
        }
        return cell
    }
//allows the user to click on cell in table to be redirected to another page
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }

}
