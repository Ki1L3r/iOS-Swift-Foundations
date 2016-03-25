//: Playground - noun: a place where people can play

import UIKit

let datePicker = UIDatePicker()

let userCalendar = NSCalendar.currentCalendar()

datePicker.calendar = userCalendar

datePicker.date

let birthDay = "1987-03-24 12:00 PM"

let dateStringFormatter = NSDateFormatter()

dateStringFormatter.dateFormat = "yyyy-MM-dd HH:mm a"

let date = dateStringFormatter.dateFromString(birthDay)!

datePicker.date = date

datePicker.minuteInterval = 5

