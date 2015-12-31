//: Playground - noun: a place where people can play

import Cocoa


var str = "Hello, playground"


let inferredNum = Array<Int>()

let alsoInferredNumbers = [Int]()

let evenNumbers = [2,4,6,8]

let allZeros = [Int](count: 5, repeatedValue: 0)


var hehe = "heheh"
//hehe[0]


let fullName = "First Last"
let fullNameArr = fullName.characters.split{$0 == " "}.map(String.init)
// or simply:
// let fullNameArr = fullName.characters.split{" "}.map(String.init)

fullNameArr[0] // First
fullNameArr[1] // Last


let arr = Array(fullName.characters)
print(arr)
arr[0]

let string = "Hello 🐶🐮 🇩🇪"
let characters = Array(string.characters)
print(characters)


//1

var arr1 = [Int]() //√
let arr2 = []
let arr3: [String] = []
var arr4 = [1,2,3]

print(arr4[0])
print(arr4[1])
print(arr4[1...2])
arr4.append(4)

var array5 = [1, 2, 3]

array5[0] = array5[1]
array5[0...1] = [4, 5]
//array5[0] = "Six" //类型不可以转值,除非 array5[0] = Int("5")!
//array5 += 6
print("")


for item in array5 { print(item) }

//2


func removeOnce(itemToRemove: Int, fromArray:[Int]) -> [Int] {
    var finalArray = fromArray
    for i in 0..<fromArray.count {
        if itemToRemove == fromArray[i] {
            print("itemToRemove is \(itemToRemove), index is \(i)")
            finalArray.removeAtIndex(i)
            break
        }
    }
    return finalArray;
}

arr1 = [1,1,1,1,1,2,1]
removeOnce(2, fromArray: arr1)


//3
func remove(itemToRemove: Int, fromArray: [Int]) -> [Int] {
    //s1
//    var finalArray = [Int]()
//    
//    for item in fromArray {
//        if item != itemToRemove {
//            finalArray.append(item)
//        }
//    }
//    return finalArray
    
    //s2
    return fromArray.filter({$0 != itemToRemove})
}

remove(1, fromArray: arr1)


//4

func reverse(array : [Int]) -> [Int] {
    let num = array.count-1
    var fArray = array
    for i in 0..<array.count/2 {
        fArray[i]     = fArray[num-i] ^ fArray[i]
        fArray[num-i] = fArray[num-i] ^ fArray[i]
        fArray[i]     = fArray[num-i] ^ fArray[i]
    }
    return fArray
}

let case1 = [1,2,3,4,5,6,7,8]


reverse(case1)
