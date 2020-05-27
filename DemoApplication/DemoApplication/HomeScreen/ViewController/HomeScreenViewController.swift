//
//  HomeScreenViewController.swift
//  DemoApplication
//
//  Created by Srsh's on 26/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
   
    var isButtonTapped: String = "PERSONAL"

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension HomeScreenViewController: UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         var cell: UITableViewCell?
        switch indexPath.row {
            case 0:
            let imageCell = tableView.dequeueReusableCell(withIdentifier: "ProfileImageCell", for: indexPath) as? ProfileImageCell
            //Customize
                cell = imageCell
                    
                case 1:
                    let btnSelectionCell = tableView.dequeueReusableCell(withIdentifier: "DetailSelectionCell", for: indexPath) as? DetailSelectionCell
                    btnSelectionCell?.segmentSelectionStatus = { (selectionString) in
                    self.isButtonTapped = selectionString!
                    tableView.reloadData()
                    }
                cell = btnSelectionCell
                    
                case 2:
                    let conatinerCell = tableView.dequeueReusableCell(withIdentifier: "ConatinerCell", for: indexPath) as? ConatinerCell
                conatinerCell?.initialiseCellData(isButtonTapped: self.isButtonTapped)
                cell = conatinerCell
                    
                default:
                    break
                }
                
                cell?.selectionStyle = .none
                return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 360.0
        case 1:
            return 90.0
        case 2:
            return 600.0
            
        default:
            return UITableView.automaticDimension
            
        }
        return UITableView.automaticDimension
    }
    
    
 
}
