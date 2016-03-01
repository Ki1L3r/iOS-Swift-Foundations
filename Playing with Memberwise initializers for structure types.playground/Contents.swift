//: Playground - noun: a place where people can play

import UIKit

struct Burger {
    var paddy = 0
    var cheeseSlides = 0
}

let simpleBurger = Burger(paddy: 1, cheeseSlides: 2)

 print("Simple burger paddy and cheese slices respectively:", simpleBurger.paddy,simpleBurger.cheeseSlides)

struct OptionalBurger {
    var paddy: Int?
    var cheeseSlides: Int?
}

let nilBurger = OptionalBurger()

print(nilBurger.paddy)
let mediumBurger = OptionalBurger(paddy: 2, cheeseSlides: 4)

print(mediumBurger.paddy!)

print(mediumBurger.cheeseSlides!)

