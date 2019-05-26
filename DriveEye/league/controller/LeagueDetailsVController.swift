//
//  LeagueDetailsVController.swift
//  DriveEye
//
//  Created by ashraf on 5/23/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class LeagueDetailsVController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var leagueNameLabel: UILabel!
    @IBOutlet weak var leagueOwnerLabel: UILabel!
    @IBOutlet weak var leagueCodeLabel: UILabel!
    @IBOutlet weak var leagueTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leagueDetailsCell", for: indexPath)
        
        
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
