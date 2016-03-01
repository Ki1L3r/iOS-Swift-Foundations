//: Playground - noun: a place where people can play

import UIKit

func calculateWeight(weight: Double, gravity: Double = 9.8) -> Double {
    let mass = weight / 9.8
    return mass * gravity
}

calculateWeight(84)
calculateWeight(84,gravity: 3.8)

