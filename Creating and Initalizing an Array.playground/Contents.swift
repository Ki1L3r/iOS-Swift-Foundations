//: Playground - noun: a place where people can play

import UIKit

var emptyArray = [Int]()

emptyArray.count
emptyArray.append(1)
emptyArray.count

var animalNames = ["Cat","Dog"]
animalNames.count

_stdlib_getDemangledTypeName(animalNames)

animalNames = []


_stdlib_getDemangledTypeName(animalNames)

var integerArray = Array<Int>()
integerArray.count

var anotherIntegerArray: [Int] = []
anotherIntegerArray.count

_stdlib_getDemangledTypeName(anotherIntegerArray)

var initialDeposits = [Double](count: 2, repeatedValue: 1.23)
initialDeposits.count
