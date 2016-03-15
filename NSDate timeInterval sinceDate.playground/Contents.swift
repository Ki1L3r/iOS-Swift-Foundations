//: Playground - noun: a place where people can play

import UIKit

let lastWeek = NSDate(timeIntervalSinceNow: (60 * 60 * 24 * 7) * -1)

NSDate(timeInterval: 60 * 60 * 24, sinceDate: lastWeek)

NSDate(timeInterval: -86400, sinceDate: lastWeek)

