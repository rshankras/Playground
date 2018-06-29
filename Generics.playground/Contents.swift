import UIKit

var numbers = [23,45,56,78,98]

// reverse array with numbers

func reverseNumber(items: [Int]) -> [Int] {
    return items.reversed()
}

reverseNumber(items: numbers)

let strTemp = ["Deepak","John","Steve","Ravi","Ganesh"]

// reverse array with String

func reverseString(items: [String]) -> [String] {
    return items.reversed()
}

reverseString(items: strTemp)


func reverseItems<T>(items:[T])-> [T] {
    return items.reversed()
}

reverseItems(items: strTemp)
reverseItems(items: numbers)

class ReverseDemo<P> {
    
    func reverseItems(items:[P])-> [P] {
        return items.reversed()
    }
}

let reverseDemo = ReverseDemo<String>()

reverseDemo.reverseItems(items: strTemp)

let reverseDemoNumber = ReverseDemo<Int>()

reverseDemoNumber.reverseItems(items: numbers)

// operations using Generic Numbers.

protocol Multipliable {
    static func *(lhs:Self, rhs: Self) -> Self
}

func squareOfNumber<M:Multipliable>(number:M)  -> M{
    return number * number
}

extension Int: Multipliable {}
extension Float: Multipliable {}

squareOfNumber(number: 20)





