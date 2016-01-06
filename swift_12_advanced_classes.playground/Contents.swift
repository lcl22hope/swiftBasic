//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


//1

class A {
    init(){
        print("I'm A!")
    }
}

class B : A{
    override init(){
        print("I'm B!")
        super.init()
        print("I'm B!")

    }
}


class C : B {
    override init(){
        print("I'm C!")
        super.init()
        print("I'm C!")
        
    }
}

let a = A()
print("*********")
let b = B()
print("*********")
let c = C()



/**
*  2
*/

struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}


class Student: Person {
    var grades: [Grade]
    override required init(firstName: String, lastName: String) {
        grades = []
        super.init(firstName: firstName, lastName: lastName)
    }
    //…
}

class StudentAthlete: Student {
    var sports: [String]
    // Now required by the compiler!
    required init(firstName: String, lastName: String) {
        self.sports = []
        super.init(firstName: firstName, lastName: lastName)
    }
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }

}


class StudentBaseballPlayer: StudentAthlete {
    var position: (Double,Double)
    var number: String
    var battingAverage: Float
    
    required init(firstName: String, lastName: String) {
        self.position = (0 , 0)
        self.number = ""
        self.battingAverage = 0.0
        super.init(firstName: firstName, lastName: lastName)
        
    }
}

