import UIKit

/* Tuples */

/*

let employee = (103, "Deepak")

employee.0
employee.1

*/

// Tuples parameter with names

/*

let employee = (id:103, name:"Deepak")

employee.id
employee.name

*/


// Tuples parameter with names and data type

/*

let employee:(id:Int, name:String) = (102, "Deepak")

employee.id
employee.name


*/


// Tuples with Switch 

/*

let employee:(id:Int, name:String) = (102, "Deepak")

switch (employee) {
case (103...105,_):
    println("developer")
case (106...108,_):
    println("tester")
case (_,"Deepak"):
    println("CEO")
default:
    println("Contractor")
}

*/

/* Enum */

/* Introduction, why you need enums

let attachmentTypePDF = 1
let attachmentTypePNG = 2
let attachmentTypeTxt = 3

enum AttachmentType {
    case PMG, PDF, Txt
}

let type = AttachmentType.PDF

let type: AttachmentType = .PDF

*/

/*

enum Month: String {
    case January = "January", February = "February", March = "March", April = "April", May = "May", June = "June", July = "July", August = "August", September = "September", October = "October", November = "November", December = "December"
}
*/

//let currentMonth = Month.May

//let currentMonth:Month = .May

//currentMonth.rawValue

// enum with associated values

/*
enum Month {
    case January(String), February(String), March(String), April(String), May(String), June(String), July(String), August(String), September(String), October(String), November(String), December(String)
}

let currentMonth:Month = .May("Summer Vacation")

switch currentMonth {
case .May(let message):
        println(message)
default:
    println("No Values")
}

*/

// enum with member function

/*

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
    
    func monthsLeftForYearEnd() -> Int {
       return Month.December.rawValue - self.rawValue
    }
}

let month: Month = .May

month.monthsLeftForYearEnd()

*/

// enum with init

/*

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
    
    init() {
        self = .July
    }
    
    func monthsLeftForYearEnd() -> Int {
        return Month.December.rawValue - self.rawValue
    }
}

let month = Month()

month.monthsLeftForYearEnd()

*/


// Protocols

/*

protocol LivingThings {
    func eat() -> String
}

class Animal: LivingThings {
    
    func eat() -> String {
        return "Animal Food"
    }
}

class Human: LivingThings {
    
    func eat() -> String {
        return "Human Food"
    }
}

let john = Human()

john.eat()

let cat = Animal()

cat.eat()

*/

// Protocol with Optional methods


/*

protocol LivingThings {
    func eat() -> String
}


@objc protocol Speakable {
    optional func speak() -> String
}

class Human: LivingThings, Speakable {

    func eat() -> String {
        return "Human Food"
    }
    
    func speak() -> String {
        return "Human can Speak"
    }
}

let john = Human()

john.eat()

john.speak()

*/


// Protocol for implementing delegate pattern

/*

protocol ImportDataDelegate {
    func startImport()
    
    func finishedImport()
}

class DataImport: ImportDataDelegate {
    
    func startImport() {
        println("Import started")
    }
    
    func finishedImport() {
        println("Import finished")
    }
}

class DemoImport {
    var delegate: ImportDataDelegate?
    
    func startProcess() {
        delegate?.startImport()
        println("Doing some work ...")
        delegate?.finishedImport()
    }
}

let demoImport = DemoImport()

demoImport.delegate = DataImport()

demoImport.startProcess()

*/




