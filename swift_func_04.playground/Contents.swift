//: Playground - noun: a place where people can play

import Cocoa
//import Foundation

var str = "Hello, playground"

func isNumberDivisible(number: Int, by byNumber: Int) -> Bool {
//    print(number)
//    print(byNumber)
    if byNumber == 0 {
        return false
    }
    
    if(number % byNumber == 0){
        return true
    }
    
    
    return false
}


isNumberDivisible(10, by: 5)
isNumberDivisible(10, by: 0)
isNumberDivisible(10, by: 1)


func isPrime(number: Int) -> Bool {
    
    if number < 0 {
        return false
    }

    let sqrtN = Int(floor(sqrtf(Float(number))))
    
    for i in 2...sqrtN {
        print(i)
        if isNumberDivisible(number, by: i){
            print(i)
            return false
        }
    }
    return true
}

//test cases
//print(Int(floor(sqrtf(Float(16)))))
//isPrime(6)
//isPrime(13)
//isPrime(8893)
//isPrime(-1)
//isPrime(4)
isPrime(16)



//2

func fibonacci(number:Int)->Int{
    if number<=0 {
        return 0;
    }
    
    if number == 1 || number == 2{
        return 1
    }else{
        return fibonacci(number-1) + fibonacci(number-2)
    }
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)


