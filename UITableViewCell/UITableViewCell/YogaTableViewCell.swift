//
//  YogaTableViewCell.swift
//  UITableViewCell
//
//  Created by Mikel Sanchez Herrero on 15/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class YogaTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
