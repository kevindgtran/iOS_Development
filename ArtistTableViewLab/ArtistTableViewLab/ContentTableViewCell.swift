//
//  ContentTableViewCell.swift
//  ArtistTableViewLab
//
//  Created by Kevin Tran on 2/27/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    @IBOutlet weak var contentSongLabel: UILabel!
    @IBOutlet weak var contentInfoButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
