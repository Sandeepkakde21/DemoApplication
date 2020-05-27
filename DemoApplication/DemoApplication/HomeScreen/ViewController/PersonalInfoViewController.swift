//
//  PersonalInfoViewController.swift
//  DemoApplication
//
//  Created by Srsh's on 26/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return  2
         }
         
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           var cell: UITableViewCell?
                switch indexPath.row {
                    case 0:
                    let imageCell = tableView.dequeueReusableCell(withIdentifier: "PersonalDetailCell", for: indexPath) as? PersonalDetailCell
//                         imageCell?.dobLabel.text = "ABCCC"
//                         imageCell?.nameLabel.text = "Srishti"
//                         imageCell?.maritalLabel.text = "Married"
                    cell = imageCell
                            
                        case 1:
                            let addressCell = tableView.dequeueReusableCell(withIdentifier: "AddressCell", for: indexPath) as? AddressCell
//                            addressCell?.addressLine1LAbel.text = "AMADKsf jkbdkvb"
//                            addressCell?.addressLine2Label.text = "edfwefwrg"
//                            addressCell?.pincodeLabel.text = "410018"
                            cell = addressCell
              
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

