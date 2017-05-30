//
//  Town.swift
//  MonsterTown
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

//import foundation framework - primarily used with Objective-C
import Foundation

//create new struct type, properties, methods and mutating methods
struct Town {
    
    //properties
    let region: String
    var numberOfStopLights: Int
    var population: Int{
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    
    //initialize properties
    init?(region: String, stopLights: Int, population: Int) { //if parameter name == property, then self.PROPERTY is required
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStopLights = stopLights
    }
    
    init?(population: Int, stopLights: Int){
        self.init(region: "N/A", stopLights: stopLights, population: population)
    }
    
    
    enum Size {
        case small
        case medium
        case large
    }
    
    //computed property called townSize of type Size
    var townSize: Size { //closure
        get { //read-only property
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    
    
    //methods
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStopLights); region: \(region)")
    }
    
    //mutating method - update property
    mutating func changePopulation(by amount: Int) -> () {
        population += amount
    }
    
}
