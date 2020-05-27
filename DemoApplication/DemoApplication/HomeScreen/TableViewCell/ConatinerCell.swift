//
//  ConatinerCell.swift
//  DemoApplication
//
//  Created by Srsh's on 26/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class ConatinerCell: UITableViewCell {

    var personalInfoVC:PersonalInfoViewController?
    var jobInfoVc: JobInfoViewController = JobInfoViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func initialiseCellData(isButtonTapped: String?) {
        if isButtonTapped == "PERSONAL" {
            let storyboard = UIStoryboard.init(name: StoryboardName.homeScreen, bundle: nil)
            personalInfoVC = (storyboard.instantiateViewController(withIdentifier: "PersonalInfoViewController") as? PersonalInfoViewController)!
            personalInfoVC?.tableView.frame = self.contentView.frame
            self.contentView.addSubview((personalInfoVC?.tableView)!)
            }
            else if isButtonTapped == "JOB"{
            let storyboard = UIStoryboard.init(name: StoryboardName.homeScreen, bundle: nil)
            jobInfoVc = (storyboard.instantiateViewController(withIdentifier: "JobInfoViewController") as? JobInfoViewController)!
            jobInfoVc.tableView.frame = self.contentView.frame
            self.contentView.addSubview((jobInfoVc.tableView)!)
        }
    }


}
