//: Playground - noun: a place where people can play

import UIKit

func greeting(aGreeting: String, greeted: String) -> String {
    let greetingToReturn: String = "\(aGreeting) \(greeted)"
    return greetingToReturn
}

greeting("Hi", greeted: "XCode!")

print(greeting("Hello", greeted: "There"))

let myGreeting = greeting("What's app", greeted: "Mikel")

print(myGreeting)

func randomString(first: String, second: String, thrid: String) -> String {
    let stringArray: [String] = [first, second,thrid]
    
    let randomIndex = Int(arc4random_uniform(3))
    
    return stringArray[randomIndex]
}

randomString("Cowboy", second: "ninja", thrid: "Viking")

randomString("Cats", second: "Dogs", thrid: "Birds")

func doubleAsString(number: Double) -> String {
    return number.description
}

doubleAsString(4.5)

func doubleToInt(number: Double) -> Int {
    return Int(number)
}

doubleToInt(2.8)