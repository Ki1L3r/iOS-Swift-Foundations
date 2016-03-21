//: Playground - noun: a place where people can play

import UIKit

class ClothingStore {
    var name : String
    var shirts : Int
    var pants : Int
    
    init(name: String, shirts : Int, pants: Int) {
        self.name = name
        self.shirts = shirts
        self.pants = pants
    }
}

let myStore = ClothingStore(name: "Clicky", shirts: 100, pants: 50)

extension ClothingStore {
    func makeASale() {
        shirts = shirts - 2
        pants = pants - 1
    }
    func info() -> String {
        return "The Store \(name) as \(pants) pants and \(shirts) shirts"
    }
}

myStore.makeASale()

myStore.info()
