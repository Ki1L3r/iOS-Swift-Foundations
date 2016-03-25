//: Playground - noun: a place where people can play

import UIKit

let datePicker = UIDatePicker()

datePicker.datePickerMode = UIDatePickerMode.Time

let lunchTime = "2:00 PM"

let timeStringFormatter = NSDateFormatter()
timeStringFormatter.dateFormat = "hh:mm a"

let lunchDate = timeStringFormatter.dateFromString(lunchTime)!

datePicker.date = lunchDate
