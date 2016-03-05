//: Playground - noun: a place where people can play

import UIKit

let felines = ["Cat", "Tiger", "Lion"]

for animal in felines {
    print(animal)
}

for (index,value) in felines.enumerate() {
    print("Index: \(index) and value: \(value)")
}
