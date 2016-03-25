//: Playground - noun: a place where people can play

import UIKit


class Jewellery {
    var metal : String = "bronce"
    var cost : Int = 20
}

class Watch: Jewellery {
    var watchFaceSize : String = "Medium"
    var refundable : Bool = true
}

class Necklace: Jewellery {
    var rareStones : Int = 2
}

let omega : Jewellery = Watch()

omega.metal = "Platinum"
omega.cost = 50000
//omega.watchFaceSize = "Large"

let nordstromNecklace = Necklace()
nordstromNecklace.metal = "Gold"
nordstromNecklace.cost = 149
nordstromNecklace.rareStones = 3

