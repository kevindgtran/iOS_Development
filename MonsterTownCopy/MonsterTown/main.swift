//
//  main.swift
//  MonsterTown
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

//foundation framework primarily used with Objective-C
import Foundation

//create new instance of struct type, print properties, methods, mutating methods
var myTown: Town? = Town(region: "West", stopLights: 6, population: 0)
myTown?.printDescription()
myTown?.changePopulation(by: 1_000_000)
let myTownSize = myTown?.townSize
print(myTownSize)

print("Town population: \(myTown?.population) and number of stop lights is \(myTown?.numberOfStopLights)")

myTown?.printDescription()

myTown?.changePopulation(by: 500)
print(myTown?.population)

let genericMonster = Monster(town: myTown, monsterName: "Monster")
//genericMonster.town = myTown
genericMonster.terrorizeTown()

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
//fredTheZombie.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victom pool: \(String(describing: fredTheZombie?.victomPool))")  //getter property
fredTheZombie?.victomPool = 500 
print("Victor pool: \(String(describing: fredTheZombie?.victomPool)); population: \(fredTheZombie?.town?.population)")
//print(Zombie.spookyNoise)
//if Zombie.isTerriying {
//    print("Run away!")
//}
fredTheZombie = nil

