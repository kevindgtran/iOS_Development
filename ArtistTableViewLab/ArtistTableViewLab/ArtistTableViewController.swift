//
//  ArtistTableViewController.swift
//  ArtistTableViewLab
//
//  Created by Kevin Tran on 2/27/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class ArtistTableViewController: UITableViewController {

    var songs: [String] = ["song 1", "song 2", "song 3", "song 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //for first section, index starts at 0
        if section == 0 {
            return 1
        } else {
            return songs.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "header", for: indexPath) as! HeaderTableViewCell
            cell.headerImage.image = UIImage(named: "beatles")
            cell.headerTextView.text = "The Beatles were an English rock band, formed in Liverpool in 1960. With members John Lennon, Paul McCartney, George Harrison and Ringo Starr, they became widely regarded as the foremost and most influential act of the rock era"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "content", for: indexPath) as! ContentTableViewCell
            let row = indexPath.row
            cell.contentSongLabel.text = "\(songs[row])"
            return cell
        }
    }
}
