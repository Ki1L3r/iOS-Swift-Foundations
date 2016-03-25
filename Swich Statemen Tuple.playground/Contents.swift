//: Playground - noun: a place where people can play

import UIKit

let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("(0,0) is at the origin")
case(_, 0):
    print("(\(somePoint.0), 0) is on the x axis")
case(0,_):
    print("(0,\(somePoint.1)) is on the y axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
    // Note that we dont' need a default case here because the last case is exhaustive, that is, it will apply to any other posibility that has not been contemplated in the earlier case statements
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}