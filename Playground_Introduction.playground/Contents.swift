//: Playground - noun: a place where people can play

import UIKit

import XCPlayground

let page = XCPlaygroundPage.currentPage

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
print(fibonacci)

for j in 0...10 {
    temp2 = fibonacci
    fibonacci += temp1
    temp1 = temp2
    print(fibonacci)
}


// Add image to playground.

let image = UIImage(named: "funny_image")

let demoView = UIView(frame: CGRectMake(0, 0, 250, 250))

demoView.backgroundColor = UIColor.redColor()

page.liveView = demoView


// Making Asynchronous call in Playground

/*
page.needsIndefiniteExecution = true

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
    } catch let error as NSError {
        print("Error parsing JSON response " + error.localizedDescription)
    }
}

task.resume()

*/









