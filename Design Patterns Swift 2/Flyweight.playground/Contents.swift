//Flyweight
import UIKit

class MikeMyers {
    
    let name: String
    let skills: Int
    
    var role: String?
    var age: Int?
    
    init() {
        self.name = "Mike Myers"
        self.skills = 80
        print("Created object")
    }
    
    func getInfo() -> String {
        if let role = role, let age = age {
            return "Role - \(role), age - \(age)"
        } else {
            return "No role"
        }
    }
}

let mike = MikeMyers()
mike.getInfo()

mike.role = "Dr. Evil"
mike.age = 55
mike.getInfo()

mike.role = "Austin Pawers"
mike.age = 25
mike.getInfo()

mike.role = "Fat Man"
mike.age = 50
mike.getInfo()






























