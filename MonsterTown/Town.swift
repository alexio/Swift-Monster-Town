//
//  Town.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation).")
                mayor.logBadNews()
            }
        }
    }
    var numberOfStoplights: Int
    var mayor: Mayor
    
    init(region: String, population: Int, stoplights: Int, mayor: Mayor) {
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
        self.mayor = mayor
    }
    
    init(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights, mayor: Mayor())
    }
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.Small
            case 10001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }
    
    func printTownDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        if (amount > population) {
            population = 0
            return
        }
        population += amount
    }
}
