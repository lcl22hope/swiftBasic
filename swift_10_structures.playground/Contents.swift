//: Playground - noun: a place where people can play

import Cocoa


var str = "Hello, playground"

// lessons !
//var long = 0.1
//long = atof("100")
//
//struct Location {
//    let latitude: Double
//    let longitude:Double
//    
//    init(coordinateString: String){
//        let crdSplit = coordinateString.characters.split(",")
//        latitude = atof(String(crdSplit.first!))
//        longitude = atof(String(crdSplit.last!))
//    
//    }
//}
//
//
//struct DeliveryRange {
//    var range: Double
//    let center: Location
//}
//
//// Build a DeliveryRange value
//var range1: DeliveryRange = DeliveryRange(range: 200, center: Location(coordinateString: "44.9871,-93.2758"))
//// Assign the value in range1 to range2
//var range2: DeliveryRange = range1
//print(range1.range) // 200
//print(range2.range) // 200
//// Modify the range of range1 to ‘100’
//range1.range = 100
//// range1 now has ’100’, b still has ‘200’
//print(range1.range) // 100
//print(range2.range) // 200

//1


struct T_Shirt {
    let size: Double
    let color: Double
    let option: String
}


extension T_Shirt {
    func costOfThisTShirt(size: Double, color: Double, option: String) -> Double {
    
        return size * color * atof(option)
    }
}


var myT: T_Shirt = T_Shirt(size: 50, color: 1, option: "2")
myT.costOfThisTShirt(myT.size, color: myT.color, option: myT.option)


//2

struct ShipLocation {
    let x: Double
    let y: Double
    
    init(position: String){
        let corSplit = position.characters.split(",")
        x = atof(String(corSplit.first!))
        y = atof(String(corSplit.last!))
    }
}




struct BattleShip{
    let oriPos: ShipLocation
    let desPos: ShipLocation
    var shotCount: UInt
    var alive: Bool

//    var isDead:
    
    
    init(oriPosition: ShipLocation){
        shotCount = 5
        oriPos = oriPosition
        desPos = oriPos
        alive = true
    }
    
    mutating func isShotted(isReportShot:Bool){
        if(isReportShot){
            shotCount--
        }
    }
    
    mutating func isAlive()->Bool{
        if shotCount>=0 {
            alive = false
        }else{
            alive = true
        }
        return alive
    }
    
}






