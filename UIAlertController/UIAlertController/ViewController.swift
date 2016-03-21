//
//  ViewController.swift
//  UIAlertController
//
//  Created by Mikel Sanchez Herrero on 21/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertMeButtonPressed(sender: UIButton) {
        let famousAlert = UIAlertController(title: "Zero wing mean", message: "All our bases are belong to us", preferredStyle: .Alert)
        
        famousAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        presentViewController(famousAlert, animated: true, completion: nil)
    }

    @IBAction func moreActionButtonPressed(sender: UIButton) {
        let otherAlert = UIAlertController(title: "Multiple Actions", message: "Alert has more than one actions, witch means more than one button", preferredStyle: .ActionSheet)
        
        let printSomething = UIAlertAction(title: "Print", style: .Default) { _ in
            print("We can run a block of code")
        }
        
        let callFunction = UIAlertAction(title: "Call Function", style: .Destructive, handler: myHandler)
        
        let dissmiss = UIAlertAction(title: "Ok", style: .Cancel, handler: nil)
        
        otherAlert.addAction(printSomething)
        otherAlert.addAction(callFunction)
        otherAlert.addAction(dissmiss)
        
        presentViewController(otherAlert, animated: true, completion: nil)
    }
    
    func myHandler(alert: UIAlertAction!) {
        print("You tapped \(alert.title)")
    }
}

