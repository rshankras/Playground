//: # Swift Basics Playground
//:
//: This playground demonstrates fundamental concepts in Swift programming.

//: ## Variables and Constants

//: Use 'var' for mutable variables and 'let' for immutable constants
var myName = "Ravi" // Mutable variable
let pi = 3.14 // Immutable constant

//: Swift uses type inference to automatically detect types
var myStr = "Swift"
var myValue = 23.1 // Inferred as Double

//: You can also explicitly declare types
var myDoubleValue: Double = 23

//: ## String Interpolation

let age = 38
let message = "My age is \(age)"

//: ## Basic Data Types

let cityName: String = "Mumbai"
let population: Int = 20_000_000
let temperature: Double = 26.7
let hasMonsoon: Bool = true

//: ## Collections

//: ### Arrays

var fruits: [String] = ["Orange", "Apple", "Grapes"]

//: Array operations
fruits.insert("Mango", at: 2)
fruits.append("Pineapple")
let count = fruits.count
fruits.remove(at: 1)

//: Sorting
fruits.sort()

//: Finding an element
if let mangoIndex = fruits.firstIndex(of: "Mango") {
    print("Mango found at index: \(mangoIndex)")
} else {
    print("Mango not found")
}

//: ### Sets

var colors: Set<String> = ["Red", "Green", "Blue"]

//: Adding elements
colors.insert("Yellow")

//: Removing elements
colors.remove("Green")

//: Checking membership
if colors.contains("Red") {
    print("Set contains Red")
}

//: Set operations
let primaryColors: Set<String> = ["Red", "Blue", "Yellow"]
let secondaryColors: Set<String> = ["Green", "Purple", "Orange"]

let allColors = primaryColors.union(secondaryColors)
let commonColors = primaryColors.intersection(secondaryColors)
let uniqueToSecondary = secondaryColors.subtracting(primaryColors)

//: ### Dictionaries

var employees: [Int: String] = [1: "John", 2: "Peter", 3: "David"]

//: Dictionary operations
employees[4] = "Bob"
employees.removeValue(forKey: 3)

//: Iterating over a dictionary
for (id, name) in employees {
    print("Employee \(id): \(name)")
}

//: ## Control Flow

//: If-else statement
if fruits[0] == "Grapes" {
    print("for breakfast")
} else if fruits[0] == "Apple" {
    print("for lunch")
} else {
    print("Nothing")
}

//: For loop
for fruit in fruits {
    print(fruit)
}

//: While loop
var counter = 0
while counter < 5 {
    print("Counter is \(counter)")
    counter += 1
}

//: Switch statement
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

//: ## Functions

//: Basic function
func sum(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

//: Function with default parameter
func greet(name: String = "Guest") -> String {
    return "Hello, \(name)!"
}

//: Function with external parameter names and variadic parameters
func calculate(using operation: String, on numbers: Int...) -> Int {
    switch operation {
    case "add":
        return numbers.reduce(0, +)
    case "subtract":
        return numbers.reduce(0, -)
    case "multiply":
        return numbers.reduce(1, *)
    case "divide":
        return numbers.reduce(numbers[0] * numbers[0]) { $0 / $1 } // Avoids division by 0, assuming non-zero numbers
    default:
        print("Invalid operation")
        return 0
    }
}

//: Example usage:
let result = calculate(using: "add", on: 10, 20, 30)
print("Result: \(result)") // Output: Result: 60

//: Function with variadic parameters
func totalSum(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(totalSum(numbers: 1, 2, 3, 4, 5))

//: Function with inout parameter
func increment(number: inout Int) {
    number += 1
}
var value = 5
increment(number: &value)
print(value) // Output: 6

//: ## Operators

//: Ternary operator
let score = 64
let examResult = (score >= 60) ? "Pass" : "Fail"

//: ## Optionals

var optionalName: String? = "John"
//optionalName = nil // This is valid

//: Optional binding
if let name = optionalName {
    print("Hello, \(name)")
} else {
    print("Hello, anonymous")
}

//: Optional chaining
let uppercase = optionalName?.uppercased()

//: Nil-coalescing operator
print(uppercase ?? "")

//: [Learn more about Swift Basics](https://rshankar.com/swift-quick-reference/)
