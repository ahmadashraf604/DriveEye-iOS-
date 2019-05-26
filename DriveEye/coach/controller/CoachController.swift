//
//  CoachController.swift
//  DriveEye
//
//  Created by ashraf on 5/23/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class CoachController {
    var coaches =  [CoachModel]()
    func getAllCoach() -> [CoachModel] {
        return getRandomCoahes()
    }
    func getRandomCoahes() -> [CoachModel] {
        var  model = CoachModel()
        for i in 0...15 {
        model.describtion=("describtion \(i)")
            model.title="title \(i)"
            coaches.append(model)
        }
        return coaches
    }
}
