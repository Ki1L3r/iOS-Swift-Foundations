//: Playground - noun: a place where people can play

import UIKit

var doesTheOptionalExist: Int?
doesTheOptionalExist = 10

if doesTheOptionalExist != nil {
    print(doesTheOptionalExist)
    print(doesTheOptionalExist!)
}

var errorCode: Int?
print(errorCode)

errorCode = 404
if errorCode != nil {
    print(errorCode)
    print(errorCode!)
}

var regularOptional: String? = "This is an string"

print(regularOptional)
print(regularOptional!)

var noValue: Int?

print(noValue)

//print(noValue!)

var errorType: String? = "Warning"

if errorType != nil {
    let errorNoOptional = errorType!
    print(errorNoOptional)
}

