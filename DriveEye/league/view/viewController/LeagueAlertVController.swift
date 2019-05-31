//
//  LeagueActionVC.swift
//  DriveEye
//
//  Created by ashraf on 5/23/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class LeagueAlertVController: UIViewController, LeagueAlertDelegate {
   
    var presenter: LeagueAlertPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LeagueAlertPresenter(leagueVC: self)
    }
    
    @IBAction func dismissView(_ sender: UIButton) {
       self.dismissView()
    }
    
    @IBAction func actionHandel(_ sender: UIButton) {
        presenter.addLeague(leagueName: "ay league")
    }
    
    func dismissView() {
         self.dismiss(animated: true, completion: nil)
    }
}
