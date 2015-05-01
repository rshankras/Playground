//: Playground - noun: a place where people can play

import UIKit

import XCPlayground

// sum of numbers 

var sum = 0

for i in 0...10 {
    sum += i
}

sum // print the sum


// fibonacci series

var fibonacci = 0
var temp1 = 1
var temp2 = 0
println(fibonacci)

for j in 0...10 {
    temp2 = fibonacci
    fibonacci += temp1
    temp1 = temp2
    println(fibonacci)
}


// Add image to playground.

let image = UIImage(named: "funny_image")

let demoView = UIView(frame: CGRectMake(0, 0, 250, 250))

demoView.backgroundColor = UIColor.redColor()
XCPShowView("MyView", demoView)


// Making Asynchronous call in Playground

XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)

let url = NSURL(string: "http://www.telize.com/geoip")

NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
    if error == nil {
        var error:NSError?
        if let result = data {
            if let dict = NSJSONSerialization.JSONObjectWithData(result, options: NSJSONReadingOptions.AllowFragments, error: &error) as? NSDictionary {
                println(dict)
            } else {
                println("Error Processing data")
            }
        }
    } else {
        println(error.localizedDescription)
    }
}).resume()












