//: Proxy
import UIKit

protocol IHuman {
    func move() -> String
    func getName() -> String
}

class Operator: IHuman {
    func move() -> String {
        return "Run"
    }
    
    func getName() -> String {
        return "Ronaldo"
    }
}

class Surogate: IHuman {
    let owner: IHuman
    
    init(owner: IHuman) {
        self.owner = owner
    }
    
    func move() -> String {
       return owner.move()
    }
    
    func getName() -> String {
        return owner.getName()
    }
}

let ronaldo = Operator()
let player1 = Surogate(owner: ronaldo)
player1.getName()
player1.move()



