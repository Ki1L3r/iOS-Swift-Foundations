//: Playground - noun: a place where people can play

import UIKit

struct Dog {
    var name: String
    var legs: Int
}

let doggy = Dog(name: "Fido", legs: 4)

func dogInfo(dogInstance: Dog)-> String {
    return "Dog's name is \(dogInstance.name) and it has \(dogInstance.legs) legs"
}
dogInfo(doggy)

// doggy.name = "Bonny"

var anotherDoggy = Dog(name: "James", legs: 4)
anotherDoggy.name = "Bonny"
anotherDoggy.legs = 3
dogInfo(anotherDoggy)