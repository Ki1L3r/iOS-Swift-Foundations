//: Playground - noun: a place where people can play

import UIKit

struct GreekToRomanGods {
    let godsDictonary = ["zeus": "jupiter", "apollo" : "apollo", "aphrodite" : "venus", "arse" : "mars", "poseidon" : "nepturne", "hepaestus" : "vulkan", "hermes" : "mercury"]
    
    func whoIs(greekGood : String) -> String {
        guard let godFound = godsDictonary[greekGood.lowercaseString] else {
            return ""
        }
        return godFound.capitalizedString
    }
}

let newGods = GreekToRomanGods()

newGods.whoIs("hermes")