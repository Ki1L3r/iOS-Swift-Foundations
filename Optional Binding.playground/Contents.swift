//: Playground - noun: a place where people can play

import UIKit

var favoriteSong : String?
favoriteSong = "Wild Horses"

if var currentFavorite = favoriteSong {
    print(currentFavorite);
    
    print(favoriteSong)
}

if favoriteSong != nil {
    var currentFavorite = favoriteSong!
    print(currentFavorite)
    print(favoriteSong)
}

favoriteSong = nil

if let currentSong = favoriteSong {
    print(currentSong)
}

favoriteSong = "Fall Dogs Bombs the Moon"
var favoriteArtist: String? = "David Bowie"
var favoriteAlbum: String? = "Heaten"
var noValue: String?

if let currentArtist = favoriteArtist, currentAlbum = favoriteAlbum, currentSong = favoriteSong {
    print("No we have ourselves a party")
    print(currentArtist)
    print(currentAlbum)
    print(currentSong)
}

if let currentSong = favoriteSong, hasValue = noValue {
    print("This will not work if even one of them is nil")
}