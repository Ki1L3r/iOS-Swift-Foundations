//: Playground - noun: a place where people can play

import UIKit

let indexPath = NSIndexPath(forRow: 1, inSection: 1)

indexPath.row
indexPath.section

let embeddedArray : [[String]] = [["Value 1", "Value 2"],["Value 3", "Value 4"]]


let internalArray = embeddedArray[indexPath.section]
let stringValue = internalArray[indexPath.row]