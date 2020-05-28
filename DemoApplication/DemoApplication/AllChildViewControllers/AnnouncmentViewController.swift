//
//  AnnouncmentViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 28/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class AnnouncmentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension AnnouncmentViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell: AnnouncmentTableViewCell = tableView.dequeueReusableCell(withIdentifier: "AnnouncmentTableViewCell", for: indexPath) as! AnnouncmentTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
        let label = UILabel()
        label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        label.text = String(section) + " - MM/DD/YYYY"
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
