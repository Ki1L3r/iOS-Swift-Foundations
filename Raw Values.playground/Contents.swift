//: Playground - noun: a place where people can play

import UIKit

enum Planet : Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Nepturne
}

Planet.Earth.rawValue

enum CompassPoint: String {
    case North, South, East, West
}

CompassPoint.North.rawValue

enum Repeat {
    case Daily, Weekly, Monthly, Yearly
}

Repeat.Monthly.hashValue