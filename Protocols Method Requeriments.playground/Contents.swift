//: Playground - noun: a place where people can play

import UIKit

protocol CutePed {
    var name: String { get set }
    var legs: Int { get }
    
    func isCute() -> Bool
}

struct Pet: CutePed {
    var name: String
    var legs: Int
    
    let fluffy: Int
    
    func isCute() -> Bool {
        
        guard fluffy > 7 else {
            return false
        }
        return true
    }
}

var cutePet : Pet = Pet(name: "Sasha", legs: 4, fluffy:10)
cutePet.isCute()
