//
//  JobInfoViewController.swift
//  DemoApplication
//
//  Created by Srsh's on 26/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class JobInfoViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return  2
           }
           
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        var cell: UITableViewCell?
             switch indexPath.row {
                 case 0:
                 let jobDetailCell = tableView.dequeueReusableCell(withIdentifier: "JobDetailCell", for: indexPath) as? JobDetailCell
                 //Customize
//                 jobDetailCell?.dobLabel.text = "ABCCC"
//                 jobDetailCell?.nameLabel.text = "Srishti"
//                 jobDetailCell?.maritalLabel.text = "Married"
                     cell = jobDetailCell
                         
                     case 1:
                         let salaryDetailCell = tableView.dequeueReusableCell(withIdentifier: "SalaryDetailCell", for: indexPath) as? SalaryDetailCell
//                         salaryDetailCell?.payLabel.text = "PAAYY"
                         cell = salaryDetailCell
           
                     default:
                         break
                     }
                     
                     cell?.selectionStyle = .none
                     return cell!

           }
        
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
              switch indexPath.row {
              case 0:
                  return 200
              case 1:
                  return 200
        
              default:
                  return UITableView.automaticDimension
                  
              }
              return UITableView.automaticDimension
          }
}

