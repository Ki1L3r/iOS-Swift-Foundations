//: Playground - noun: a place where people can play

import UIKit

protocol RandomNumberGenerator {
    func random(maxValue: Int) -> Double
}

struct ReturnRandomNumber: RandomNumberGenerator {
    func random(maxValue: Int) -> Double {
        return Double(arc4random_uniform(UInt32(maxValue))+1)
    }
}

class Dice {
    var sides : Int
    
    let generator : RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator){
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random(sides))
    }
}

let sixSided = Dice(sides: 6, generator: ReturnRandomNumber())

sixSided.roll()
sixSided.roll()

let dungeonsAndDragonsDice = Dice(sides: 24, generator: ReturnRandomNumber())

dungeonsAndDragonsDice.roll()
dungeonsAndDragonsDice.roll()

