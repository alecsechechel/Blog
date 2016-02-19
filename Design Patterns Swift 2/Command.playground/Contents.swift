// Command
import UIKit

protocol Command {
    func execute() -> String
}

class OnCommand: Command {
    let devices: String
    
    required init(devices: String) {
        self.devices = devices
    }
    
    func execute() -> String {
        return "On \(devices)"
    }
}

class OffCommand: Command {
    let devices: String
    
    required init(devices: String) {
        self.devices = devices
    }
    
    func execute() -> String {
        return "Off \(devices)"
    }
}

class Device {
    let onCommand: Command
    let offCommand: Command
    
    init(devices: String) {
        self.onCommand = OnCommand(devices: devices)
        self.offCommand = OffCommand(devices: devices)
    }
    
    func off() -> String {
        return offCommand.execute()
    }
    
    func on() -> String {
        return onCommand.execute()
    }
}

let tv = Device(devices: "Samsung")
tv.off()
tv.on()

let phone = Device(devices: "iPhone")
phone.on()
phone.off()







