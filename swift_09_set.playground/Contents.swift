//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
//1 
let set1: Set<Int> = [1]
print(String(set1))
let typeOfset1 = set1.dynamicType
let set2 = [1]
print(String(set2))
let typeOfset2 = set2.dynamicType

let set3 = Set<Int>()
print(String(set3))
let typeOfset3 = set3.dynamicType

var set4: Set = [1,2,3]
//var a = set4.in
set4.insert(4)
set4.contains(1)
var set5: Set = [1, 2, 3]
//set5.insert("1")
set5.remove(1)



//2
func isEmailExist(email:String,isIn emails:Set<String>) -> Bool{
    for element in emails {
        if element == email {
            return true
        }
    }
    return false
}

let e1 = "lushu.com"

let e2: Set<String> = ["lushu.com","hehe.com"]

isEmailExist(e1, isIn: e2)


//3

func allStuOnSameDay(days: [Set<String>])->Set<String>? {

    if days.count == 0 {
        return nil
    }else{
        var intersectionSet = days[0]
        for i in 1..<days.count {
            intersectionSet = intersectionSet.intersect(days[i])
        }
        return intersectionSet
    }
}

let day1: Set = ["Anna", "Benny", "Charlie"]
let day2: Set = ["Anna", "Benny", "Danny"]
let day3: Set = ["Anna", "Danny", "Eric"]

allStuOnSameDay([day1,day2,day3])


func funcName(day1: Set<String>, day2: Set<String>, day3: Set<String>) ->
    Set<String> {
        
    let result = day2.subtract(day1).union(day3.subtract(day1))
    return result
    
}

funcName(day1, day2: day2, day3: day3)
