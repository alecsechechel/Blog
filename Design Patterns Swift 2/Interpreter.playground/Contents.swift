import UIKit

protocol IntegerExp {
    func evaluate(context: IntegerContext) -> Int
    func replace(character: Character, integerExp: IntegerExp) -> IntegerExp
    func copy() -> IntegerExp
}

class IntegerContext {
    private var data:[Character: Int] = [:]
    
    func lookup(name: Character) -> Int {
        return self.data[name]!
    }
    
    func assign(integerVarExp: IntegerVarExp, value: Int) {
        self.data[integerVarExp.name] = value
    }
}

class IntegerVarExp: IntegerExp {
    let name: Character
    
    init(name: Character) {
        self.name = name
    }
    
    func evaluate(context: IntegerContext) -> Int {
        return context.lookup(self.name)
    }
    
    func replace(character: Character, integerExp: IntegerExp) -> IntegerExp {
        if name == self.name {
            return integerExp.copy()
        } else {
            return IntegerVarExp(name: self.name)
        }
    }
    
    func copy() -> IntegerExp {
        return IntegerVarExp(name: self.name)
    }
}

class AddExp: IntegerExp {
    private var op1: IntegerExp
    private var op2: IntegerExp
    
    init(op1: IntegerExp, op2: IntegerExp) {
        self.op1 = op1
        self.op2 = op2
    }
    
    func evaluate(context: IntegerContext) -> Int {
        return self.op1.evaluate(context) + self.op2.evaluate(context)
    }
    
    func replace(character: Character, integerExp: IntegerExp) -> IntegerExp {
        return AddExp(op1: op1.replace(character, integerExp: integerExp), op2: op2.replace(character, integerExp: integerExp))
    }
    
    func copy() -> IntegerExp {
        return AddExp(op1: self.op1, op2: self.op2)
    }
}

var expression: IntegerExp?
var integerContext = IntegerContext()

var a = IntegerVarExp(name: "a")
var b = IntegerVarExp(name: "b")
var c = IntegerVarExp(name: "c")

expression = AddExp(op1: a, op2: AddExp(op1: b, op2: c)) // a + (b + c)

integerContext.assign(a, value: 2)
integerContext.assign(b, value: 6)
integerContext.assign(c, value: 3)

var result = expression?.evaluate(integerContext)











