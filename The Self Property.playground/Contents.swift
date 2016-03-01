//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var name : String
    var color : String
    var wheels : Int

    init(name : String, color: String, wheels : Int){
        self.name = name
        self.color = color
        self.wheels = wheels
    }
    
    func printInfo() -> String {
        return "Vehicle is named \(self.name), has \(self.wheels) wheels and is \(self.color)"
    }
}

var myVehicle = Vehicle(name: "Ford", color: "Black", wheels: 4)

myVehicle.printInfo()



