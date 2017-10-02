//
//  ListsTableViewCell.swift
//  ToDoList
//
//  Created by Kevin Tran on 3/1/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class ListsTableViewCell: UITableViewCell {

//MARK: Properties
    @IBOutlet weak var ListsNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
