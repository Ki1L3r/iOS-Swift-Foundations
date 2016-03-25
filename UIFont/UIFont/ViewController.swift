//
//  ViewController.swift
//  UIFont
//
//  Created by mikel.sanchez.local on 23/3/16.
//  Copyright © 2016 mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customWeightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customWeightLabel.font = UIFont.systemFontOfSize(16.0, weight: 700.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

