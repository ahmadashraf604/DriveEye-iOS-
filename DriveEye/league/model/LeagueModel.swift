//
//  Model.swift
//  DriveEye
//
//  Created by ashraf on 5/22/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation
import Alamofire

class LeagueModel {
    
    private let baseUrl = "https://driveeye.herokuapp.com/userLeague/"
    private let subscribed = "subscribed/1"
    private let userLeague = "getUsers/"
    
    func getLeagues(responseHandel: @escaping ([League]) -> Void){
        Alamofire.request(baseUrl + subscribed).responseJSON { (responseObject) -> Void in
            if responseObject.result.isSuccess {
                let leagueResponse = try! JSONDecoder().decode(LeagueResponse.self, from: responseObject.data!)
                if leagueResponse.status {
                    responseHandel(leagueResponse.leagues)
                }
            }
        }
    }
    
    func getLeagueUsers(leagueID: Int, responseHandel: @escaping ([UserLeague]) -> Void ){
        Alamofire.request(baseUrl + userLeague + String(leagueID)).responseJSON { (responseObject) -> Void in
            if responseObject.result.isSuccess {
                let leagueDetailsResponse = try! JSONDecoder().decode(LeagueDetailsResponse.self, from: responseObject.data!)
                if leagueDetailsResponse.status {
                    responseHandel(leagueDetailsResponse.userLeagues)
                }
            }
        }
    }
    
    func addLeague(leagueName: String, userID: Int, responseHandel: @escaping ([UserLeague]) -> Void){
        let parameters = ["name: " + leagueName, "ownerId: " + String(userID)]
        Alamofire.request(.POST, baseUrl, parameters: parameters, encoding: .JSON)
    }
}
