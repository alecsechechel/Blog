//Bridge
import UIKit

//7
class TypeCar {
    var breakPedal: Bool
    var gasPedal: Bool
    var steeringWheel: Bool
    var price: Double
    
    init(breakPedal: Bool, gasPedal: Bool, steeringWheel: Bool, price: Double) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steeringWheel = steeringWheel
        self.price = price
    }
}

class Truck: TypeCar {}
class Passanger: TypeCar {}

class BMWTruck: Truck {}
class MercedesTruck: Truck {}

class BMWPassanger: Passanger {}
class MercedesPassanger: Passanger {}

//Volkswagen 9
class VolkswagenTrack: Truck {}
class VolkswagenPassanger: Passanger {}

//bus 13
class Bus: TypeCar {}

class BMWBus: Bus {}
class MercedesBus: Bus {}
class VolkswagenBus: Bus {}

let bmv = BMWPassanger(breakPedal: true, gasPedal: true, steeringWheel: true, price: 20000)

//Bridge
//*** abstraction
protocol NewTypeCar {
    var breakPedal: Bool {get set}
    var gasPedal: Bool {get set}
    var steeringWheel: Bool {get set}
}

class NewTruck: NewTypeCar {
    var breakPedal: Bool
    var gasPedal: Bool
    var steeringWheel: Bool
    
    init(breakPedal: Bool, gasPedal: Bool, steeringWheel: Bool) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steeringWheel = steeringWheel
    }
}

class NewPassanger: NewTypeCar {
    var breakPedal: Bool
    var gasPedal: Bool
    var steeringWheel: Bool
    
    init(breakPedal: Bool, gasPedal: Bool, steeringWheel: Bool) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steeringWheel = steeringWheel
    }
}

class NewBus: NewTypeCar {
    var breakPedal: Bool
    var gasPedal: Bool
    var steeringWheel: Bool
    
    init(breakPedal: Bool, gasPedal: Bool, steeringWheel: Bool) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steeringWheel = steeringWheel
    }
}
// ***

// *** implementetion
protocol Price {
    var car: NewTypeCar {get set}
    var price: Double {get set}
}

class BMW: Price {
    var price: Double
    var car: NewTypeCar
    
    init(price: Double, car: NewTypeCar) {
        self.price = price
        self.car = car
    }
}

class Mercedes: Price {
    var price: Double
    var car: NewTypeCar
    
    init(price: Double, car: NewTypeCar) {
        self.price = price
        self.car = car
    }
}

class Volkswagen: Price {
    var price: Double
    var car: NewTypeCar
    
    init(price: Double, car: NewTypeCar) {
        self.price = price
        self.car = car
    }
}

let newBMW = BMW(price: 50000, car: NewPassanger(breakPedal: true, gasPedal: true, steeringWheel: true))
// ***
