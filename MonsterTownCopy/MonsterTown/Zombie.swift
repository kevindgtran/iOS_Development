//
//  Zombie.swift
//  MonsterTown
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import Foundation

class Zombie: Monster {
//    override class var spookyNoise: String {
//        return "Brains..."
//    }
    
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool //private property only visible/ accessible in the Zombie class type (within its scope)
    
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName) //super points to the superClass's properties
    }
    
    convenience init(limp: Bool, fallingApart: Bool){
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("this zombie has a bad knee")
        }
    }
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
}
