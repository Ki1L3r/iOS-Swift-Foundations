//
//  Lion.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation

class Lion : Animal {
    override func speak() {
        print("Lion: Might Roar")
    }
    
    override func randomFact() -> String {
        return "Lions are the second largest big cat species in the world (behind tigers)"
    }
}