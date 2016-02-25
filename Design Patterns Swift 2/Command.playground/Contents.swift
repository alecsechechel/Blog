// Command
import UIKit

protocol Command {
    func execute() -> String
}

class OnCommand: Command {
    let devices: String
    
    init(devices: String) {
        self.devices = devices
    }
    
    func execute() -> String {
        return "On \(devices)"
    }
}

class OffCommand: Command {
    let devices: String
    
    init(devices: String) {
        self.devices = devices
    }
    
    func execute() -> String {
        return "Off \(devices)"
    }
}

class Devices {
    let onCommand: Command
    let offCommand: Command
    
    init(devices: String) {
        self.onCommand = OnCommand(devices: devices)
        self.offCommand = OffCommand(devices: devices)
    }
    
    func on() -> String {
        return onCommand.execute()
    }
    
    func off() -> String {
        return offCommand.execute()
    }
}

let tv = Devices(devices: "Samsung")
tv.on()
tv.off()





