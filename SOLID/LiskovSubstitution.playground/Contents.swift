//3. Liskov substitution principle
//Наследующий класс должен дополнять, а не замещать поведение базового класса.

import UIKit

class Bird {
    var name: String
    var flySpeed: Double
    
    init(name: String, flySpeed: Double) {
        self.name = name
        self.flySpeed = flySpeed
    }
}

class Eagle: Bird {
}

class Penguin: Bird {
    var swimSpeed: Double
    
    init(name: String, flySpeed: Double, swimSpeed: Double) {
        self.swimSpeed = swimSpeed
        super.init(name: name, flySpeed: flySpeed)
    }
}

let eagle = Eagle(name: "Eagle", flySpeed: 25)
//let penguin = Penguin(name: "Penguin", flySpeed: "can't fly", swimSpeed: 10)

protocol CanFly {
    var flySpeed: Double {get set}
}

protocol CanSwim {
    var swimSpeed: Double {get set}
}

class GeneralBirds {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class GoodEagle: GeneralBirds, CanFly {
    var flySpeed: Double
    init(flySpeed: Double, name: String) {
        self.flySpeed = flySpeed
        super.init(name: name)
    }
}

class GoodPenguin: GeneralBirds, CanSwim {
    var swimSpeed: Double
    
    init(name: String, swimSpeed: Double) {
        self.swimSpeed = swimSpeed
        super.init(name: name)
    }
}







