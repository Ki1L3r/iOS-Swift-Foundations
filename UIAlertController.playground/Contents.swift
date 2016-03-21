//: Playground - noun: a place where people can play

import UIKit

let famousAlert = UIAlertController(title: "Zero Wing meme", message: "All your base belong to us", preferredStyle: UIAlertControllerStyle.ActionSheet)

famousAlert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))

UIViewController().presentViewController(famousAlert, animated: true, completion: nil)

