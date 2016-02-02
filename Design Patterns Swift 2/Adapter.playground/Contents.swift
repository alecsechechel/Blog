//Структурные паттерны - Адаптер
import UIKit

protocol Celsius {
    var сelsius: Double {get}
}

class NormalThermometer: Celsius {
    var сelsius: Double
    
    init(celsius: Double) {
        self.сelsius = celsius
    }
}

class Temperature {
    var thermometer: Celsius
    
    func weather() -> String {
        switch thermometer.сelsius {
        case -100 ..< -5.0: return "\(thermometer.сelsius) - Cold"
        case -5.0 ..< 5: return "\(thermometer.сelsius) - Normal"
        case 5 ... 20: return "\(thermometer.сelsius) - Warm"
        default: return "\(thermometer.сelsius) - Hot"
        }
    }
    
    init(thermometer: Celsius) {
        self.thermometer = thermometer
    }
}

//F = C * 1.8000 + 32.00
class FahrenheitThermometer {
    var fahrenheit: Double
    
    init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
    }
}

class Adapter: Celsius {
    private let target: FahrenheitThermometer
    var сelsius: Double {
        return (target.fahrenheit - 32) / 1.8
    }
    
    
    init(target: FahrenheitThermometer) {
        self.target = target
    }
}

let normal = NormalThermometer(celsius: -15)
let temp = Temperature(thermometer: normal)
temp.weather()
let new = FahrenheitThermometer(fahrenheit: 50)
let temp1 = Temperature(thermometer: Adapter(target: new))
temp1.weather()





