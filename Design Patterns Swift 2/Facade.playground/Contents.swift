//Структурные паттерны - Фасад
import UIKit

class DiscountDepartment {
    func getDiscount(count: Int) -> Double {
        switch count {
        case 1: return 0
        case 2...5: return 10
        default: return 20
        }
    }
}

class OrderDepartment {
    func getPrice(count: Int) -> Double {
        return Double(count * 50)
    }
}

class DeliveryDepartment {
    func getTimeDelivery(address: String) -> Int {
        if address == "Kiev" {
            return 40
        } else {
            return 120
        }
    }
}

class PizzaServices {
    let discount: DiscountDepartment
    let order: OrderDepartment
    let delivery: DeliveryDepartment
    
    init(discount: DiscountDepartment, order: OrderDepartment, delivery: DeliveryDepartment) {
        self.delivery = delivery
        self.discount = discount
        self.order = order
    }
    
    func getInfo(count: Int, address: String) -> (Double, Int) {
        let regularPrice = order.getPrice(count)
        let discountPrice = discount.getDiscount(count)
        let price = regularPrice - regularPrice * discountPrice / 100
        let timeDelivery = delivery.getTimeDelivery(address)
        return (price, timeDelivery)
    }
}

let callCenter = PizzaServices(discount: DiscountDepartment(), order: OrderDepartment(), delivery: DeliveryDepartment())

let client1 = callCenter.getInfo(5, address: "Kiev")
let client2 = callCenter.getInfo(9, address: "Sumy")








