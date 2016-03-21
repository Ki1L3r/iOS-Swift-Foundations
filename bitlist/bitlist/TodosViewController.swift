//
//  TodosViewController.swift
//  bitlist
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class TodosViewController: UIViewController, UITableViewDelegate {

    var baseArray : [[TodoModel]] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
        
        let todo1 = TodoModel(title: "Study iOS", favorited: false, dueDate: NSDate(), completed: false, repeated: nil,reminder: nil);
        
        let todo2 = TodoModel(title: "Diner", favorited: false, dueDate: nil, completed: false, repeated: nil, reminder: nil)
        
        let todo3 = TodoModel(title: "Gym", favorited: false, dueDate: NSDate(), completed: false, repeated: nil, reminder: nil)
        
        baseArray = [[todo1, todo2, todo3], []]
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editBarButtonItemTapped(sender: UIBarButtonItem) {
        if sender.title == "Edit" {
            if tableView.editing {
                tableView.setEditing(false, animated: true)
            } else {
                tableView.setEditing(true, animated: true)
            }
        } else if sender.title == "Done" {
            let indexPathOfAddTodoCell = NSIndexPath(forRow: 0, inSection: 0)
            let addTodoTableViewCell = tableView.cellForRowAtIndexPath(indexPathOfAddTodoCell) as! AddTodoTableViewCell
            
            if addTodoTableViewCell.addTodoTextField.text != "" {
                
            } else {
                let alert = UIAlertController(title: "Invalid Todo", message: "Please enter a title before adding AddTodo", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                presentViewController(alert, animated: true, completion: nil)
            }
        }
        
    }
    
    //: MARK - Keyboard Notifications
    
    func keyboardWillShow(notification : NSNotification) {
        navigationItem.rightBarButtonItem?.title = "Done"
    }
    
    func keyboardWillHide(notification : NSNotification) {
        navigationItem.rightBarButtonItem?.title = "Edit"
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TodosViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell : AddTodoTableViewCell = tableView.dequeueReusableCellWithIdentifier("AddTodoCell") as!AddTodoTableViewCell
            cell.backgroundColor = UIColor(red: 208/255, green: 198/255, blue: 177/255, alpha: 0.7)
            
            return cell
        } else if indexPath.section == 1 || indexPath.section == 2 {
            let currentTodo = baseArray[indexPath.section - 1][indexPath.row]
            let cell : TodoTableViewCell = tableView.dequeueReusableCellWithIdentifier("TodoCell") as! TodoTableViewCell
            
            cell.titleLabel.text = currentTodo.title
            
            let dateStringFormater = NSDateFormatter()
            
            dateStringFormater.dateFormat = "yyyy-MM-dd"
            if let date = currentTodo.dueDate {
                let dateString = dateStringFormater.stringFromDate(date)
                cell.dateLabel.text = dateString
            }
            
            if indexPath.section == 1 {
                cell.completeButton.backgroundColor = UIColor.redColor()
            } else {
                cell.completeButton.backgroundColor = UIColor.greenColor()
            }
            
            if currentTodo.favorited {
                cell.favoriteButton.backgroundColor = UIColor.blueColor()
            } else {
                cell.favoriteButton.backgroundColor = UIColor.orangeColor()
            }
            
            cell.backgroundColor = UIColor(red: 235/255, green: 176/255, blue: 53/255, alpha: 0.7)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return baseArray[0].count
        } else if section == 2 {
            return baseArray[1].count
        } else {
            return 0
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if indexPath.section == 1 {
            return true
        } else {
            return false
        }
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            tableView.beginUpdates()
            baseArray[indexPath.section-1].removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            tableView.endUpdates()
        }
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let currentTodo = baseArray[0][sourceIndexPath.row]
        baseArray[0].removeAtIndex(sourceIndexPath.row)
        baseArray[0].insert(currentTodo, atIndex: destinationIndexPath.row)
    }

}
