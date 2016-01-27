//2. The Open Closed Principle

import UIKit

protocol CanWriteCode {
    func programming() -> String
}

class IosDeveloperCool: CanWriteCode {
    func programming() -> String {
        return "Swift"
    }
}

class IosDeveloper: CanWriteCode {
    func programming() -> String {
        return "Object-C"
    }
}

class WebDeveloper: CanWriteCode {
    func programming() -> String {
        return "Ruby"
    }
}

class Team {
    let ios: [IosDeveloper]
    let iosCool: [IosDeveloperCool]
    
    init(ios: [IosDeveloper], iosCool: [IosDeveloperCool]) {
        self.ios = ios
        self.iosCool = iosCool
    }
    
    func programming() -> [String] {
        return ios.map { $0.programming() } + iosCool.map { $0.programming() }
    }
}

class CoolTeam {
    let team: [CanWriteCode]
    
    init(team: [CanWriteCode]) {
        self.team = team
    }
    
    func programming() -> [String] {
        return team.map { $0.programming() }
    }
}

let ios1 = IosDeveloper()
let ios2 = IosDeveloper()

let iosCool1 = IosDeveloperCool()

let team = Team(ios: [ios1, ios2], iosCool: [iosCool1])
team.programming()

let web = WebDeveloper()

let coolTeam = CoolTeam(team: [ios1, iosCool1, web])
coolTeam.programming()










