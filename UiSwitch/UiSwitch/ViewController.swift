//
//  ViewController.swift
//  UiSwitch
//
//  Created by Mikel Sanchez Herrero on 17/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var demoSwitch: UISwitch!
    @IBOutlet weak var switchStateLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "UISwitchBackground")!)
        print("The initial state of the switch is: \(demoSwitch.on)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchButtonTapped(sender: UIButton) {
        let yellow = UIColor(red: 255/255, green: 209/255, blue: 77/255, alpha: 1.0)
        let brown = UIColor(red: 108/255, green: 76/255, blue: 73/255, alpha: 1.0)
        
        if demoSwitch.on {
            demoSwitch.onTintColor = yellow
            demoSwitch.thumbTintColor = UIColor(red: 87/255, green: 175/255, blue: 63/255, alpha: 1.0)
        } else {
            demoSwitch.onTintColor = brown
            demoSwitch.thumbTintColor = brown
        }
    }
    
    @IBAction func demoSwitchTapped(sender: UISwitch) {
        print("This Switch was tapped, now it is : \(demoSwitch.on)")
        
        let purple = UIColor(red: 189/255, green: 81/255, blue: 222/255, alpha: 1.0)
        
        demoSwitch.thumbTintColor = purple
    }
    

}

