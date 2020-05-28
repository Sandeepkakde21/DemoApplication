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
let storyboardHome = UIStoryboard.init(name: StoryboardName.homeScreen, bundle: nil)

let viewBgColour = UIColor(red: 229.0/255, green: 229.0/255, blue: 234.0/255, alpha: 1)

struct StoryboardName {
    static let homeScreen = "HomeScreen"
}

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

//MARK: Constant

let MENU_PERSONAL_DETAILS = "Personal Details"
let MENU_CONTACT_INFO = "Contact Info"
let MENU_MY_ORGANIZATION_CHART = "My Organization Chart"
let MENU_ANNOUNCMENT = "Announcments"
let MENU_NOTIFICATION = "Notification"
let MENU_MY_PUBLIC_PROFILE = "My Public Profile"

public enum MenuTitle: String {
    case personalDetails = "Personal Details"
    case contactInfo = "Contact Info"
    case myOrganizationChart = "My Organization Chart"
    case announcement = "Announcments"
    case notification = "Notification"
    case myPublicProfile = "My Public Profile"
}

