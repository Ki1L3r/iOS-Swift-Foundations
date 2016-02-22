//
//  ViewController.swift
//  Shoe Converter
//
//  Created by Mikel Sanchez Herrero on 14/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var mensShoeSizeTextfield: UITextField!
    
    @IBOutlet weak var womensShoeSizeTextfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertMensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFormTextField = Int(mensShoeSizeTextfield.text!)!
        let conversionConstant = 30
        let mensConvertedSize = sizeFormTextField + conversionConstant
        mensConvertedShoeSizeLabel.text = "\(mensConvertedSize) in European Shoe Size"
        
    }

    @IBAction func convertWomensShowSizeButtonPressed(sender: UIButton) {
        let sizeFromTextfield = Double(womensShoeSizeTextfield.text!)!
        let conversionConstant = 30.5
        let womensConvertedSize = sizeFromTextfield + conversionConstant
        womensConvertedShoeSizeLabel.text = "\(womensConvertedSize) in European Show Size"
    }
    
}

