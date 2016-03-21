//: Playground - noun: a place where people can play

import UIKit

struct Dog {
    var name : String
    let legs : Int = 4
}

extension Dog {
    func info() -> String {
        return "\(name) has \(legs) legs."
    }
    
}

let fido = Dog(name: "Fido")

fido.info()

