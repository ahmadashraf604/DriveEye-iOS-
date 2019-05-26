//
//  SeasonDeatailsViewController.swift
//  DriveEye
//
//  Created by ashraf on 5/23/19.
//  Copyright © 2019 java. All rights reserved.
//

import UIKit

class SeasonDeatailsViewController: UIViewController {

    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    @IBOutlet weak var userTableView: UITableView!
    
    
    var detailItem: Season? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            startDateLabel?.text = detail.endDate ?? " "
            endDateLabel?.text = detail.startDate ?? " "
//            userTableView. = detail.endDate??""

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
 
    
  
    

}

