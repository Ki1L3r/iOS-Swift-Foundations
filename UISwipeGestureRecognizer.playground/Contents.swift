//: Playground - noun: a place where people can play

import UIKit

let simpleView = UIView()

let rightSwipe = UISwipeGestureRecognizer(target: simpleView, action: "swipeRight:")

rightSwipe.direction = .Right

simpleView.addGestureRecognizer(rightSwipe)

func swipeRight(gestureRecognizer : UISwipeGestureRecognizer) {
    
}
