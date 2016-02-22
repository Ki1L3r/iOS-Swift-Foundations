//: Playground - noun: a place where people can play

import UIKit

var errorCode: String? = "Bad Error!"
print(errorCode)

if errorCode != nil {
    print("Stop, we have an error.")
}

errorCode = nil

if errorCode != nil {
    print("Stop, we have an error.")
} else {
    print("Carry on everything looks good")
}
