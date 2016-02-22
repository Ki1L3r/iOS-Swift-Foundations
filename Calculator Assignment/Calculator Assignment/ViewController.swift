//
//  ViewController.swift
//  Calculator Assignment
//
//  Created by Mikel Sanchez Herrero on 18/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var displayValue: String?
    
    var operand: Double?
    
    var operation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Operation IBActions
    
    @IBAction func multipliedButtonTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        
        if doubleValueFromDisplayValue == nil {
            print("Reset the number because we can't convert the value to double")
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "*"
            displayValue = nil
        } else if operand != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            } else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            } else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "*"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    }
    
    @IBAction func divideButtonTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        
        if doubleValueFromDisplayValue == nil {
            print("Reset the number because we can't convert the value to double")
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "/"
            displayValue = nil
        } else if operand != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            } else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            } else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "/"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    }
    
    @IBAction func substractButtonTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        
        if doubleValueFromDisplayValue == nil {
            print("Reset the number because we can't convert the value to double")
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "-"
            displayValue = nil
        } else if operand != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            } else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            } else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "-"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    }
    
    @IBAction func plusButtonTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        
        if doubleValueFromDisplayValue == nil {
            print("Reset the number because we can't convert the value to double")
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "+"
            displayValue = nil
        } else if operand != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            } else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            } else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "+"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    }
    
    @IBAction func equalsButtonTapped(sender: UIButton) {
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            if operation == "+"{
                operand = operand! * doubleFromCurrentValue
            } else if operation == "-" {
                operand = operand! - doubleFromCurrentValue
            } else if operation == "*" {
                operand = operand! * doubleFromCurrentValue
            } else if operation == "/" {
                operand = operand! / doubleFromCurrentValue
            }
            displayLabel.text = "\(operand!)"
            operation = nil
        } else {
            displayValue = nil
            displayLabel.text = "0"
        }
    }
    
    @IBAction func plusMinusButtonTapped(sender: UIButton) {
        if let currentValue = displayValue, doubleFromCurrentValue = Double (currentValue) {
            displayValue = "\(-1.0 * doubleFromCurrentValue)"
            displayLabel.text = "\(displayValue!)"
        } else {
            displayValue = nil
            displayLabel.text = "0"
        }
    }
    
    @IBAction func backSpaceButtonTapped(sender: UIButton) {
        
        if let currentValue = displayValue {
            displayValue = currentValue.substringToIndex(currentValue.endIndex.advancedBy(-1))
            if displayValue  == "" {
                displayValue = "0"
            }
            
            displayLabel.text = displayValue
        }
        
        
        
        
        
        
    }
    
    // Symbol IBActions
    
    @IBAction func decimalButtonTapped(sender: UIButton) {
        displayNumber(".")
    }

    @IBAction func ZeroButtonTapped(sender: UIButton) {
        displayNumber("0")
    }
    
    @IBAction func oneButtonTapped(sender: UIButton) {
        displayNumber("1")
    }
    
    @IBAction func twoButtonTapped(sender: UIButton) {
        displayNumber("2")
    }
    
    @IBAction func threeButtonTapped(sender: UIButton) {
        displayNumber("3")
    }
    
    @IBAction func fourButtonTapped(sender: UIButton) {
        displayNumber("4")
    }
    
    @IBAction func fiveButtonTapped(sender: UIButton) {
        displayNumber("5")
    }
    
    @IBAction func sixButtonTapped(sender: UIButton) {
        displayNumber("6")
    }
    
    @IBAction func sevenButtonTapped(sender: UIButton) {
        displayNumber("7")
    }
    
    @IBAction func eightButtonTapped(sender: UIButton) {
        displayNumber("8")
    }
    
    @IBAction func nineButtonTapped(sender: UIButton) {
        displayNumber("9")
    }
    
    func displayNumber(type: String) {
        if let currentValue = displayValue {
            displayValue = currentValue + type
        }else {
            displayValue = type
        }
        displayLabel.text = Int(displayValue!)?.description
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

