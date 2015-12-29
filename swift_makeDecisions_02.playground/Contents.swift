//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//# A #

let firstName = "Matt"

if (firstName == "Matt") {
    let lastName = "Galloway"
}else if (firstName == "Ray") {
    let lastName = "Wenderlich"
}

//let fullName = firstName + lastName //err lastName doesn't exist

//# B #

var coordinates = (1, 5, 10)

switch(coordinates){
case(let x, let y, let z) where x==y && y==z:
    print("x==y==z")
case(_,_,0):
    print("on the x/y plane")
case(_,0,_):
    print("on the x/z plane")
case(0,_,_):
    print("on the y/z plane")
default:
    print("Nothing special")
}

