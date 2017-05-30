//
//  Monster.swift
//  MonsterTown
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name: String
    var victomPool: Int {
        get {
            return town?.population ?? 0
        }
        set (newVictomPool) {
            return (town?.population = newVictomPool)!
        }
    }
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }    
}
