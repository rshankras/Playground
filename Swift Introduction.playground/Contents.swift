import UIKit

//: Variables and Constants

var myStr = "Swift"
var myValue = 23.1 //(Implicit variable declaration or type inference)
var myDoubleValue: Double = 23 //(Explicit variable declaration)

//: let

let myAge = 38
let message = "My age is " + String(myAge) //(Converting value to a String)
let newMessage = "My age is \(myAge)" //(Converting value to a String using backslash or interpolation

//: String
var movie:String = "Independence Day "

movie.characters.count // count of string

// Use NSString to format a double or float value
var range = NSString(format: "%.2f", 24.5)

// Concatenate String values
movie += "\(range)"

//: Array

// Declarations

//var fruits = ["Orange", "Apple", "Grapes"] //– Short declartion
//var fruits:Array<String> = ["Orange","Apple", "Grapes"] //– Long declaration
// var fruits:[String] = [] – Assign empty array

var fruits:[String] = ["Orange", "Apple", "Grapes"] // short declaration with type.

// insert item at index
fruits.insert("Mangoes", atIndex: 2)

// append item to the last
fruits.append("Pine Apple")

// count of array
fruits.count

// remove item
fruits.removeAtIndex(1)

// sort array elements
fruits.sort { (a, b) -> Bool in
    a > b
}

// retrieve index using find
fruits.indexOf("Mangoes")

//: Dicionary

// Declaration

// var employees = [1:"John",2:"Peter",3:"David"] // Short form

// var employees:Dictionary<Int, String> = [1:"John",2:"Peter",3:"David"] // Long form

//var employees:[Int:String] = Dictionary() // Empty dictionary

var employees:[Int:String] = [1:"John",2:"Peter",3:"David"] //Short form with type


// Add new item to dictionary
employees[4] = "Bob"

// Remove an item using key
employees.removeValueForKey(3)


//: Control flow

// if else
if fruits[0] == "Grapes" {
    print("for breakfast")
} else if fruits[0] == "Apple" {
    print("for lunch")
} else {
    print("Nothing")
}

// for statements

// exclusive range
for index in 0..<fruits.count {
    print(fruits[index])
}

// inclusive range
for index in 0...fruits.count-1 {
    print(fruits[index])
}

// iterate array items
for fruit in fruits {
    print(fruit)
}

// traditional for statement
for var index=0; index < fruits.count; index++ {
    print(fruits[index])
}

// switch case
var index:Int = 3

// supports more than 1 value
// no need of break statement

switch index {
case 1:
    print("for breakfast")
case 3:
    print("for evening")
case 2, 4 :
    print("for lunch")
default :
    print("None")
}
// while and repeat while

index = 0
while index < fruits.count {
    print(fruits[index])
    index++
}

index = 0
repeat {
    print(fruits[index])
    index++
} while index < fruits.count

//: functions

// with and without paramters

func sum(number1:Int, number2: Int) -> (Int) {
    return number1 + number2
}

func sum() -> (Int) {
    return 10 + 5
}

// function with external paramter name

func sum(addNumber1 number1:Int, withNumber2 number2: Int) -> (Int) {
    return number1 + number2
}

print(sum(10, number2: 20))

print(sum(addNumber1: 10, withNumber2: 20))

// function with same local and external paramter name

func sum(number1 number1:Int, withNumber2: Int) -> (Int) {
    return number1 + withNumber2
}

print(sum(number1: 10, withNumber2: 20))

// function with default paramter value

func sum(number1:Int, withNumberDefault2: Int = 10) -> (Int) {
    return number1 + withNumberDefault2
}
print(sum(10))

// function with variadic paramters

//: Variadic parameters
func totalSum(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
totalSum(1,2,3,4,5,6,7,8, 9, 10)

// functon with inout paramters

var employee = "John"
func greetings(inout temp:String) {
    temp += "!"
}

func displayMessage(name: String) {
    print(employee + name)
}

greetings(&employee)

print(employee)

displayMessage("Hamja")

/*
var employee1 = "John"
func greetings(var temp:String) {
    temp += "!"
}

greetings(employee1)

print(employee1)
*/

