//
//  Mayor.swift
//  MonsterTown
//
//  Created by Alexio Mota on 5/8/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

struct Mayor {
    private var anxietyLevel: Int = 0
    
    func logBadNews() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
    
    mutating func reportZombieAttack() {
        self.anxietyLevel+=1
        print("Majoy anxiety level increased, it is now: " + anxietyLevel.description)
    }
}