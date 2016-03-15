//: Playground - noun: a place where people can play

import UIKit

func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    if section == 1 {
        return 4
    } else {
        return 5
    }
}

func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 3
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    
    cell.textLabel?.text = "SomeValue"
    
    return cell
}
