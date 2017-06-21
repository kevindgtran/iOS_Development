//
//  ItemCell.swift
//  Homepwner
//
//  Created by Kevin Tran on 6/21/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    //MARK: - Properties
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!

    //make labels automatically adjust to content size changes
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.adjustsFontForContentSizeCategory = true
        serialNumberLabel.adjustsFontForContentSizeCategory = true
        valueLabel.adjustsFontForContentSizeCategory = true
        
    }//end of awakeFromNib method




}//end of ItemCell class
