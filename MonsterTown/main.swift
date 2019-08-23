//
//  main.swift
//  MonsterTown
//
//  Created by Chung, Crystal on 8/23/19.
//  Copyright © 2019 Chung, Crystal. All rights reserved.
//

import Foundation

var myTown = Town(region: "West", population: 10_000, stoplights: 6)
let myTownSize = myTown.townSize
print(myTownSize)

myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
myTown.printDescription()

let genericMonster = Monster(town: myTown, monsterName: "Generic Mon")
print(Monster.spookyNoise)
genericMonster.terrorizeTown()

let fredTheZombie = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
print(Zombie.spookyNoise)
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")

var frederickTheZombie = fredTheZombie // still only one zombie!
frederickTheZombie.name = "Frederick"
print("Fred's name is \(fredTheZombie.name)")

var dyingTown = Town(population: 15, stoplights: 6)
dyingTown.printDescription()

var apoZombie: Zombie? = Zombie(town: dyingTown, monsterName: "apo")
apoZombie?.terrorizeTown()
apoZombie?.town?.printDescription()
apoZombie?.terrorizeTown()
apoZombie?.town?.printDescription()
apoZombie = nil

