//
//  ViewController.swift
//  UITextfield
//
//  Created by Mikel Sanchez Herrero on 13/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var texField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var borderLabel: UILabel!
    
    @IBOutlet weak var actionButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        texField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionButtonPressed(sender: UIButton) {
        texField.textColor = UIColor.whiteColor()
        texField.backgroundColor = UIColor(red: 207/255, green: 202/255, blue: 25/255, alpha: 1.0)
        texField.textAlignment = NSTextAlignment.Center
        
        var currentBorderStyle: String = "Default"
        
        if texField.borderStyle == UITextBorderStyle.None {
            texField.borderStyle = UITextBorderStyle.Line
            currentBorderStyle = "Line"
        }
        else if texField.borderStyle == UITextBorderStyle.Line{
            texField.borderStyle = UITextBorderStyle.Bezel
            currentBorderStyle = "Bezel"
        } else if texField.borderStyle == UITextBorderStyle.Bezel{
            texField.borderStyle = UITextBorderStyle.RoundedRect
            currentBorderStyle = "RoundedRect"
        } else if texField.borderStyle == UITextBorderStyle.RoundedRect{
            texField.borderStyle = UITextBorderStyle.None
            currentBorderStyle = "None"
        }
        
        messageLabel.text = "Hello \(texField.text!) Nice to meet you"
        
        borderLabel.text = "Current borderStyle: \(currentBorderStyle)"
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        texField.resignFirstResponder()
        return true
    }

}

