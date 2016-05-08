//: Playground - noun: a place where people can play

import Cocoa

struct Body {
    var heightInMeters: Double = 0
    var weightInKilos: Double = 0
    
    mutating func gainWeightInKilos(kilos: Double) {
        weightInKilos += kilos
    }
}

class Person {
    var body: Body = Body()
    var bmi: Double {
        get {
            return (body.weightInKilos /
                    (body.heightInMeters * body.heightInMeters))
        }
    }
}

var body = Body()
body.heightInMeters = 1.85
body.weightInKilos = 84.8
var matt = Person()
matt.body = body

print("Matt is \(matt.body.heightInMeters) meters tall,and weighs \(matt.body.weightInKilos) kilos.")
// Matt is 1.85 meters tall, and weighs 84.8 kilos.

class Employee: Person {
    var employeeID = 0
    
    func assignIdentifier(id: Int) {
        employeeID = id
    }
}

var employee = Employee()
employee.body = body
employee.employeeID = 73

struct MageLevelTracker {
    static let maxLevel = 20
    static func canUnlockLevel(level: Int) -> Bool {
        return level <= maxLevel
    }
}

if MageLevelTracker.canUnlockLevel(10) {
    print("10 is a valid level")
}

MageLevelTracker.maxLevel

enum Attack {
    case Melee, Fire, Water, Ice, Wind, Lightning
}

class Mage {
    static let vulnerabilities: [Attack] = [.Melee, .Lightning]
    class func isVulnerableTo(attack: Attack) -> Bool {
        return vulnerabilities.contains(attack)
    }
}
Mage.isVulnerableTo(.Water) // false
