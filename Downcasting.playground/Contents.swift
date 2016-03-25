//: Playground - noun: a place where people can play

import UIKit

class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director : String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}


class Song: MediaItem {
    var artist : String
    
    init(name : String, artist : String) {
        self.artist = artist
        super.init(name: name)
    }
}


let library = [
    Movie(name: "Casa Blanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Olson Welles"),
    Song(name: "The one and only", artist: "Chesney Hawkes"),
    Song(name: "Never gonna give you up", artist: "Rick Astley")
]

for item in library {
    if let movie  = item as? Movie {
        print("Movie: \(movie.name) and it's director is \(movie.director)")
    }
    
    if let song = item as? Song {
        print("Song: \(song.name) and its artist \(song.artist)")
    }
}

let firstMovie = library[0] as! Movie