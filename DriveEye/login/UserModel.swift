//
//  UserModel.swift
//  DriveEye
//
//  Created by Sallam on 5/29/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation
import Alamofire

class UserModel {
    let  url = URL(string: "https://driveeye.herokuapp.com/user/login")!

    func login(email: String, password: String, closure: @escaping (_ error: Error?, _ obj: User) -> Void) -> Void{
        
        let parameters: [String: Any] = [
            "email" : email,
            "password" : password
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
        
//        let user: User = User(userId: 1, firstName: "ahmed", lastName: "sallam", email: "ahmedsallamdd@gmail.com", password: "1232", birthdate: Date(), level: 5, carId: 3, cityId: 2)
//        user?.userId = 1
//        user?.carId = 2
//        user?.birthdate = Date()
//        user?.cityId = 1
//        user?.email = "ahmedsallamdd@gmail.com"
//        user?.firstName = "ahmed"
//        user?.lastName = "sallam"
//        user?.level = 4
//        user?.password = "12384"
        
//        closure(nil, user)
        
    }
    
}
