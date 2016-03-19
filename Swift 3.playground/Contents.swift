1//Swift 3.0
import UIKit

//1. ++ --
//var i = 1
//i += 1
//++i
//print(i)
//if i > 2 {
//    defer{i += 1}
//    i
//}

//2. loop C-style
//for var i = 1; i <= 10; i += 1 {
//    print(i)
//}

//for i in 1..<10 {
//    print(i)
//}
//
//for i in (1...10).reverse() {
//    print(i)
//}
//
//let array = [1,2,3]
//for i in array {
//    print(i)
//}
//
//array.forEach { (var i) -> () in
//    print(i)
//}

//3. removeFirst()
//var array: [Int] = Array(1...10)
//array.removeFirst()
//array

//4. compare tuples
//let tup1 = ("test", "test1")
//let tup2 = ("test", "test1")
//
////if tup1 == tup2 {
////    print("good")
////}

//5. Tuple splat
//func test(par: String, par1: Int) {
//    print("\(par) + \(par1)")
//}
//let tuple = ("test",par1: 5)
//test(tuple)

//6. More keywords : repeat, do, by, through
//func test(number: Int, repeat count: Int) {
//    for _ 0..< count {
//        print(number)
//    }
//}
//test("Taylor", repeat: 5)

//7. var
//var name = "test"
//func test(var name: String) {
//    name = name.uppercaseString
//    print(name)
//}
//test(name)
//print(name)

//8.#line, #function, #file
//func test() {
//    print("name - \(__FILE__)")
//}
//print("\(#line)")
//test()

//9. selector

//let button = UIBarButtonItem(image: nil, style: .Plain, target: self, action: "button")
//#selector(button)
//func button() {
//
//}

//10.version
//#if swift(>=2.2)
//    print("new")
//#else
//    print("old")
//#endif
