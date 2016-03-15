//: Playground - noun: a place where people can play

import UIKit

enum CompassPoint {
    case North
    case South
    case East
    case West
}

print(CompassPoint.South)

print(CompassPoint.South.hashValue)

1 == CompassPoint.South.hashValue

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionAhead = CompassPoint.East

directionAhead = .North

let myButton = UIButton()
myButton.setTitle("Tap me", forState: .Normal)

myButton.setTitle("Tap me", forState: UIControlState.Normal)




