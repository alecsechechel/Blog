//: Chain Of Responsibility
import UIKit

class MoneyPacket {
    let value: Int
    var quantity: Int
    var nextPacket: MoneyPacket?
    
    init(value: Int, quantity: Int, nextPacket: MoneyPacket?) {
        self.value = value
        self.quantity = quantity
        self.nextPacket = nextPacket
    }
    
    func canWithdraw(var v: Int) -> Bool {
        
        func canTakeSameBill(want: Int) -> Bool {
            return (want / self.value) > 0
        }
        
        var q = self.quantity
        
        while canTakeSameBill(v) {
            
            if q == 0 {
                break
            }
            
            v -= self.value
            q -= 1
        }
        
        if v == 0 {
            return true
        } else if let next = self.nextPacket {
            return next.canWithdraw(v)
        }
        
        return false
    }
}

class ATM {
    private var hundred: MoneyPacket
    private var fifty: MoneyPacket
    private var twenty: MoneyPacket
    private var ten: MoneyPacket
    
    private var startPacket: MoneyPacket {
        return self.hundred
    }
    
    init(hundred: MoneyPacket, fifty: MoneyPacket, twenty: MoneyPacket, ten: MoneyPacket) {
        self.hundred = hundred
        self.fifty = fifty
        self.twenty = twenty
        self.ten = ten
    }
    
    func canWithdraw(value: Int) -> String {
        return "Can withdraw: \(self.startPacket.canWithdraw(value))"
    }
}

let ten = MoneyPacket(value: 10, quantity: 100, nextPacket: nil)
let twenty = MoneyPacket(value: 20, quantity: 100, nextPacket: ten)
let fifty = MoneyPacket(value: 50, quantity: 100, nextPacket: twenty)
let hundred = MoneyPacket(value: 100, quantity: 100, nextPacket: fifty)

let atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)

atm.canWithdraw(20000)
atm.canWithdraw(10000)




