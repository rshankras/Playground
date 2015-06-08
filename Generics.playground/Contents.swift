import UIKit

let numbers = [23,45,56,78,98]

// reverse array with numbers

func reverseNumber(items: Array<Int>) -> Array<Int> {
    return items.reverse()
}

reverseNumber(numbers)

let strTemp = ["Deepak","John","Steve","Ravi","Ganesh"]

// reverse array with String

func reverseString(items: Array<String>) -> Array<String> {
    
    var temp = Array<String>()
    return items.reverse()
}

reverseString(strTemp)

func reverseItems<T>(items:[T])-> [T] {
    return items.reverse()
}

reverseItems(strTemp)
reverseItems(numbers)

class ReverseDemo<P> {
    
    func reverseItems(items:[P])-> [P] {
        return items.reverse()
    }
}

let reverseDemo = ReverseDemo<String>()

reverseDemo.reverseItems(strTemp)





