//: Playground - noun: a place where people can play

import UIKit

func iffyFunction() throws {
    print("Hopefully it won't throw an error")
}

try iffyFunction()

do {
    try iffyFunction()
} catch {
    
}
