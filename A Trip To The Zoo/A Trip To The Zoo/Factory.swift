//
//  Factory.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation

class Factory {
    class func createTiger() -> Tiger {
        let tiger = Tiger()
        tiger.personalInformation.species = "Bengal"
        tiger.personalInformation.name = "Spar"
        tiger.bodyStatistics.height = 110
        tiger.personalInformation.image = tiger.returnImage("Tiger")
        
        return tiger
    }
    
    class func createElephant() -> Elephant {
        let elephant = Elephant()
        elephant.personalInformation.species = "African"
        elephant.personalInformation.name = "Babar"
        elephant.bodyStatistics.height = 390
        elephant.personalInformation.image = elephant.returnImage("Elephant")
        
        return elephant
    }
    
    class func createLion() -> Lion {
        let lion = Lion()
        lion.personalInformation.species = "Barbary"
        lion.personalInformation.name = "Mufasa"
        lion.bodyStatistics.height = 220
        lion.personalInformation.image = lion.returnImage("Lion")
        
        return lion
    }
    
    class func createLionCub() -> LionCub{
        let lionCub = LionCub()
        lionCub.personalInformation.species = "Cave Lion"
        lionCub.personalInformation.name = "Simba"
        lionCub.bodyStatistics.height = 50
        lionCub.personalInformation.image = lionCub.returnImage("LionCub")
        
        return lionCub
        
    }
}