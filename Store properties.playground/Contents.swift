//: Playground - noun: a place where people can play

import UIKit

struct Dog {
    var name : String
    var legs : Int
}

var txakur = Dog(name: "Cacho", legs: 4)

print("Our dog name is : \(txakur.name) and has \(txakur.legs) legs")

txakur.name = "Maik"

print("Our dog name is : \(txakur.name) and has \(txakur.legs) legs")