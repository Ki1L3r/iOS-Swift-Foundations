//: Playground - noun: a place where people can play

import UIKit

var favoriteSong: String?
print(favoriteSong)

favoriteSong = "Slow Burn"
//: Regular Optional
print(favoriteSong)

//: Unwrapped Optional
print(favoriteSong!)

//: Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalFavoriteSong: String! = favoriteSong
//: Not an optional
print(implicitlyUnwrappedOptionalFavoriteSong)

//: New force unwrapped constant
let forceUnwrapped = favoriteSong!
print(forceUnwrapped)

let assumedSong: String! = "Cactus"


