//
//  Monster.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

class Monster {
    var town: Town?
    var name: String
    
    static let isTerrifying = true
    
    init(town: Town?, monsterName: String) {
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

