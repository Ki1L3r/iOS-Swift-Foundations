//
//  ViewController.swift
//  Age of Laika
//
//  Created by Mikel Sanchez Herrero on 15/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!) 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextfield.text!
        let convertedAge = Int(stringFromTextField)! * 7
        
        dogYearsLabel.text = "\(convertedAge) Dog Years"
        dogYearsLabel.hidden = false
        
        enterHumanYearsTextfield.resignFirstResponder()
        
        
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextfield.text!
        let doubleFromTextField = Double(stringFromTextField)!
        
        var realDogYears: Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        } else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears) Real Dog Years"
        
        enterHumanYearsTextfield.resignFirstResponder()
        
    }
}

