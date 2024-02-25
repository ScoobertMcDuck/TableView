//
//  PointsViewController.swift
//  TableView
//
//  Created by Charlotte Varnum on 2/25/24.
//

import UIKit

class PointsViewController: UIViewController {
    
    var points = "Did not Reach"
    @IBOutlet weak var pointsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text = points
    }
    
    @IBAction func Return(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
