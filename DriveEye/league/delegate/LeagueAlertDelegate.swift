//
//  LeagueAlertDelegate.swift
//  DriveEye
//
//  Created by ashraf on 5/30/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation

protocol LeagueAlertDelegate {
    
    func dismissView(league: League)
    
    func printError(error: String)
}
