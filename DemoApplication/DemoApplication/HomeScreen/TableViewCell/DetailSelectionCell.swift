//
//  DetailSelectionCell.swift
//  DemoApplication
//
//  Created by Srsh's on 26/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class DetailSelectionCell: UITableViewCell {
    
    @IBOutlet weak var personalInfoLabel: UIButton!
    @IBOutlet weak var jobInfoLabel: UIButton!
    
    var segmentSelectionStatus: ((String?) -> ())?


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        personalInfoLabel.roundedCorner()
        jobInfoLabel.roundedCorner()
        personalInfoLabel.border(width: 5.0)
        jobInfoLabel.border(width: 5.0)
        personalInfoLabel.titleLabel?.font = buttonFont
        jobInfoLabel.titleLabel?.font = buttonFont
        jobInfoLabel.titleLabel?.textColor = appThemeColor
        personalInfoLabel.titleLabel?.textColor = appThemeColor

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @IBAction func btnPersonalInfoTapped(_ sender: Any) {
        self.segmentSelectionStatus?("PERSONAL")
    }
    
    @IBAction func btnJobInfoTapped(_ sender: Any) {
        self.segmentSelectionStatus?("JOB")
    }

}
