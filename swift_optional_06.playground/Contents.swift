//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//1

var name: String? = nil
//var age: Int = nil // err
let distance: Float = 26.7
var middleName: String? = nil





//2



func divideIfWhole(value: Int, by divisor: Int) -> Int? {

    if value % divisor == 0 && divisor != 0 {
        let answer = value / divisor
        print("Yep, it divides \(answer) times")
        return answer
    }else{
        print("Not divisible :[")
        return nil

    }

}

divideIfWhole(10, by: 2)
divideIfWhole(10, by: 3)





//3
func divideIfWhole2(value: Int, by divisor: Int) -> Int? {
    
    if value % divisor == 0 && divisor != 0 {
        let answer = value / divisor
//        print("Yep, it divides \(answer) times")
        return answer
    }else{
//        print("Not divisible :[")
        return nil
    }
    
}

let x = divideIfWhole(10, by: 3) ?? 0
print("It divides \(x) times")

