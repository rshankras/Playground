//: Playground - noun: a place where people can play


// Example of Optionals

/*
var name : String?

name = "Ravi"
name = .None

func getMessage(msg: String?) -> String? {
    return msg!
}

if let msg = getMessage("Ravi") {
    print(msg)
}
*/


class Job {
    var description:String = ""
}

class Person {
    
    var name:String = ""
    var work:Job?
}

let satya = Person()

var satyaWork: Job?

satyaWork = Job()

satyaWork?.description = "Software Developer"

satya.work = satyaWork

satya.work?.description


if satyaWork?.description != nil {
    let desc = satyaWork?.description
} else {
    
}

if let desc = satyaWork?.description {
    print(desc)
} else {
    print("Not available")
}


