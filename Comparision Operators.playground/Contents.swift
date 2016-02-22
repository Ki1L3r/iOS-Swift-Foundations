//: Playground - noun: a place where people can play

import UIKit

let knowNumber = 3
var unknownNumber: Int?

unknownNumber == knowNumber
unknownNumber != knowNumber

let numberTest = unknownNumber != knowNumber
print(numberTest)

let numbersAreTheSame = unknownNumber == knowNumber

if numbersAreTheSame {
    print("Ey both numbers are the same")
} else {
    print("Nope, nope the same")
}

unknownNumber  = knowNumber
print(unknownNumber)
let sameNumbers = (unknownNumber == knowNumber)
if sameNumbers{
    print("Ey are the same!")
}

if knowNumber == unknownNumber {
    print("Ey are the same")
} else {
    print("Noppppeeee")
}

let smallCat = "cat"
var bigCat = "Cat"

if smallCat == bigCat {
    print("Both Cats are equal")
} else {
    print("Are different")
}

bigCat = "cat"

if smallCat == bigCat {
    print("Both cats are equal")
} else {
    print("How can this cats be different")
}

bigCat = "cat "

if smallCat == bigCat {
    print("Both cats are equal")
} else {
    print("Ups I thought they will be the same")
}

if smallCat == "cat" {
    print("I found my cat")
}

3 != 5
2 == 2
7 > 3
7 < 3
7 >= 0
8 <= 8

