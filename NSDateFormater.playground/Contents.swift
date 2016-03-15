//: Playground - noun: a place where people can play

import UIKit

let dateFormater = NSDateFormatter()

dateFormater.dateStyle = NSDateFormatterStyle.ShortStyle

dateFormater.timeStyle = NSDateFormatterStyle.ShortStyle

dateFormater.stringFromDate(NSDate())

dateFormater.dateStyle = .LongStyle
dateFormater.timeStyle = .LongStyle

dateFormater.stringFromDate(NSDate())

dateFormater.timeStyle = .NoStyle

dateFormater.stringFromDate(NSDate())

dateFormater.dateFormat = "yyyy-MM-dd h:mm"

dateFormater.stringFromDate(NSDate())

let customDateString = "1928-09-21 9:00"
let internationalPeaceDay = dateFormater.dateFromString(customDateString)

let shortDateString = "05/06/1925"

dateFormater.dateFromString(shortDateString)

dateFormater.dateStyle = .ShortStyle

let hindenburgCrash = dateFormater.dateFromString(shortDateString)

dateFormater.dateStyle = .FullStyle

dateFormater.stringFromDate(NSDate())

dateFormater.timeStyle = .FullStyle
dateFormater.stringFromDate(NSDate())