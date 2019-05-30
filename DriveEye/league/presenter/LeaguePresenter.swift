//
//  LeaguePresenter.swift
//  DriveEye
//
//  Created by ashraf on 5/29/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation

class LeaguePresenter {
    
    private let leagueModel: LeagueModel
    private let leagueVC: LeagueDelegate
    
    init(leagueVC: LeagueDelegate) {
        self.leagueModel = LeagueModel()
        self.leagueVC = leagueVC
    }
    
    func getLeague() {
        leagueModel.getLeagues(responseHandel: {(leagues) in
            self.leagueVC.setLeagues(leagues: leagues)
        })
    }
}
