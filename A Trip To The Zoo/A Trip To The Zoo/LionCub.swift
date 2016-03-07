//
//  LionCub.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation

class LionCub: Lion {
    
    override func speak() {
        super.speak()
        print("Lion: Baby roar")
    }
    
    override func randomFact() -> String {
        return "Lion Cubs start walking at 10 to 15 days old"
    }
    
}