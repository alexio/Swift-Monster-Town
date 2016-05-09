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
    
    var walksWithLimp: Bool
    internal private(set) var isFallingApart: Bool
    
    init(limp: Bool, fallingApart: Bool, town: Town?) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: "Zombie")
    }
    
    final override func terrorizeTown() {
//        if town?.population > 0 {
//            town?.changePopulation(-10)
//        }
        
        if !isFallingApart {
            town?.changePopulation(-10)
        }
        
        town?.mayor.reportZombieAttack()
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}
