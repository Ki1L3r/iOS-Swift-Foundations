//: Playground - noun: a place where people can play

import UIKit

class GenericViewController: UIViewController {

    override func viewDidLoad() {
        let gesture : UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(GenericViewController.longPressGesture(_:)))
        
        gesture.minimumPressDuration = 1.0
        gesture.numberOfTouchesRequired = 2
        
        view.addGestureRecognizer(gesture)
    }
    
    func longPressGesture(longPress: UIGestureRecognizer) {
        if longPress.state == UIGestureRecognizerState.Ended {
            
        } else if longPress.state == UIGestureRecognizerState.Began {
            
        }
    }
}
