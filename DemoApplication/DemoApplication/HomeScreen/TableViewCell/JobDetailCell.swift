//
//  JobDetailCell.swift
//  DemoApplication
//
//  Created by Srsh's on 27/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class JobDetailCell: UITableViewCell {
    
    
    @IBOutlet weak var dobLabel: UILabel!
    
    @IBOutlet weak var maritalLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var editbtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func editBtnAction(_ sender: Any) {
    
    }
}
