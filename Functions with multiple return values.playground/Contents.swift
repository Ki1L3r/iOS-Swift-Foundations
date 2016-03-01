//: Playground - noun: a place where people can play

import UIKit

func minMax(array: [Int]) -> (min:Int, max:Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}

let bounds = minMax([0,258,33,5])

print("Min is: \(bounds.min) and MAX is: \(bounds.max)")


func titleAndYear(data: [String]) -> (title: String, year: String) {
    return (data.first!, data.last!)
}

var song = titleAndYear(["Midnight Run", "Martin", "2004"])

print("The title is : \(song.title) and year \(song.year)")


func betterMinMax(array: [Int]) -> (min:Int, max:Int)? {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}

if let newBounds = betterMinMax([0,24,676,78]) {
    print("Min is: \(newBounds.min) and MAX is: \(newBounds.max)")
}