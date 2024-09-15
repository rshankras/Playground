//: Playground - noun: a place where people can play

import UIKit

// Closure Syntax

/*
  { (parameters) -> return type in
        statements
}
*/


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


// Implicit return

var numbers = [23,45,67,89,89,78]

numbers.sort { (number1, number2) -> Bool in
    return number1 > number2
}


// numbers.sort { number1, number2 in return number1 < number2 }

numbers.sort { number1, number2 in number1 < number2 }

// Shorthand argumnent syntax
numbers.sort { $0 > $1 }


// sort function


var names = ["Ricky","Kallis","Morgan","Miller","Fletcher"]

names.sort { (item1: String, item2: String) -> Bool in
return item1 < item2
}

names.sort { (item1, item2) -> Bool in
item1 < item2
}

names.sort { $0 < $1 }

names



func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
    URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            completion(.failure(error))
        } else if let data = data {
            completion(.success(data))
        }
    }.resume()
}

let url = URL(string: "https://api.example.com/data")!
fetchData(from: url) { result in
    switch result {
    case .success(let data):
        print("Received data: \(data)")
    case .failure(let error):
        print("Error: \(error)")
    }
}






