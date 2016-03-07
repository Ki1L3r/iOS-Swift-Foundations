//
//  Animal.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 5/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation
import UIKit

class Animal {
    
    var bodyStatistics = BodyStatistics()
    var personalInformation = PersonalInformation()
    
    func speak() {
        print("Animal can't speak")
    }
    
    func randomFact() ->String {
        return "No random facts to display at this time"
    }
    
    func returnImage(animalName: String) -> UIImage? {
        
        let animalNumber = Int(arc4random_uniform(UInt32(2)+1))
        let imageName = animalName + animalNumber.description + ".jpeg"
        
        return UIImage(named: imageName)
        
    }
}
