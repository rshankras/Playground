import UIKit

extension String {
    static func fromDouble(doubleValue: Double) -> String {
        let temp = String(format: "%.2f", doubleValue)
        return temp as String
    }
}


String.fromDouble(24.50)

struct Person {
    
    var name: String
    
    func printName() {
        print(name)
    }
}


extension Person {
    
    func sayHello() {
        print("Hello")
    }
}


let satya = Person(name: "Satya")


satya.sayHello()
