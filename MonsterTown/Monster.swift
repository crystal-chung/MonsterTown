//
//  Monster.swift
//  MonsterTown
//
//  Created by Chung, Crystal on 8/23/19.
//  Copyright © 2019 Chung, Crystal. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    var town: Town?
    var name: String
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    class var spookyNoise: String {
        return "Grrr"
    }
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
