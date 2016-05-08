//
//  Vampire.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

class Vampire : Monster {
    var thralls = [Vampire]()
    
    override func terrorizeTown() {
        town?.changePopulation(-1)
        thralls.append(Vampire())
        super.terrorizeTown()
    }
}
