//
//  ViewController.swift
//  TableView
//
//  Created by Charlotte Varnum on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Array of players
    var top10 = [
        Players("1", "LeBron James", "39,898pts"),
        Players("2", "Kareem Abdul-Jabar", "38,387pts"),
        Players("3", "Karl Malone", "36,928pts"),
        Players("4", "Kobe Bryant", "33,643pts"),
        Players("5", "Michael Jordan", "32,292pts"),
        Players("6", "Dirk Nowitzki", "31,650pts"),
        Players("7", "Wilt Chamberlain", "31,419pts"),
        Players("8", "Shaquille, O'Neal", "28,596pts"),
        Players("9", "Kevin Durant", "28,296pts"),
        Players("10", "Carmelo Anthony", "28,289pts"),
        Players("...", "LiAngelo Ball", "-1pts")
    ]
    var points = "Variable Being Sent"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return top10.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = top10[indexPath.row].ranking
        content.secondaryText = top10[indexPath.row].player
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        points = top10[indexPath.row].points
        self.performSegue(withIdentifier: "pointsNavi", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pointsNavi" {
            let navigation = segue.destination as! PointsViewController
            navigation.points = points
        }
    }

}

