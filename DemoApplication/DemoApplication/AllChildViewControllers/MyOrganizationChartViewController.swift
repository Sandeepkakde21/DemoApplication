//
//  MyOrganizationChartViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 27/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class MyOrganizationChartViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MyOrganizationChartViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell: MyOrganizationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MyOrganizationTableViewCell", for: indexPath) as! MyOrganizationTableViewCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
        let label = UILabel()
        label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        if section == 0 {
            label.text = "Manager"
            
        }  else {
            label.text = "Team members"
        }
        label.font = appHeaderFont
        label.textColor = appThemeColor
        headerView.backgroundColor = .white
        headerView.addSubview(label)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
}
