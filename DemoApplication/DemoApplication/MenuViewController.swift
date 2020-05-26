//
//  MenuViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

let menuTitleArray = [MENU_PERSONAL_DETAILS,MENU_CONTACT_INFO,MENU_MY_ORGANIZATION_CHART,MENU_ANNOUNCMENT,MENU_NOTIFICATION ,MENU_MY_PUBLIC_PROFILE]


protocol MenuProtocol {
    func menuClickedWith(index menuIndex: Int, AndTitle menuTitle: String)
}

class MenuViewController: UIViewController, UIGestureRecognizerDelegate {
    var delegate: MenuProtocol?
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
    }
    
}

extension MenuViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  7
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        if indexPath.row == 0 {
            cell  = tableView.dequeueReusableCell(withIdentifier: "MenuHeaderTableViewCell", for: indexPath) as! MenuHeaderTableViewCell
            
        } else {
            let menuCell: MenuTitleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MenuTitleTableViewCell", for: indexPath) as! MenuTitleTableViewCell
            let actualRowIndex = indexPath.row - 1
            if menuTitleArray.count > actualRowIndex && actualRowIndex >= 0 {
                menuCell.cellConfiguration(row: actualRowIndex, menuTitle: menuTitleArray[actualRowIndex])
                menuCell.menuTitleButton.tag = actualRowIndex
                menuCell.menuTitleButton.addTarget(self, action: #selector(menuClicked(button:)), for: .touchUpInside)
            }
            cell = menuCell
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    @objc func menuClicked(button: UIButton) {
        let menuTitle = menuTitleArray[button.tag]
        delegate?.menuClickedWith(index: button.tag, AndTitle: menuTitle)
        removeMenu()
        
    }
    
}

extension MenuViewController {
    func initialization() {
        let tapOnScreen: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.removeMenu(_:)))
        tapOnScreen.delegate = self
        view.addGestureRecognizer(tapOnScreen)
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    }
    
    @objc func removeMenu(_ sender: UITapGestureRecognizer? = nil) {
        removeMenu()
    }
    
    
    func removeMenu() {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.frame = CGRect( x: -320, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height);
        }) { (completed) in
            self.willMove(toParent: nil)
            self.view.removeFromSuperview()
            self.removeFromParent()
        }
    }
    
}
