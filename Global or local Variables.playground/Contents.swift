//: Playground - noun: a place where people can play

import UIKit

struct Vehicle {
    let wheels : Int
    let color : String
    let steeringWheel : Bool
    
    func type() -> String{
        var testVariable = "Test"
        
        if wheels > 3 && steeringWheel {
            testVariable = "ok"
            return "Car"
        } else if wheels == 3 && steeringWheel {
            return "Abomination"
        } else if wheels == 3 {
            return "Tuk Tuk"
        } else {
            return "Motorcycle"
        }
    }
    
    func hotRod(speed: Int) -> Bool {
//        tesVariable = "wrong"
        return speed > 180 ? true : false
    }
    
    func numberOfWheels() -> Int {
        return wheels
    }
}


let car = Vehicle(wheels: 4, color: "Red", steeringWheel: true)


car.type()
car.hotRod(150)

var notSureWhatThisIs = Vehicle(wheels: 3, color: "Blue", steeringWheel: true)

notSureWhatThisIs.type()
notSureWhatThisIs.hotRod(190)
notSureWhatThisIs.numberOfWheels()