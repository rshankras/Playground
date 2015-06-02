//: Playground - noun: a place where people can play

import UIKit


let numbers = [23,45,56,78,98]

// reverse array with numbers

func reverseNumber(items: Array<Int>) -> Array<Int> {
    
    var temp = Array<Int>()
    
    for item in reverse(items) {
        temp.append(item)
    }
    
    return temp
}

reverseNumber(numbers)

let strTemp = ["Deepak","John","Steve","Ravi","Ganesh"]

// reverse array with String

func reverseString(items: Array<String>) -> Array<String> {
    
    var temp = Array<String>()
    
    for item in reverse(items) {
        temp.append(item)
    }
    
    return temp
}

reverseString(strTemp)

/*

func reverseItems<T>(items:[T])-> [T] {
    
    var temp = Array<T>()
    
    for item in reverse(items) {
        temp.append(item)
    }
    
    return temp
}

reverseItems(strTemp)
reverseItems(numbers)

*/

class ReverseDemo<P> {
    
    func reverseItems(items:[P])-> [P] {
        
        var temp = Array<P>()
        
        for item in reverse(items) {
            temp.append(item)
        }
        
        return temp
    }
}

let reverseDemo = ReverseDemo<String>()

reverseDemo.reverseItems(strTemp)





