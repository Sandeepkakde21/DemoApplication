//
//  ViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    @IBOutlet weak var buttonMenu: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var viewHeader: UIView!
    var menuVC: MenuViewController?
    var homeVC: HomeScreenViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialization()
        addHomeScreen()
    }
    
    
    @IBAction func menuAction(_ sender: UIButton) {
        addMenu()
    }
    
}


extension BaseViewController {
    func initialization() {
        buttonMenu.backgroundColor = .clear
        labelTitle.font = appHeaderFont
        viewHeader.backgroundColor = appThemeColor
    }
    
    func addMenu() {
        menuVC = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        
        if let menu = menuVC {
            addChild(menu)
            //menuVC.view.frame = frame
            view.addSubview(menu.view)
            menu.view.frame = CGRect( x: -320 , y: view.frame.origin.y, width: view.frame.size.width, height: view.frame.size.height);
            
            UIView.animate(withDuration: 0.7, animations: {
                menu.view.frame = CGRect( x: 0 , y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height);
                
            }) { (completed) in
                menu.didMove(toParent: self)
            }
            
        } else {
            //Show  error
        }
    }
    
    func addHomeScreen() {
       let sb = UIStoryboard(name: StoryboardName.homeScreen, bundle: nil)
        homeVC =  sb.instantiateViewController(withIdentifier: "HomeScreenViewController") as? HomeScreenViewController
        
        if let home = homeVC {
            addChild(home)
            view.addSubview(home.view)
            home.didMove(toParent: self)
        } else {
            
            // error
        }
    }

    
}
