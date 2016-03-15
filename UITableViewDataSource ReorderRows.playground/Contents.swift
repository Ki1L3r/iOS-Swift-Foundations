//: Playground - noun: a place where people can play

import UIKit

let tableView = UITableView()

var mostLiveableCitiesIn2015 = ["Melbourne", "Vienna", "Vancouver", "Toronto", "Adelaide"]

func tableView(tableView : UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
}

tableView.editing = true

func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath){
    let itemToMove = mostLiveableCitiesIn2015[fromIndexPath.row]
    
    mostLiveableCitiesIn2015.removeAtIndex(fromIndexPath.row)
    mostLiveableCitiesIn2015.insert(itemToMove, atIndex: toIndexPath.row)
}

tableView.editing = false

