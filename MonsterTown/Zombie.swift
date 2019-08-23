//
//  Zombie.swift
//  MonsterTown
//
//  Created by Chung, Crystal on 8/23/19.
//  Copyright © 2019 Chung, Crystal. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
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
    
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
            town?.zeroPopulation()
        }
        super.terrorizeTown()
    }
}
