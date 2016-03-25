//
//  ViewController.swift
//  UISwipeGestureRecognizer
//
//  Created by mikel.sanchez.local on 24/3/16.
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

    @IBAction func rightSwiped(sender: UISwipeGestureRecognizer) {
        print("RightSwiped!")
    }
    
    @IBAction func leftSwiped(sender: UISwipeGestureRecognizer) {
        let secondViewController = storyboard?.instantiateViewControllerWithIdentifier("secondViewController") as! SecondViewController
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    

}

