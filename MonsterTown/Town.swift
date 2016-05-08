//
//  Town.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation

struct Town {
    let region = "South"
    var population = 5422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation).")
            }
        }
    }
    var numberOfStoplights = 4
    
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
