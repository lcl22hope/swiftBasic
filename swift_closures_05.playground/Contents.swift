//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


//prepare lessons

var s1 = "Tim"
var s2 = "Tom"
s1 > s2


//var counter = 0
//let increment = {
//    ++counter
//}
//
//increment()
//increment()
//increment()
//
//increment()
//increment()
//
//counter

func counting() -> (()->Int) {
    var counter = 0
    let incrementCounter: ()->Int = {
        return counter++
    }
    return incrementCounter
}

let counter1 = counting()
let counter2 = counting()

counter1()
counter2()

counter1()

sqrtf(386)


//1
func repeatTask(times: Int, task: ()-> Void) {
    for _ in 1...times {
        task()
    }
}

repeatTask(10, task: {
//    print("Swift Apprentice is a great book!")
})


//2 

/**
In this challenge, you're going to write a function 
that you can reuse to create different mathematical sums.
*/

func mathSum(times: Int , operation: (Int)->Int) -> Int {
    if times <= 0 {
        return 0
    }
    
    var sum = 0
    for i in 1...times {
        sum += operation(i)
    }
    
    return sum
}

// find the sum of the first 10 square numbers, which equals 386
var num = 0
var sum = 0
repeat {
    num++
    sum = mathSum( num, operation: { $0*$0 })
//    print("num is \(num),sum is \(sum)")
}while(sum < 386)


//use the function to find the sum of the first 10 Fibonacci numbers, 
//which equals 144

let fib : (Int) -> Int
fib = {
    if $0 <= 0 {
        return 0
    }else if $0 <= 2 {
        return 1
    }else{
        return fib($0-1) + fib($0-2)
    }
}

num = 0
sum = 0
repeat {
    num++
    sum = mathSum(num, operation:fib)
    print("num is \(num),sum is \(sum)")
}while(sum < 144)



