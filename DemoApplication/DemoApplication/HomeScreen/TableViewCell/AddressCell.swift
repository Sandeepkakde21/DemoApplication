//
//  AddressCell.swift
//  DemoApplication
//
//  Created by Srsh's on 27/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class AddressCell: UITableViewCell {
    
    
    @IBOutlet weak var addressLine1LAbel: UILabel!
    @IBOutlet weak var addressLine2Label: UILabel!
    @IBOutlet weak var pincodeLabel: UILabel!
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
