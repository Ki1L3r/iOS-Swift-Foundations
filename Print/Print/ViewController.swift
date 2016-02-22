//
//  ViewController.swift
//  Print
//
//  Created by Mikel Sanchez Herrero on 13/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad is working!")
        
        let someConstant = 10
        print(someConstant)
        
        var someVariable = "This is a variable"
        print("showing somevariable value: \(someVariable)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        print("didReciveMemoryWarning is not being called!")
    }


}

