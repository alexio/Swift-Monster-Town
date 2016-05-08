//
//  Town.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
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
