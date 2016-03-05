//: Playground - noun: a place where people can play

import UIKit

var shoppingList = ["Eggs", "Milk"]

shoppingList.count

shoppingList[0]
shoppingList[1]
shoppingList.last
shoppingList.append("Potatoes")
shoppingList.isEmpty


let felines = ["Cat","Tiger", "Lion"]
let canines = ["Dog","Dingo","Wolf"]
var caninesAndFelines = felines + canines

if !caninesAndFelines.isEmpty {
    caninesAndFelines.insert("EY", atIndex: 4)
}

caninesAndFelines.append("Elephant")
caninesAndFelines += ["another", "another"]

print("First Animal: \(caninesAndFelines[0]) or \(caninesAndFelines.first!)")

caninesAndFelines[0] = "Grey wolf"
caninesAndFelines

caninesAndFelines[0...2] = ["One", "Two", "Three"]
caninesAndFelines

caninesAndFelines.removeAtIndex(4)
caninesAndFelines

caninesAndFelines[caninesAndFelines.count-1]
caninesAndFelines.last!
caninesAndFelines.removeLast()


