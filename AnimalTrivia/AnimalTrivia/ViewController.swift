//
//  ViewController.swift
//  AnimalTrivia
//
//  Created by Mikel Sanchez Herrero on 4/11/15.
//  Copyright © 2015 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    @IBOutlet weak var incorrectAImageView: UIImageView!
    @IBOutlet weak var incorrectBImageView: UIImageView!
    @IBOutlet weak var correctCImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func aButtonPressed(sender: UIButton) {
        incorrectAImageView.hidden = false
        aButton.hidden = true
        aLabel.textColor = UIColor(red: 251/255, green: 100/255, blue: 104/255, alpha: 1.0)
        bButton.enabled = false
        cButton.enabled = false
        
    }
    
    @IBAction func bButtonPressed(sender: UIButton) {
        incorrectBImageView.hidden = false
        bButton.hidden = true
        bLabel.textColor = UIColor(hue: 358/360, saturation: 60/100, brightness: 98/100, alpha: 1.0)
        aButton.enabled = false
        cButton.enabled = false
    }
    
    @IBAction func cButtonPressed(sender: UIButton) {
        correctCImageView.hidden = false
        cButton.hidden = true
        cLabel.textColor = UIColor.greenColor()
        aButton.enabled = false
        bButton.enabled = false
    }
}

