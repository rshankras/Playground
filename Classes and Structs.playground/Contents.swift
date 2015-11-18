import UIKit
import XCPlayground

// Create a class with properties and methods
// Create a sub class and override the methods
// designated and convenience initializer
// properties, lazy, computed, willSet and didSet
// Struct, api call, mutaing keyword, pass by value and pass by reference.

/* Swift Class examaple

class Rectangle {
    
    var name:String = ""
    var length:Double = 0
    var breadth:Double = 0
    
    func area() -> Double {
        return length * breadth
    }
    
    func draw() -> String {
        return "Draw rectangle with area \(area()) "
    }
}

let rect = Rectangle()

rect.length = 20
rect.breadth = 10

rect.draw()


class Square {
    
    var name:String = ""
    var length:Double = 0
    
    func area() -> Double {
        return length * length
    }
    
    func draw() -> String {
        return "Draw a square with area \(area()) "
    }
}

let squr = Square()

squr.length = 20

squr.draw() */


/* class inheritance. */

/*
class Shape {
    var name: String = ""
    
    func area() -> Double {
        return 0
    }
    
    func draw() -> String {
        return "Draw a \(name) with area \(area()) "
    }
}

class Square:Shape {
    
    var length: Double = 0
    
    override func area() -> Double {
        return length * length
    }
    
}

let squr = Square()

squr.name = "My Square"
squr.length = 5
squr.draw()


class Rectangle:Shape {
    
    var length: Double = 0
    var breadth: Double = 0
    
    override func area() -> Double {
        return length * breadth
    }
}

let rect = Rectangle()

rect.name = "My Rectangle"
rect.length = 5
rect.breadth = 10
rect.draw()
*/

/* Class initializers

class Shape {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func area() -> Double {
        return 0
    }
    
    func draw() -> String {
        return "Draw a \(name) with area \(area()) "
    }
}

class Square: Shape {
    
    var length: Double = 0
    
    init() {
        super.init(name: "MySquare")
    }
    
    
    override func area() -> Double {
        return length * length
    }
    
    override func draw() -> String {
        return "Draw a \(name) with area \(area()) "
    }
}

let squr = Square()

squr.length = 10
squr.draw()

*/


/* Designated and Convenience Initializers

class Shape {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func area() -> Double {
        return 0
    }
    
    func draw() -> String {
        return "Draw a \(name) with area \(area()) "
    }
}

class Square: Shape {
    
    var length: Double
    
    // Designated Initializer
    
    init(length:Double, name:String) {
        self.length = length
        super.init(name: name)
    }
    
    // Convenience Initializer
    
    convenience init(length: Double) {
        self.init(length:length, name:"MySquare")
    }
    
    override func area() -> Double {
        return length * length
    }
    
    override func draw() -> String {
        return "Draw a \(name) with area \(area()) "
    }
}

let squr = Square(length: 10,name: "MySquare")

squr.draw()


let squrNew = Square(length: 20)

squrNew.draw() */


/* Computed Property

class Sqaure {
    
    var length: Double = 0

    
    var area: Double {
        get {
            return length * length
        }
        set (newArea) {
            self.length = sqrt(newArea)
        }
    }
}

let square = Sqaure()
square.area = 4 // set call

square.length = 6 // set call length
square.length // get call


square.area // get call

*/

/* lazy property

class Person {
    
    var name: String

    init (name: String) {
        self.name = name
    }
    
    lazy var message: String = self.getMessage()
    
    func getMessage() -> String {
        return "Hello \(name)"
    }
}

let person = Person(name: "Jason")

person.message

*/

/* Property Observers */
/*

class Square {

    var length: Double = 0 {
        willSet(newLength) {
            print("Setting length \(self.length) to new length \(newLength)")
        }
        didSet {
            print("Length is modified - do some action here")
        }
    }
    
    var area: Double {
        get {
            return length * length
        }
        set (newArea) {
            self.length = sqrt(newArea)
        }
    }
}

let square = Square()
square.length = -6

square.area

square.length = 5
*/


/* Struct example for retrieving Geoip details */

/*

struct GeoDetails {
    
    var country: String
    var ip: String
    var isp: String
    var latitude: Double
    var longitude: Double
    var timeZone: String
    
    init(country: String, ip: String, isp: String, latitude:Double, longitude:Double, timeZone:String) {
        
        self.country = country
        self.ip = ip
        self.isp = isp
        self.latitude = latitude
        self.longitude = longitude
        self.timeZone = timeZone
    }
    
    func description() -> String {
        return "Country " + self.country + ", ip " + self.ip + ", isp " + self.isp + ", latitude \(self.latitude), longitude \(self.longitude) "
    }
}


let page = XCPlaygroundPage.currentPage

page.needsIndefiniteExecution = true

var geoDetails: GeoDetails?

let url = NSURL(string: "http://www.telize.com/geoip")
let request = NSURLRequest(URL: url!)

let session = NSURLSession.sharedSession()


let task = session.dataTaskWithRequest(request) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
    guard error == nil else {
        print("Error while calling the webservice " + error!.localizedDescription)
        return
    }
    
    let status = (response as! NSHTTPURLResponse).statusCode
    
    guard status == 200 else {
        print("Received response status code as \(status)")
        return
    }
    
    guard data != nil else {
        print("data not received from webservice")
        return
    }
    do {
        let dict = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
        
        print(dict)
        
        geoDetails = GeoDetails(country: dict["country"] as! String, ip: dict["ip"] as! String, isp: dict["isp"] as! String, latitude: dict["latitude"] as! Double, longitude: dict["longitude"] as! Double, timeZone: dict["timezone"] as! String)
        
        
        print(geoDetails?.description())

    } catch let error as NSError {
        print("Error parsing JSON response " + error.localizedDescription)
    }
}

task.resume()
*/


/* Pass by value */

/*
struct Rectangle {
var length: Int = 0
var breadth: Int = 0
}

var rectangle1 = Rectangle()

rectangle1.length = 12

var rectangle2 = rectangle1

rectangle2.length = 24

print(rectangle1.length)
print(rectangle2.length)

/* Pass by reference */

class Rectangle {
    var length: Int = 0
    var breadth: Int = 0
}

var rectangle1 = Rectangle()

rectangle1.length = 12

var rectangle2 = rectangle1

rectangle2.length = 24

print(rectangle1.length)
print(rectangle2.length)

*/