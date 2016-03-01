//: Different between Swift 1.2 and 2.0
import UIKit

//1.println() print()
print("test", terminator:"")
print("test")

//2. Protocol Extension
protocol Name {
    var firstName: String {get set}
    var lastName: String {get set}
}

class Man: Name {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

extension Name {
    func getFio() -> String {
        return "\(firstName) \(lastName)"
    }
}

let man = Man(firstName: "First", lastName: "Last")
man.getFio()

//3. guard
var firstName: String? = "first"
var lastName: String? = "last"
func getFio() -> String? {
    if let first = firstName {
        if let last = lastName {
            return "\(first) \(last)"
        }
        return nil
    }
    return nil
}

getFio()

func newGetFio() -> String? {
    guard let first = firstName else {return nil}
    guard let last = lastName else {return nil}
    return "\(first) \(last)"
}

newGetFio()

//4. defer
func test4() {
    print(1)
    print(2)
    defer {print(3)}
    defer {print(5)}
    print(4)
}

test4()
//5. do
func test5() {
    let text = "text"
    do {
       let text = "new text"
       print(text)
    }
    print(text)
}
test5()
//6. repeat - while
func test6() {
    var i = 0
    repeat {
        print(i)
        i++
    } while i < 5
}
test6()
//7. if case
enum Car {
    case BMW
    case Tesla
}

let car = Car.Tesla

if case .Tesla = car {
    print("Tesla")
}

func test(car: Car) {
    guard case .Tesla = car else {return}
    print("Tesla")
}

test(car)
let car1 = Car.BMW
let array = [car, car1, car1]
for case let .BMW in array {
    print("BMW")
}
//8. if
let num: Int? = 3
let num1: Int? = 7
let num2: Int? = 3

if let num = num, num1 = num1 where num1 > 5, let num2 = num2 {
    print("good")
}
//9 try throws
func number(num: Int) -> Int? {
    if num < 10 {
        return nil
    } else if num > 100 {
        return nil
    } else {
        return num
    }
}

enum MyError: ErrorType {
    case ToSmall
    case ToBig
}

func newNumber(num: Int)throws -> Int? {
    if num < 10 {
        throw MyError.ToSmall
    } else if num > 100 {
        throw MyError.ToBig
    } else {
        return num
    }
}

//print(try! newNumber(9))
//let result = try? newNumber(9)
//print(result)

do {
    let result = try newNumber(-150)
} catch MyError.ToSmall {
    print("to small")
} catch MyError.ToBig {
    print("to big")
}
//10. available
if #available(iOS 9, *) {
    print("ios 9 or up")
} else {
    print("ios 8 or less")
}

//11 Unit 
// @testable import TestApp



