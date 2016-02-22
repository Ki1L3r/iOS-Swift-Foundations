//: Playground - noun: a place where people can play

import UIKit

let myFavoriteSong = "Cactus"
var yourFavoriteSong: String?

print(yourFavoriteSong)

var songToPlay  = yourFavoriteSong ?? myFavoriteSong
print("We will now play: \(songToPlay)")

yourFavoriteSong = "Afraid"

songToPlay = yourFavoriteSong ?? myFavoriteSong
print("We will now play: \(songToPlay)")


let a = 1
let b = 2

var x = a ?? b
