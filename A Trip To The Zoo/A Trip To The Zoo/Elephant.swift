//
//  Elephant.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation

class Elephant: Animal {
    
    override func speak() {
        print("Elephant: Trumpet")
    }
    
    override func randomFact() -> String {
        return "Ony one mamal can't jump - you guess it Elephants!"
    }
    
}