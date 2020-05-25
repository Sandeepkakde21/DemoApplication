//
//  HelperUtilities.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import Foundation
import UIKit
let appThemeColor = UIColor(red: 88.0/255, green: 192.0/255, blue: 249.0/255, alpha: 1)
let appHeaderFont  = UIFont(name: "Verdana", size: 24)
let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

extension UIButton {
    func border(width: CGFloat = 1) {
        self.backgroundColor = .clear
        self.layer.borderWidth = width
        self.layer.borderColor = appThemeColor.cgColor
    }
    
    func roundedCorner(size: CGFloat = 5) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = size
    }
}

extension UIViewController {

}
