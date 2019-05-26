//
//  LoginViewController.swift
//  DriveEye
//
//  Created by ashraf on 5/22/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        btnLogin.layer.cornerRadius = 10
//        btnFacebook.layer.cornerRadius = 10
//        btnRegister.layer.cornerRadius = 10
//
        btnFacebook.layer.borderColor = UIColor.blue.cgColor
        btnFacebook.layer.borderWidth = 1.0

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

