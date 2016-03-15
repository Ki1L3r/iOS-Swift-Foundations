//: Playground - noun: a place where people can play

import UIKit

enum IDTag {
    case Numeric(Int,Int)
    case Name(String)
}

var myID = IDTag.Numeric(501, 32)
print(myID)

func checkID(id: IDTag) {
    switch id{
    case .Numeric(let floor, let room):
        print("My id says I work in \(floor) floor and \(room) room")
    case .Name(let myName):
        print("I'm using an ID with just my name: \(myName)")
    }
}

checkID(myID)

myID = IDTag.Name("James Bond")

switch myID {
case let .Numeric(floor, room):
    print("My Id says I work in \(floor) and room \(room)")
case var .Name(myName):
    print("I'm using an id with just my name on in: \(myName)")
    
}