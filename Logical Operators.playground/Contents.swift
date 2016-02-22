//: Playground - noun: a place where people can play

import UIKit

var allowed: Bool = false

if !allowed {
    print("Sorry, but you can do that")
}

allowed = true

if allowed {
    print("Yes we can")
}

let itsRainning: Bool = false

if !itsRainning {
    print("No need umbrella")
}

let notAllowed = true
if !notAllowed {
    print("Now I'm confused")
}

var daveHasBeenAGoodBoy = true
var halIsFeelingGood = true
if daveHasBeenAGoodBoy && halIsFeelingGood {
    print("You might just survive.")
} else {
    print("No one is getting out of here.")
}
halIsFeelingGood = false
if daveHasBeenAGoodBoy && halIsFeelingGood {
    print("You might just survive.")
} else {
    print("No one is getting out of here.")
}

let spaceWillKillYou = true
if daveHasBeenAGoodBoy && halIsFeelingGood && spaceWillKillYou {
    print("You might just survive.")
} else {
    print("No one is getting out of here.")
}

var halIsCrazy = true
var daveMisbehaved = false
if halIsCrazy || daveMisbehaved {
    print("Somthing bad will happen.")
}

var airlockIsOpen = false
halIsFeelingGood = true
if halIsCrazy && halIsFeelingGood && daveHasBeenAGoodBoy || airlockIsOpen {
    print("There's some hope yet.")
}

if (halIsCrazy && halIsFeelingGood && daveHasBeenAGoodBoy) || airlockIsOpen {
    print("There's some hope yet.")
}