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
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        btnFacebook.layer.borderColor = UIColor.blue.cgColor
        btnFacebook.layer.borderWidth = 1.0
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboard), name: Notification.Name.UIKeyboardWillHide, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboard), name: Notification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @objc func handleKeyboard(notification: Notification){
        
        let userInfo = notification.userInfo!
        
        let keyboardScreenEndFrame = (userInfo[UIKeyboardIsLocalUserInfoKey] as! NSValue).cgRectValue
        let keyboardViewEndFrame = view.convert(keyboardScreenEndFrame, from: view.window)
        
        if notification.name == Notification.Name.UIKeyboardWillHide {
            scrollView.contentInset = UIEdgeInsets.zero
        }else {
            scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardViewEndFrame.height + 300
                , right: 0)
        }
        
//        print("in the keyboard function!!!")
        scrollView.scrollIndicatorInsets = scrollView.contentInset
    }
    
}

