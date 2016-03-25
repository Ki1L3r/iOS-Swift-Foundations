//
//  DatePickerView.swift
//  bitlist
//
//  Created by mikel.sanchez.local on 24/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

protocol DatePickerViewDelegate {
    func removePressed()
    func donePressed()
    func datePickerValueChanged(date: NSDate)
}

class DatePickerView: UIView {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    var delegate: DatePickerViewDelegate?
    
    @IBAction func removeBarButtonItemPressed(sender: UIBarButtonItem) {
        delegate?.removePressed()
    }
    
    @IBAction func reminderBarButtonItemPressed(sender: UIBarButtonItem) {
        
    }
    
    @IBAction func doneBarButtonItemPress(sender: UIBarButtonItem) {
        delegate?.donePressed()
    }
    
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        delegate?.datePickerValueChanged(sender.date)
    }
}
