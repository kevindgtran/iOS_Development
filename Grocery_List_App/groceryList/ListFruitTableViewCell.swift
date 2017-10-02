//
//  ListFruitTableViewCell.swift
//  groceryList
//
//  Created by Kevin Tran on 2/27/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class ListFruitTableViewCell: UITableViewCell {

    @IBOutlet weak var listFruitImageLabel: UILabel!
    @IBOutlet weak var listAmountLabel: UILabel!
    @IBOutlet weak var listFruitNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
