//
//  ViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, MenuProtocol {
    @IBOutlet weak var buttonMenu: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var viewHeader: UIView!
    var menuVC: MenuViewController?
    var currentChildVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
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
    
    //MARK: Menu delegate
    func menuClickedWith(index menuIndex: Int, AndTitle menuTitle: String) {
        print(menuTitle)
        removeChildVC()
        currentChildVC = storyboard?.instantiateViewController(withIdentifier: "AboutCoreViewController") as? AboutCoreViewController
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
            self.addChildViewControllerOnbase(childVC: self.currentChildVC)
            
        })
    }
    
    func addMenu() {
        menuVC = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        menuVC?.delegate = self
        if let menu = menuVC {
            addChild(menu)
            view.addSubview(menu.view)
            menu.view.frame = CGRect( x: -320 , y: view.frame.origin.y, width: view.frame.size.width, height: view.frame.size.height);
            UIView.animate(withDuration: 0.3, animations: {
                menu.view.frame = CGRect( x: 0 , y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height);
            }) { (completed) in
                menu.didMove(toParent: self)
            }
            
        } else {
            //Show  error
        }
    }
    
    //MARK: play with Child View controller
    
    func addChildViewControllerOnbase(childVC: UIViewController?) {
        if let child = childVC {
            let yAxisStart: CGFloat = 110.0
            let totalheightForChild: CGFloat = view.frame.size.height - yAxisStart
            addChild(child)
            view.addSubview(child.view)
            child.view.frame = CGRect( x: 0 , y: yAxisStart, width: view.frame.size.width, height: totalheightForChild);
            child.didMove(toParent: self)
        }
    }
    
    func removeChildVC() {
        if let child = currentChildVC {
            child.willMove(toParent: nil)
            child.view.removeFromSuperview()
            child.removeFromParent()
        }
    }
    
}
