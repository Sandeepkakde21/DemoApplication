//
//  LoginViewController.swift
//  DemoApplication
//
//  Created by Sandeep Kakde on 25/05/20.
//  Copyright © 2020 Sandeep Kakde. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var imageViewBackground: UIImageView!
    @IBOutlet weak var buttonLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
        
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        guard let baseVC = storyboard?.instantiateViewController(withIdentifier: "BaseViewController") else { return  }
        self.navigationController?.pushViewController(baseVC, animated: true)
    }
}

extension LoginViewController {
    func initialization() {
        buttonLogin.roundedCorner()
    }
}
