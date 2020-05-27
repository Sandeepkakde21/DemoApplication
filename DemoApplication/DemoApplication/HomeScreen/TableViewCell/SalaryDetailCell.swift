//
//  SalaryDetailCell.swift
//  DemoApplication
//
//  Created by Srsh's on 27/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class SalaryDetailCell: UITableViewCell {
    
    
    @IBOutlet weak var compensationLabel: UILabel!
    @IBOutlet weak var revisedLabel: UILabel!
    @IBOutlet weak var offerLettrLabel: UILabel!
    @IBOutlet weak var payLabel: UILabel!
    @IBOutlet weak var editBtn: UIButton!
    
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
