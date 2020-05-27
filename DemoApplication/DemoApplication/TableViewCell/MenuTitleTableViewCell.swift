//
//  MenuTitleTableViewCell.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class MenuTitleTableViewCell: UITableViewCell {
    @IBOutlet weak var menuTitleButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func cellConfiguration(row: Int, menuTitle: String) {
        menuTitleButton.setTitle(menuTitle, for: .normal)
        menuTitleButton.tag = row
    }
}
