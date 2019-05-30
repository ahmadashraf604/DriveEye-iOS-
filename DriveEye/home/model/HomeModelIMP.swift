//
//  HomeModelIMP.swift
//  DriveEye
//
//  Created by ashraf on 5/30/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class HomeModelIMP: NSObject{
    let locationService : LocationService!
    override init() {
        locationService=LocationService()
    }
    func getCurrentLocation(compleion : (_ city :String? ,_ country : String?)->()) {
        locationService.getCityAndCountry()
        compleion(nil, nil)
    }
}
