//: Playground - noun: a place where people can play

import UIKit

var userAge = 30

switch userAge {
case 40:
    print("Generation X")
case 70:
    print("Baby boomer")
case 100:
    print("Greater Generation")
case 30:
    print("Generation Y")
default:
    print("Can't tell your generation")
}

userAge = 80

switch userAge {
case 40, 50, 60:
    print("Generation X")
case 70, 80, 90:
    print("Baby Boomer")
case 100, 110:
    print("Greatest Generation")
case 20, 30:
    print("Generation Y")
default:
    print("Can't tell your generation")
}

