//: Playground - noun: a place where people can play

import UIKit

// Memory Management

/*
class   Teacher   {
    var  name :   String?
    var  course :   String?
    
    init   ( name :   String ,  course :   String )   {
        self.name  =  name
        self.course  =  course
        print( "Reference count increased by 1" )
    }
    
    deinit {
        print( "Reference count decreased by 1" )
    }
}

//let teacher1  =   Teacher( name :   "Ravi" ,  course :   "Swift" )

func createTeacher( )   {
    let teacher =  Teacher( name: "John",course:"Java" )
    print(teacher)
}

createTeacher( )
*/

/* weak reference */

/*
class Teacher {
    var name:String?
    var course:String?
    var student: Student?
    
    init(name: String, course:String) {
        self.name = name
        self.course = course
        
        print("Reference count of Teacher increases by 1")
    }
    
    deinit {
        print("Reference count of Teacher decreases by 1")
    }
}

class Student {
    var name:String?
    weak var mentor: Teacher?
    
    init(name: String, course:String) {
        self.name = name
        
        print("Reference count of Student increases by 1")
    }
    
    deinit {
        print("Reference count of Student decreases by 1")
    }
}


func createInstance() {
    
    let teacher = Teacher(name: "Jason", course: "Swift")
    let student = Student(name: "Adam", course: "Swift")
    teacher.student = student
    student.mentor = teacher
}

createInstance()
*/

/* unowned reference */


class Teacher {
    var name:String?
    var course:String?
    var student: Student?

    init(name: String, course:String) {
        self.name = name
        self.course = course
        print("Reference count of Teacher increases by 1")
    }

    deinit {
        print("Reference count of Teacher decreases by 1")
    }
}

class Student {
    var name:String?
    unowned var mentor: Teacher

    init(name: String, course:String,mentor:Teacher) {
        self.name = name
        self.mentor = mentor
        print("Reference count of Student increases by 1")
    }

    deinit {
        print("Reference count of Student decreases by 1")
    }
}


func createInstance() {
    let teacher = Teacher(name: "Jason", course: "Swift")
    let student = Student(name: "Adam", course: "Swift",mentor:teacher)
    teacher.student = student
    student.mentor = teacher
}

createInstance()


