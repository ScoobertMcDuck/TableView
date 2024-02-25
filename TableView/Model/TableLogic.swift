//
//  TableLogic.swift
//  TableView
//
//  Created by Charlotte Varnum on 2/25/24.
//

import Foundation

struct Players {
    
    var ranking: String
    var player: String
    var points: String
    
    init(_ ranking: String, _ player: String, _ points: String) {
        self.ranking = ranking
        self.player = player
        self.points = points
    }
    
}
