//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//1
//extension Dictionary {
//    mutating func update(other:Dictionary) {
//        for (key,value) in other {
//            self.updateValue(value, forKey:key)
//        }
//    }
//}
//
//class User {
//    var lists : [String: List] = [:]
//    
//    func addList(list: List){
//        self.lists[list.name] = list
//    }
//    
//    
//    func getList(name: String) -> List{
//        for (key,value) in self.lists {
//            if key == name {
//                return value
//            }
//        }
//        return List(name: "")
//    }
//}
//
//class List {
//    let name: String
//    var movies: [String] = []
//    
//    init(name:String){
//        self.name = name
//    }
//    
//    func printList(){
//        print("Movie Lists: \(name)")
//        for movie in self.movies {
//            print(movie)
//        }
//        print("\n")
//    }
//}
//
//let jane = User()
//let john = User()
//var actionList = List(name: "Action")
//
//jane === john
//
//
//jane.addList(actionList)
//john.addList(actionList)
//
//jane.getList("Action")
//
//// Add Janes favorites
//jane.lists["Action"]?.movies.append("Rambo")
//jane.lists["Action"]?.movies.append("Terminator")
//
//john.lists["Action"]?.movies.append("Die Hard")

// See John's list:
//john.lists["Action"]?.printList()

//// See Jane's list:
//jane.lists["Action"]?.printList()

//actionList.printList()

//2

struct TShirt {
    let size: Double
    let color: Double
    let price: Double
    let frontImg: String?
}

struct Address {
    let name: String
    let street: String
    let city: String
    let zipCode: String
}

class User {
    let name:String
    let email: String
    let shoppingCart: ShoppingCart
    
    init(name: String,email: String){
        self.name = name
        self.email = email
        self.shoppingCart = ShoppingCart(address: Address(name: "", street: "", city: "", zipCode: ""))
    }
}

class ShoppingCart {
    let order: [TShirt] = []
    let address:Address
    
    init(address: Address){
        self.address = address
    }
    
    func totalPrice()->Double {
        var sum = 0.0
        for tShirt in order {
            sum += tShirt.price
        }
        return sum
    }
}

