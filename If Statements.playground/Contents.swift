//: Playground - noun: a place where people can play

import UIKit

let truckSpeed = 45
let lamboSpeed = 120
var mySpeed: Int

mySpeed = 80

if mySpeed < 70 {
    print("Keep Cruising")
}else {
    print("Slow down police ahead")
}

var myFriendSpeed = 0

if mySpeed < 70 || myFriendSpeed >= 90 {
    print("Keep Cruising")
} else if myFriendSpeed < 90 {
    print("My friend leave me behind!")
} else if mySpeed > 100 {
    print("I'm Flying")
} else{
    print("Slow down police ahead")
}

var busted: Bool = false
var policeCaughtMe = false
var gotAway = false

if mySpeed > 100 && policeCaughtMe {
    busted = true
} else {
    gotAway = true
}

print(gotAway)

var x = 0
var y = 10

if (x > y) && (x + y > 10) {
    print("If x is greater than  y  and adding  z+y comes out  to me greater than y")
}

if x != y || x == y {
    print("This always execute! Be aware")
}

var dog = "dog"
var cat = "cat"

if dog != cat || dog == cat {
    print("I'm confuse why we are testing this!")
}

if "dog" != "cat" {
    print("Works!")
}