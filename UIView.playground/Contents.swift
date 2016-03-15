//: Playground - noun: a place where people can play

import UIKit

let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

mainView.frame.width
mainView.backgroundColor = UIColor.greenColor()

let testButton = UIButton(frame: CGRect(x: 20, y: 20, width: 70, height: 30))

testButton.setTitle("Test", forState: .Normal)

testButton.backgroundColor = UIColor.blueColor()

mainView.addSubview(testButton)

testButton.removeFromSuperview()
