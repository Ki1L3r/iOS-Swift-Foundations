//
//  TodoModel.swift
//  bitlist
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import Foundation

enum RepeatType: Int {
    case Daily = 0
    case Weekly = 1
    case Monthly = 2
    case Yearly = 3
}
struct TodoModel {
    var title: String
    var favorited: Bool
    var dueDate: NSDate?
    var completed: Bool
    var repeated: RepeatType?
    var reminder: NSDate?
}