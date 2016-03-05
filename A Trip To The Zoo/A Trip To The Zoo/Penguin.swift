//
//  Penguin.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 1/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation
import UIKit

struct Penguin {
    var age : Int
    var name : String
    var species : String
    var image : UIImage
    
    func speak() {
        print("Penguin: Trumpet trumpet!")
    }
    
    func trumpetANumberOfTimes(numberOfTimes: Int){
        for _ in 1...numberOfTimes {
            speak()
        }
    }
    
    func speakANumberOfTimes(numberOfTimes: Int, isLoud:Bool) {
        for var speakTimes = 1; speakTimes <= numberOfTimes; speakTimes++ {
            if isLoud {
                speak();
            } else {
                print("Penguin: Bray bray")
            }
        }
    }
    
    func ageInPinguinYearsFromHumanYears() -> Int {
        return age * 3;
    }
    
    func randomFact() -> String {
        let randomFact = Int(arc4random_uniform(UInt32(3)))
        
        let randomFactsArray = ["All 17 species of penguins are exclusivelly found in the Southern Hemisphere.","Penguins striking coloring  is a matter of camouflage", "Unlike most birds with lose and replace a few feathers at a time, penguins molt all at once"]
        
        return randomFactsArray[randomFact]
    }
}