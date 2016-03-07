//
//  Tiger.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation

class Tiger: Animal {
    
    override func speak() {
        super.speak()
        print("Tiger: Chuff")
    }
    
    override func randomFact() -> String {
        return "There are more tigers held privately as pets than there are in the wild."
    }
}