//
//  ThirdViewController.swift
//  AnimalTrivia
//
//  Created by Mikel Sanchez Herrero on 12/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var startOverButton: UIButton!
    
    let redColor: UIColor = UIColor(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        startOverButton.layer.cornerRadius = 7.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func aButtonPressed(sender: UIButton) {
        aButton.setImage(UIImage(named: "incorrectAnswer")!, forState: UIControlState.Normal)
        disableButtons()
        aLabel.textColor = redColor
        
    }

    @IBAction func bButtonPressed(sender: UIButton) {
        bButton.setImage(UIImage(named: "incorrectAnswer")!, forState: UIControlState.Normal)
        disableButtons()
        bLabel.textColor = redColor
    }
    
    @IBAction func cButtonPressed(sender: UIButton) {
        cButton.setImage(UIImage(named: "correctAnswer")!, forState: UIControlState.Normal)
        disableButtons()
        cLabel.textColor = UIColor.greenColor()
    }
    
    func disableButtons(){
        aButton.enabled = false
        bButton.enabled = false
        cButton.enabled = false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
