//: Playground - noun: a place where people can play

import UIKit

let tableVIew = UITableView()

var candies = ["Reese Pieces", "Milk Duds", "Snickers", "M&M's", "Sour Patch Kids"]

func tableView(tableView:UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndePath indexPath: NSIndexPath) {
    
    if editingStyle == UITableViewCellEditingStyle.Delete {
        tableView.beginUpdates()
        candies.removeAtIndex(indexPath.row)
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        tableView.endUpdates()
    } else if editingStyle == UITableViewCellEditingStyle.Insert {
        // Insert a new row.
    }
}
