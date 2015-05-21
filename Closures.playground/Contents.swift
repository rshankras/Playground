//: Playground - noun: a place where people can play

import UIKit

// Closures are set of codes which are passed around within your code. Swift closures are knownn as blocks in Objective-c

// Closure Syntax

//    { (parameters) -> return type in
//        statements
//}


// Inferred Syntax

// Tralining Closure 

// Implicit Returns

// Shorthand argument names

// Operator functions

/*

var greetings = { (name:String, message:String) -> (String) in
     message + " " + name + " !!!"
}

greetings("Ravi","Welcome")
*/


// Type inferred

/*

var greetings =  { (name, message) -> (String) in
    return message + " " + name + " !!!"
}

greetings("Ravi","Welcome")

*/

// implicit return

/*

var greetings =  { (name, message) in
    println(message + " " + name + " !!!")
}

greetings("Ravi","Welcome")

*/

// sort function

/*

var names = ["Ricky","Kallis","Morgan","Miller","Fletcher"]

names.sort { (item1: String, item2: String) -> Bool in
    return item1 < item2
}

names.sort { (item1, item2) -> Bool in
    item1 < item2
}

names.sort { $0 < $1 }

*/

/*

var numbers = [23,45,67,89,89,78]

numbers.sort { (number1, number2) -> Bool in
    return number1 < number2
}

numbers.sort { (number1, number2) -> Bool in
    number1 < number2
}

numbers.sort { $0 < $1 }

*/

struct Person {
    var name: String
    var age: Int
    
    func toString() {
        println("Name \(name), Age \(age)")
    }
}

let rodrigo = Person(name: "Rodrigo Alves", age: 21)
let pedro = Person(name: "Pedro Bello", age: 26)
let julio = Person(name: "Julio Fontes", age: 32)
let alan = Person(name: "Alan Gomes", age: 25)
let lucas = Person(name: "Lucas Queiroz", age: 25)

var people = [rodrigo, pedro, julio, alan, lucas]

var sortedPeople = people.sorted() { $0.age < $1.age } // does not seem to work

for item in sortedPeople {
    item.toString()
}


