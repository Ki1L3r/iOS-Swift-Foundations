//: Playground - noun: a place where people can play

import UIKit

let systemFont = UIFont.systemFontOfSize(24.0)

let myLabel = UILabel()
myLabel.font = systemFont

let boldFont = UIFont.boldSystemFontOfSize(30.0)

let italicFont = UIFont.italicSystemFontOfSize(20.0)

let customWeightFont = UIFont.systemFontOfSize(18.0, weight: 400.0)

for family : String in UIFont.familyNames() {
    print(family)
    
    for name: String in UIFont.fontNamesForFamilyName(family) {
        print(name)
    }
}

var currentFont = UIFont(name: "AvenirNextCondensed-Medium", size: 20.0)

myLabel.font = currentFont
print(currentFont!)
