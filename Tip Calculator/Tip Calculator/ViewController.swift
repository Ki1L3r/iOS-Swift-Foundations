//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mikel Sanchez Herrero on 17/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalWithTipLabel: UILabel!
    
    var tipValue: Double? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonTapped(sender: UIButton) {
        billTextField.resignFirstResponder()
        
        if billTextField.text! != "" && billTextField.text != nil {
            if tipValue != nil && tipValue! != 0{
                tipLabel.text = "\(tipValue!)"
                
                let totalWithTip = tipValue! + Double(billTextField.text!)!
                totalWithTipLabel.text = "\(totalWithTip)"
                
            } else {
                tipLabel.text = "No Tip"
                totalWithTipLabel.text = "\(totalWithTipLabel.text!)"
            }
        }
    }

    @IBAction func implicitlyConvertButtonTapped(sender: UIButton) {
        billTextField.resignFirstResponder()
        
        let total = Double(billTextField.text!)
        
        if let unWrappedTotal = total {
            if let tipValueToUse = tipValue {
                tipLabel.text = "\(tipValueToUse)"
                let amountToPay = unWrappedTotal + tipValueToUse
                totalWithTipLabel.text = "\(amountToPay)"
            } else {
                tipLabel.text = "Tip is nil"
                totalWithTipLabel.text = "\(unWrappedTotal)"
            }
        } else {
            print("Optional was nil")
        }
        
    }
}

