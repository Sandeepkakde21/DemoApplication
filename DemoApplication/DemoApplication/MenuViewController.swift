//
//  MenuViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit
public enum MenuTitle: String {
    case titile1 = "title1"
    case titile2 = "title2"
    case titile3 = "title3"
    case titile4 = "title4"
}

protocol MenuProtocol {
    func menuClickedWith(index menuIndex: Int, AndTitle menuTitle: String)
}

class MenuViewController: UIViewController {
    var delegate: MenuProtocol?
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
        
    }
    
}

extension MenuViewController: UITableViewDataSource, UITableViewDelegate {
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  6

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        if indexPath.row == 0 {
         cell  = tableView.dequeueReusableCell(withIdentifier: "MenuHeaderTableViewCell", for: indexPath) as! MenuHeaderTableViewCell
            
        } else {
        cell = tableView.dequeueReusableCell(withIdentifier: "MenuTitleTableViewCell", for: indexPath) as! MenuTitleTableViewCell
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
        delegate?.menuClickedWith(index: indexPath.row, AndTitle: MenuTitle.titile1.rawValue)
    }
    
    
}

extension MenuViewController {
    func initialization() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.removeMenu(_:)))
        view.addGestureRecognizer(tap)
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    }
    
    @objc func removeMenu(_ sender: UITapGestureRecognizer? = nil) {
        removeMenu()
    }
    
    func removeMenu() {
        UIView.animate(withDuration: 0.7, animations: {
            self.view.frame = CGRect( x: -320, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height);
        }) { (completed) in
            self.willMove(toParent: nil)
            self.view.removeFromSuperview()
            
            self.removeFromParent()
        }
    }
    
}
