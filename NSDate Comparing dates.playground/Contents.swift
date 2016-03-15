//: Playground - noun: a place where people can play

import UIKit

let nextWeek = NSDate(timeIntervalSinceNow: 604800)
let alsoNextWeek = NSDate(timeIntervalSinceNow: 60 * 60 * 24 * 7)

nextWeek.isEqualToDate(alsoNextWeek)

let dateStringFormater = NSDateFormatter()

dateStringFormater.dateFormat = "yyyy-MM-dd"

let birthDayString = "1940-10-09"

let johnLennonsBirtday = dateStringFormater.dateFromString(birthDayString)

let arbitraryDate = dateStringFormater.dateFromString("1940-10-09")

johnLennonsBirtday?.isEqualToDate(arbitraryDate!)

johnLennonsBirtday?.earlierDate(nextWeek)

johnLennonsBirtday?.laterDate(nextWeek)


