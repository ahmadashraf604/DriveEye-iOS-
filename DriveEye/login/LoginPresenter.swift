//
//  LoginPresenter.swift
//  DriveEye
//
//  Created by Sallam on 5/29/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation

class LoginPresenter {
    
    let userModel: UserModel
    
    init(userModel: UserModel) {
        self.userModel = userModel
    }
    
    func loginWithEmail(email: String, password: String) {
        self.userModel.login(email: email, password: password, closure: {(error, user) in
            if error == nil {
//                print("login succeeded!")
                print(user)
            }
        })
    }
    
}
