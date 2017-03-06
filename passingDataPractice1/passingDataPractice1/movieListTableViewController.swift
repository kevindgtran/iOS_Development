//
//  movieListTableViewController.swift
//  passingDataPractice1
//
//  Created by Kevin Tran on 2/28/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class movieListTableViewController: UITableViewController {

    let movies = ["Star Wars", "I am Legend", "Weird Science", "Land before Time"]
    
    //create a selectRow optional
    var selectedIndexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! TableViewCell
        cell.movieTitleLabel.text = movies[indexPath.row]
        return cell
    }
    
    //CONNECT DATA FOR SEGUE
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //user selected an index path
        selectedIndexPath = indexPath
        
        //segue to the next view - identifier 
        performSegue(withIdentifier: "tableViewToDetailVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //destination view controller
        if let destination = segue.destination as? DetailViewController {
            //selected index path to what the user selected
            if let selectedIndexPath = selectedIndexPath {
                //set the recieved title to movies
                destination.recievedMovieTitle = movies[selectedIndexPath.row]
            }
        }
    }
    
    
    
    
    
    
}
