//: Playground - noun: a place where people can play

import UIKit

struct Engine {
    var cylinders = 6
    var sparkPlugs = 1
    var pistonRings = 4
}

class Car {
    var specialEngine = Engine()
    var color = "Red"
    var wheels = 6
    var name : String? = "My Ride"
}

var thisEngine = Engine()

var myCar = Car()

print("The number of piston rings is: \(thisEngine.pistonRings)")
print("The number of cylinders in the car: \(myCar.specialEngine.cylinders)")

thisEngine.pistonRings = 5
print("The number of piston rings is: \(thisEngine.pistonRings)")

myCar.specialEngine.pistonRings = 6
print("The number of piston rings in our car \(myCar.specialEngine.pistonRings)")
print("Compared to just the engine \(thisEngine.pistonRings)")


