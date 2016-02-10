//: Декоратор
import UIKit

protocol IceCream {
    func getCost() -> Double
    func getIngredients() -> String
}

class SimpleIceCream: IceCream {
    func getCost() -> Double {
        return 10.0
    }
    
    func getIngredients() -> String {
        return "iceCream"
    }
}

class IceCreamDecorator: IceCream {
    private let decoratedIceCream: IceCream
    private let ingredientSeparator = ", "
    
    required init(decoratedIceCream: IceCream) {
        self.decoratedIceCream = decoratedIceCream
    }
    
    func getCost() -> Double {
        return decoratedIceCream.getCost()
    }
    
    func getIngredients() -> String {
        return decoratedIceCream.getIngredients()
    }
}

class Bananas: IceCreamDecorator {
    required init(decoratedIceCream: IceCream) {
        super.init(decoratedIceCream: decoratedIceCream)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 3.5
    }
    
    override func getIngredients() -> String {
        return super.getIngredients() + ingredientSeparator + "Bananas"
    }
}

class Shokolod: IceCreamDecorator {
    required init(decoratedIceCream: IceCream) {
        super.init(decoratedIceCream: decoratedIceCream)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 5
    }
    
    override func getIngredients() -> String {
        return super.getIngredients() + ingredientSeparator + "Shokolod"
    }
}

var ice: IceCream = SimpleIceCream()
ice.getCost()

ice = Shokolod(decoratedIceCream: ice)
ice.getCost()

ice = Bananas(decoratedIceCream: ice)
ice.getCost()
ice.getIngredients()
















