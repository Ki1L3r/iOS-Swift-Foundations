//
//  ViewController.swift
//  UIColor
//
//  Created by Mikel Sanchez Herrero on 10/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UIColor defaults
        view.backgroundColor = UIColor.greenColor()
        view.backgroundColor = UIColor.redColor()
        
        //UIColor RGB
        view.backgroundColor = UIColor(red: 54/255, green: 75/255, blue: 83/255, alpha: 1)
        
        // UIColor Greyscale
        view.backgroundColor = UIColor(white: 0.3, alpha: 1.0)
        view.backgroundColor = UIColor(hue: 79/360, saturation: 0.54, brightness: 0.81, alpha: 1)
        
        // UIColor Image
        view.backgroundColor = UIColor(patternImage: UIImage(named: "sasha")!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

