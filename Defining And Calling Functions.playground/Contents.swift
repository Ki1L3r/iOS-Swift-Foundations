//: Playground - noun: a place where people can play

import UIKit

func simpleHello() {
    print("Hello World!")
}

simpleHello()

func helloWord(name: String) {
    print("Hello World \(name)")
}

helloWord("Mikel")

func multiplyBy3 (number: Int) -> Int {
    return number * 3
}

var value = multiplyBy3(3)
print(value)

func voidFunction() -> Void {
    print("I don't return nothing but I'm still valid")
}

voidFunction()
var void = voidFunction()
