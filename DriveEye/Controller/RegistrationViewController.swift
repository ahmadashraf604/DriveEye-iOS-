//
//  RegistrationViewController.swift
//  DriveEye
//
//  Created by Sallam on 5/27/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var btnSelectCity: UIButton!
    @IBOutlet weak var tableViewCities: UITableView!
    
    var citiesArray = ["Cairo", "Ismailia", "Mansoura", "Alex", "Aswan", "Luxor", "Mahala"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCities.isHidden = true
        tableViewCities.reloadData()
        
    }

    @IBAction func selectCity(_ sender: Any) {
        
        handleTableViewState()
        
    }
    
    func handleTableViewState() {
        if tableViewCities.isHidden == true {
            animateTableView(toggle: false)
        } else {
            animateTableView(toggle: true)
        }
    }
    
    func animateTableView(toggle: Bool) {
        
        UIView.animate(withDuration: 0.3){
            self.tableViewCities.isHidden = toggle
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = citiesArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        btnSelectCity.setTitle( citiesArray[indexPath.row], for: .normal)
        animateTableView(toggle: true)
    }

}
