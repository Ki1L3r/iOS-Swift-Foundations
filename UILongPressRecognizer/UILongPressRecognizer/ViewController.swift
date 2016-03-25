//
//  ViewController.swift
//  UILongPressRecognizer
//
//  Created by mikel.sanchez.local on 23/3/16.
//  Copyright © 2016 mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gesture: UILongPressGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gesture.minimumPressDuration = 2.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func longPressGesture(sender: UILongPressGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.Ended {
            print("UILongPressGestureRecognizer Ended")
        } else if sender.state == UIGestureRecognizerState.Began {
            print("UILongPressGestureRecognizer Began")
        } else {
            print("UILongPressGestureRecognizer Another")
        }
    }

}

