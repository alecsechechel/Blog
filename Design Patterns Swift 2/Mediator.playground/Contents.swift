//: Mediator
import UIKit

class Sensor {
    let mediator: Mediator
    
    init(mediator: Mediator) {
        self.mediator = mediator
    }
    
    func send(message: String) {
        mediator.send(message, sensor: self)
    }
    
    func receive(message: String, sensor: Sensor) {}
}

protocol Mediator {
    func send(message: String, sensor: Sensor)
}

class Computer: Mediator {
    private var sensors = [Sensor]()
    
    func addSensor(sensor: Sensor) {
        sensors.append(sensor)
    }
    
    func send(message: String, sensor: Sensor) {
        for s in sensors {
            if s !== sensor {
                sensor.receive(message, sensor: s)
            }
        }
    }
}

class ConcreteSensor: Sensor {
    let name: String
    
    init(name: String, mediator: Mediator) {
        self.name = name
        super.init(mediator: mediator)
    }
    
    override func receive(message: String, sensor: Sensor) {
        guard let sensor = sensor as? ConcreteSensor else {return}
        print("Sensor \(sensor.name) received: \(message)")
    }
}

let computer = Computer()

let camera = ConcreteSensor(name: "camera", mediator: computer)
let radar = ConcreteSensor(name: "radar", mediator: computer)
let gps = ConcreteSensor(name: "gps", mediator: computer)

computer.addSensor(camera)
computer.addSensor(radar)
computer.addSensor(gps)

gps.send("lat: 20.34, lon: 50.23")










