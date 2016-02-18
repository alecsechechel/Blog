//: Proxy
import UIKit

protocol IHuman {
    func move() -> String
    func getName() -> String
}

class Ronaldo: IHuman {
    func move() -> String {
        return "run"
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

let ronaldo = Ronaldo()
let player1 = Surogate(owner: ronaldo)
player1.move()
player1.getName()









