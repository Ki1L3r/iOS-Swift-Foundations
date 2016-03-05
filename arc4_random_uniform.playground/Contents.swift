//: Playground - noun: a place where people can play

import UIKit

for currentPass in 1...4 {
    print("Pass \(currentPass), random number value: \(arc4random_uniform(UInt32(5)))")
}


let regularRandomInteger = Int(arc4random_uniform(UInt32(25)))