//: Playground - noun: a place where people can play

import UIKit

class aViewController: UIViewController {
    override func viewDidLoad() {
        let defaultNotificationCenter = NSNotificationCenter.defaultCenter()
        defaultNotificationCenter.addObserver(self, selector: "broadcastRecieved:", name: "broadcastMessage", object: nil)
    }
    
    func broadcastRecieved(notification: NSNotification) {
        print("Hello World")
    }
}

let notificationToPost = NSNotification(name: "broadcastMessage", object: nil)

NSNotificationCenter.defaultCenter().postNotification(notificationToPost)
