//: Iterator
import UIKit

struct AutomateCollections<T> {
    var things: [T]
}

extension AutomateCollections: SequenceType {
    typealias Generator = AnyGenerator<T>
    
    func generate() -> AnyGenerator<T> {
        var i = 0
        return anyGenerator{ return i >= self.things.count ? nil : self.things[i++]}
    }
}

struct Chips {
    let name: String
}

enum Drinks {
    case Pepsi
    case Cola
    case Sprite
}

let chipsAutomate = AutomateCollections(things: [Chips(name: "Lays"), Chips(name: "Pringels")])

for chip in chipsAutomate {
    print(chip.name)
}

let drinksAutomate = AutomateCollections(things: [Drinks.Cola, Drinks.Pepsi, Drinks.Sprite])
for drink in drinksAutomate {
    print(drink)
}


