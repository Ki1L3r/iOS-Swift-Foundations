//
//  ViewController.swift
//  Chicken or Egg
//
//  Created by Mikel Sanchez Herrero on 17/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chickenSwitch: UISwitch!
    @IBOutlet weak var resultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findOutButtonTapped(sender: UIButton) {
        var chickenSwitchOptional: Bool?
        
        chickenSwitchOptional = chickenSwitch.on
        let egg: Bool = chickenSwitchOptional ?? true
        
        let results: String = egg ? "Egg" : "Chicken"
        resultsLabel.text = results
        
    }

}

