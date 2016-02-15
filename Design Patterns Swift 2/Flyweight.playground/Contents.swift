//Flyweight
import UIKit

class MikeMyers {
    let name: String
    let skills: Int
    
    var role: String?
    var suit: String?
    var age: Int?
    
    init(name: String, skills: Int) {
        self.name = name
        self.skills = skills
        print("Create unit")
    }
    
    convenience init() {
        self.init(name: "Mike Myers", skills: 90)
    }
    
    func getInfo() {
        if let role = role, let suit = suit, let age = age {
            print("Role - \(role), suit - \(suit), age - \(age)")
        }
    }
}

var mikeMyers = MikeMyers()

//Austin Powers
mikeMyers.role = "Austin Powers"
mikeMyers.suit = "Austin Powers suit"
mikeMyers.age = 27
mikeMyers.getInfo()

//Dr. Evil
mikeMyers.role = "Dr. Evil"
mikeMyers.suit = "Dr. Evil suit"
mikeMyers.age = 35
mikeMyers.getInfo()

//Dr. Evil
mikeMyers.role = "Fat Bastard"
mikeMyers.suit = "Fat Bastard suit"
mikeMyers.age = 50
mikeMyers.getInfo()
