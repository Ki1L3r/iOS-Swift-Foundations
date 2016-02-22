//
//  ViewController.swift
//  UIButton
//
//  Created by Mikel Sanchez Herrero on 11/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var makeItBlueButton: UIButton!
    
    @IBOutlet weak var fireTheLasersButton: UIButton!
    
    @IBOutlet weak var imageOnlyButton: UIButton!
    
    @IBOutlet weak var alternativeImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func makeItButtonAction(sender: UIButton) {
        
        view.backgroundColor = UIColor.blueColor()
        
        makeItBlueButton.setTitle("Its Blue", forState: UIControlState.Normal)
        makeItBlueButton.backgroundColor = UIColor.grayColor()
        makeItBlueButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
    }
    
    @IBAction func fireTheLasersAction(sender: UIButton) {
        
        fireTheLasersButton.enabled = false;
        fireTheLasersButton.setTitle("Run the scape pods", forState: UIControlState.Disabled)
        fireTheLasersButton.titleLabel!.adjustsFontSizeToFitWidth = true
        fireTheLasersButton.backgroundColor = UIColor.orangeColor()
    }
    
    @IBAction func imageOnlyButtonAction(sender: UIButton) {
        
        imageOnlyButton.setImage(UIImage(named: "nextButtonAlternative")!, forState: UIControlState.Normal)
    }
    
    @IBAction func alternativeImageButtonAction(sender: UIButton) {
        
        alternativeImageButton.setImage(nil, forState: UIControlState.Normal)
        alternativeImageButton.setBackgroundImage(UIImage(named: "greenOval")!, forState: UIControlState.Normal)
        alternativeImageButton.setTitle("OK", forState: UIControlState.Normal)
        
    }
}

