//
//  LeagueDetailsVController.swift
//  DriveEye
//
//  Created by ashraf on 5/23/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class LeagueDetailsVController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var league: League!
    var model = LeagueModel()
    var users = [UserLeague]()
    
    @IBOutlet weak var leagueNameLabel: UILabel!
    @IBOutlet weak var leagueOwnerLabel: UILabel!
    @IBOutlet weak var leagueCodeLabel: UILabel!
    @IBOutlet weak var leagueTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        leagueNameLabel.text = league.name
        leagueCodeLabel.text = league.code
        leagueOwnerLabel.text = String(league.ownerID)
        model.getLeagueUsers(leagueID: league.leagueID, responseHandel: {(users) in
            self.users = users
            self.leagueTableView.reloadData()
        })
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leagueDetailsCell", for: indexPath) as! LeagueTVCell
        let user = users[indexPath.row]
        cell.scoreLabel.text = String(user.score)
        cell.leagueNameLabel.text = user.username
        cell.rankLabel.text =  String(user.rank)
        return cell
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
