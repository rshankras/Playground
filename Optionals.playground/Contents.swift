//: Playground - noun: a place where people can play

import UIKit

class Job {
    var description:String = ""
}

class Person {
    
    var name:String = ""
    var work:Job?
}

let gandhi:Person = Person()

var work: Job?

work = Job()

work!.description = "Software Developer"

gandhi.work = work

gandhi.work?.description


if work?.description != nil {
    let desc = work?.description
} else {
    
}

if let desc = work?.description {
    println(desc)
} else {
    println("Not available")
}

