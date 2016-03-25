//
//  ViewController.swift
//  UIDatePicker
//
//  Created by mikel.sanchez.local on 24/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTimePicker: UIDatePicker!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let startDate : String = "2005-03-24"
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyyy-mm-dd"
        let date = dateStringFormatter.dateFromString(startDate)!
        datePicker.date = date
        
        datePicker.datePickerMode = UIDatePickerMode.Date
        
        timePicker.datePickerMode = UIDatePickerMode.Time
        timePicker.backgroundColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

