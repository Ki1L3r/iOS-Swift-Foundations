//: Playground - noun: a place where people can play

import UIKit

enum Beaches {
    case Bahia, Rabbit, Paraisso, Elafornissi
}

var favouriteBeach = Beaches.Elafornissi

switch favouriteBeach {
case .Bahia:
    print("Nicer tan Rio")
case .Rabbit:
    print("This country produces the best olive oil in the world!")
case .Paraisso:
    print("I think I'll have a Mojito with dinnner")
case .Elafornissi:
    print("After the beach, we'll hit the Acropolis")
}

switch favouriteBeach {
case .Bahia:
    print("Pack your bags, we're going to the beach")
default:
    print("I'd rather stay in home,then")
}
