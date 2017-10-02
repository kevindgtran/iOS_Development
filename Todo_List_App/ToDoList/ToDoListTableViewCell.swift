//
//  ToDoListTableViewCell.swift
//  ToDoList
//
//  Created by Kevin Tran on 3/2/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {

//MARK: Properties
    @IBOutlet weak var toDoItemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
