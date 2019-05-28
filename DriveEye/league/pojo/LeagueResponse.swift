//
//  LeagueResponse.swift
//  DriveEye
//
//  Created by ashraf on 5/27/19.
//  Copyright © 2019 java. All rights reserved.
//

import Foundation

struct LeagueResponse: Codable {
    let status: Bool
    let leagues: [League]
    
    enum CodingKeys: String, CodingKey {
        case leagues = "response"
        case status
    }
}

