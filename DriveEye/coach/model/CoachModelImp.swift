//
//  CoachModelImp.swift
//  DriveEye
//
//  Created by ashraf on 5/27/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation
import Alamofire
class CoachModelImp {
    var presenter : CoachPresenter!

           func getCoachRequest() {
            presenter = CoachPresenter(coachModel: self)
            let  url = URL(string: "https://driveeye.herokuapp.com/coach/getAll")!
            var coaches  = [Coach]()
            Alamofire.request(url).response { response in
                guard let data = response.data else { return }
                do {
                    let decoder = JSONDecoder()
                    let coachRequest = try decoder.decode(CoachRespose.self, from: data)
                     coaches = coachRequest.response
                    print("coaches count \(coaches.count)")
                    
                } catch let error {
                    print(error)
                }
            }
        }
    
    func getUsers(complent:@escaping (Error? ,[Coach]) -> Void){
        let  url = URL(string: "https://driveeye.herokuapp.com/coach/getAll")!

        Alamofire.request(url).response { response in
            guard let data = response.data else { return }
            do {
                let decoder = JSONDecoder()
                let coachRequest = try decoder.decode(CoachRespose.self, from: data)
                if coachRequest.status{
               complent(nil,coachRequest.response)
                }
               
                
            } catch let error {
                print(error)
            }
        }
        
    }

}
