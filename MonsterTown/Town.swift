//
//  Town.swift
//  MonsterTown
//
//  Created by Chung, Crystal on 8/23/19.
//  Copyright © 2019 Chung, Crystal. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStoplights: Int
    
    init(region: String, population: Int, stoplights: Int) {
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    
    init(population: Int, stoplights: Int) {
        self.region = "N/A"
        self.population = population
        numberOfStoplights = stoplights
    }
    
    enum Size {
        case small
        case medium
        case large
    }
    
    lazy var townSize: Size = {
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }()
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
    
    mutating func setPopulation(at amount: Int) {
        population = amount
    }
    
    mutating func zeroPopulation() {
        if population < 0 {
            population = 0
        }
    }
}
