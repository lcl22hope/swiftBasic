//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


//1

//let dic1 = Int,Int()  //err
//let dic2 = []
let dic3 =  ["Four": 4]
var dict4 = ["One": 1, "Two": 2, "Three": 3]

let namesString = dict4.reduce("",
    combine: { $0 + "\($1.1), " })

// $0 代表当前合并结果，$1代表当前element
print(namesString)


//dict4[1]//err
dict4["One"]
dict4["Two"]
dict4["Zero"] = 0
//dict4[0] = "Zero"
var dict5 = ["NY": "New York", "CA": "California"]
dict5["NY"]
dict5["CA"] = nil
dict5["WA"] = "Washington"



//2

func replaceValueForKey(key1: String, withValueForkey key2:String, inDictionary: [String: Int])->[String: Int]{
    var resultDic = inDictionary
    let tmp = resultDic[key1]
    resultDic[key1] = resultDic[key2]
    resultDic[key2] = tmp

    return resultDic

}

let dic = ["1":10,"2":100]

replaceValueForKey("1", withValueForkey: "2", inDictionary: dic)



//3
func printValueLengthLongerThanEight(oriDictionary: [String: String]){
    for value in oriDictionary.values {
        if(value.characters.count>=8){
            print(value)
        }
    }
}

let dic2 =  ["NY": "NewYork", "CA": "California"]
let dic5 =  ["NY1": "NewYork", "CA": "California"]


printValueLengthLongerThanEight(dic2)



//4
func combine(dic1: [String: String], with dic2: [String: String]) -> [String: String] {
    var resultDic = dic2

    for (key1,value1) in dic2 {
        for (key2,value2) in dic1 {
            if key1 == key2 {
                resultDic[key1] = value1
            }else{
                resultDic[key2] = value2
            }
        }
    }
    
    return resultDic
}

combine(dic2, with:dic5 )

