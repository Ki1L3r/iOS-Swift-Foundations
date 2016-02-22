//
//  ViewController.swift
//  Sonar
//
//  Created by Mikel Sanchez Herrero on 17/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rangeValuesLabel: UILabel!
    @IBOutlet weak var multipliedRangeValuesLabel: UILabel!
    @IBOutlet weak var sonarActivityLabel: UILabel!
    @IBOutlet weak var treasureFoundImage: UIImageView!
    
    var currentRange: Int = 1
    var multipliedValue: Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rangeValuesLabel.text = currentRange.description
        multipliedRangeValuesLabel.text = (currentRange * multipliedValue).description
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func increasedRangeButtonTapped(sender: UIButton) {
        if currentRange < 5  && currentRange > 0 {
            currentRange += 1
        } else {
            currentRange = 5
        }
        rangeValuesLabel.text = "\(currentRange)"
        let sonarDistance = currentRange * multipliedValue
        multipliedRangeValuesLabel.text = "\(sonarDistance)"
        
    }

    @IBAction func pingButtonTapped(sender: UIButton) {
        for times in 1...currentRange {
            sonarActivityLabel.text = "Sonar fired \(times)"
            print("Sonar fired \(times)")
        }
        let sonarDistance = currentRange * multipliedValue
        if sonarDistance > 20 {
            treasureFoundImage.image = UIImage(named: "kingTut")!
            treasureFoundImage.hidden = false
        } else if sonarDistance >= 15 {
            treasureFoundImage.image = UIImage(named: "helmet")!
            treasureFoundImage.hidden = false
        }
    }
}

