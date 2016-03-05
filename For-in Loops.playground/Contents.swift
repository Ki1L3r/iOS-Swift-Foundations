//: Playground - noun: a place where people can play

import UIKit

for number in 1...3 {
    print(number)
}

let cowboy = "Cowboy"
let ninja = "Ninja"
let viking = "Viking"

for _ in 1...2 {
    print("The tittle of the comic is \(cowboy) \(ninja) \(viking)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer*=base
}

let superHeroes :[String] = ["Batman", "Superman", "Ironman", "Catwoman", "Spiderwoman", "Uncle Joe"]

for hero in superHeroes {
    print(hero)
}


