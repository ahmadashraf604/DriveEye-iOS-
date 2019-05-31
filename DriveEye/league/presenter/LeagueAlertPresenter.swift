//
//  LeagueAlertPresenter.swift
//  DriveEye
//
//  Created by ashraf on 5/30/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation

class LeagueAlertPresenter {
    
    private let userID: Int = 1
    private var leagueVC: LeagueAlertDelegate
    private let leagueModel: LeagueModel
    
    init(leagueVC: LeagueAlertDelegate) {
        self.leagueModel = LeagueModel()
        self.leagueVC = leagueVC
    }
    
    func addLeague(leagueName: String) {
        leagueModel.addLeague(leagueName: leagueName, userID: self.userID, responseHandel: {(reponse) in
            print(reponse.league?.leagueID)
            self.leagueVC.dismissView()
        }, errorHandel: {(errorResponse) in
            print(errorResponse.error)
        })
    }
}
