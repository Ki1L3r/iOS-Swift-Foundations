//
//  ViewController.swift
//  UIResponder
//
//  Created by Mikel Sanchez Herrero on 16/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeResponderStatusPressed(sender: UIButton) {
        
        if textField.canBecomeFirstResponder() {
            if textField.isFirstResponder() {
                textField.resignFirstResponder()
            } else {
                textField.becomeFirstResponder()
            }
        }
        
    }

}

