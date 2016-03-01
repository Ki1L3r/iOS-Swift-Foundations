//: Playground - noun: a place where people can play

import UIKit

func lineRight(var string: String, totalLenght: Int = 10) -> String {
    let pad : Character = "-"
    let amountToPad = totalLenght - string.characters.count
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad{
        string = padString + string
    }
    return string
}

let paddedString = lineRight("How are you?")

lineRight("Hi")

lineRight("Hello", totalLenght: 40)
