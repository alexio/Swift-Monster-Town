//
//  main.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(500)
myTown.printTownDescription()
let ts = myTown.townSize
print(ts)

let fredTheZombie = Zombie()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

var buffyTheVampire = Vampire()
buffyTheVampire.town = myTown
print("Thralls: " + buffyTheVampire.thralls.description)
buffyTheVampire.terrorizeTown()
print("Thralls: " + buffyTheVampire.thralls.description)
buffyTheVampire.town?.printTownDescription()

if Zombie.isTerrifying {
    print("Run away!")
}

print("Falling apart: " + fredTheZombie.isFallingApart.description)

