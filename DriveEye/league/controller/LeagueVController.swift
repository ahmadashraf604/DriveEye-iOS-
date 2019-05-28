//
//  LeagueVController.swift
//  DriveEye
//
//  Created by ashraf on 5/26/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class LeagueVController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var btnMenue: [UIButton]!
    @IBOutlet weak var tableView: UITableView!
    
    var leagueDetailsVC: LeagueDetailsVController!
    var model = LeagueModel()
    var leagues = [League]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leagueDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "leagueDetailsVC") as! LeagueDetailsVController
        
        model.getLeagues{ (leagues) in
            self.leagues = leagues
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leagueCell", for: indexPath) as! LeagueTVCell
        let league = leagues[indexPath.row]
        cell.scoreLabel.text = String(league.score)
        cell.leagueNameLabel.text = league.name
        cell.rankLabel.text =  String(league.rank)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        leagueDetailsVC.league = leagues[indexPath.row]
        self.navigationController?.show(leagueDetailsVC, sender: self)
    }
    
    @IBAction func showMenu(_ sender: UIBarButtonItem) {
        btnMenue.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    @IBAction func addNewLeague(_ sender: UIButton) {
        performSegue(withIdentifier: "openAlertLeague", sender: self)
    }
    
    
    @IBAction func joinExistingLeague(_ sender: UIButton) {
         performSegue(withIdentifier: "openAlertLeague", sender: self)
    }
}
