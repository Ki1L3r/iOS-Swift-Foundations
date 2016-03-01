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
}