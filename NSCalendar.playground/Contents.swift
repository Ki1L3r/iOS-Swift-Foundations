//: Playground - noun: a place where people can play

import UIKit

let myCalendar = NSCalendar.currentCalendar()

let components = NSDateComponents()
components.year = 1964
components.month = 2
components.day = 9
components.hour = 20
components.minute = 10

let beatlesFirstAppearenceInAmericanTV = myCalendar.dateFromComponents(components)
