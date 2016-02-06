//Composite
import UIKit

protocol Unit {
    func getStrength() -> Int
}

class Archer: Unit {
    func getStrength() -> Int {
        return 3
    }
}

class Infantryman: Unit {
    func getStrength() -> Int {
        return 2
    }
}

class InfantrymanStrong: Infantryman {
    override func getStrength() -> Int {
        return 3
    }
}

class InfantrymanWeak: Infantryman {
    override func getStrength() -> Int {
        return 1
    }
}

class Horseman: Unit {
    func getStrength() -> Int {
        return 5
    }
}

//composite
class Army: Unit {
    var units = [Unit]()
    
    init(units: [Unit]) {
        self.units = units
    }
    
    func getStrength() -> Int {
        var totalStrength = 0
        for unit in units {
            totalStrength += unit.getStrength()
        }
        return totalStrength
    }
}

let horseman: [Unit] = Array(count: 300, repeatedValue: Horseman())
let archer: [Unit] = Array(count: 500, repeatedValue: Archer())

let myArmy = Army(units: horseman + archer)
myArmy.getStrength()

let infantrymanStrong: [Unit] = Array(count: 500, repeatedValue: InfantrymanStrong())
let archer1: [Unit] = Array(count: 800, repeatedValue: Archer())
let anotherArmy = Army(units: infantrymanStrong + archer1)

if myArmy.getStrength() > anotherArmy.getStrength() {
    print("win")
} else {
    print("lose")
}

anotherArmy.getStrength()










