//
//  TodoTableViewCell.swift
//  bitlist
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func completeButtonTapped(sender: UIButton) {
        
    }
    
    @IBAction func favoriteButtonTapped(sender: UIButton) {
        
    }
}