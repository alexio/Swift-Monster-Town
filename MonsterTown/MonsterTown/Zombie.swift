//
//  Zombie.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    internal private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
//        if town?.population > 0 {
//            town?.changePopulation(-10)
//        }
        
        if !isFallingApart {
            town?.changePopulation(-10)
        }
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}
