//: Playground - noun: a place where people can play

import UIKit

func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
}

func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return 0
}

func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component:Int) -> String {
    return "Some Title"
}

func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
}