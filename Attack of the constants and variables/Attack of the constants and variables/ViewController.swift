//
//  ViewController.swift
//  Attack of the constants and variables
//
//  Created by Mikel Sanchez Herrero on 11/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minionOneLabel: UILabel!
    
    @IBOutlet weak var minionTwoLabel: UILabel!
    
    let minionSpeech = "OOOOOHHHH PARI ARRRR"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        minionOneLabel.text = minionSpeech
        minionTwoLabel.text = minionSpeech
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func takeThemDownButtonPress(sender: UIButton) {
        minionOneLabel.text = minionSpeech
        
        var funnyMinionLine = "I'm not a lazy, i'm just in energy saving mode"
        minionTwoLabel.text = funnyMinionLine
        
        funnyMinionLine = "Don't forget to have fun always!"
        minionOneLabel.text = funnyMinionLine
    }

}

