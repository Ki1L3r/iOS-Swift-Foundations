//
//  TodosViewController.swift
//  bitlist
//
//  Created by Mikel Sanchez Herrero on 7/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class TodosViewController: UIViewController {

    var baseArray : [[TodoModel]] = []
    var selectedTodoIndexPath : NSIndexPath!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: CGRectZero)
        // Do any additional setup after loading the view.
        
        let todo1 = TodoModel(title: "Study iOS", favorited: false, dueDate: NSDate(), completed: false, repeated: nil,reminder: nil);
        
        let todo2 = TodoModel(title: "Diner", favorited: false, dueDate: nil, completed: false, repeated: nil, reminder: nil)
        
        let todo3 = TodoModel(title: "Gym", favorited: false, dueDate: NSDate(), completed: false, repeated: nil, reminder: nil)
        
        baseArray = [[todo1, todo2, todo3], []]
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = UIColor.clearColor()
        
        let gestureRecognizer : UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action:#selector(TodosViewController.longPressRecognizer(_:)))
        
        gestureRecognizer.minimumPressDuration = 1.0
        tableView.addGestureRecognizer(gestureRecognizer)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(TodosViewController.keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(TodosViewController.keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "todosToTodoSegue" {
            let indexPath = sender as! NSIndexPath
            let selectedTodo = baseArray[indexPath.section - 1][indexPath.row]
            
            let todoViewController = segue.destinationViewController as! TodoViewController
            
            todoViewController.todo = selectedTodo
            todoViewController.mainVC = self
        }
        
        
        
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
                let newTodo = TodoModel(title: addTodoTableViewCell.addTodoTextField.text!, favorited: addTodoTableViewCell.favorited, dueDate: nil, completed: false, repeated: nil, reminder: nil)
                baseArray[0].append(newTodo)
                
                tableView.reloadData()
                addTodoTableViewCell.addTodoTextField.text = ""
                addTodoTableViewCell.addTodoTextField.resignFirstResponder()
                addTodoTableViewCell.favoriteButton.backgroundColor = UIColor.orangeColor() 
            } else {
                let alert = UIAlertController(title: "Invalid Todo", message: "Please enter a title before adding AddTodo", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                presentViewController(alert, animated: true, completion: nil)
            }
        }
        
    }
    
    //: MARK - GESTURE RECOGNIZER
    
    func longPressRecognizer(longPress : UIGestureRecognizer) {
        if !tableView.editing {
            tableView.editing = true
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

extension TodosViewController: TodoTableViewCellDelegate {
    func completeTodo(indexPath: NSIndexPath) {
        print("Complete Todo")
        
        var selectedTodo = baseArray[indexPath.section-1][indexPath.row]
        selectedTodo.completed = !selectedTodo.completed
        if indexPath.section == 1 {
            baseArray[1].append(selectedTodo)
        } else {
            baseArray[0].append(selectedTodo)
            
        }
        
        baseArray[indexPath.section-1].removeAtIndex(indexPath.row)
        tableView.reloadData()
    }
    
    func favoriteTodo(indexPath: NSIndexPath) {
        print("Favorite Todo")
        
        var selectedTodo = baseArray[indexPath.section - 1][indexPath.row]
        selectedTodo.favorited = !selectedTodo.favorited
        
        baseArray[indexPath.section - 1][indexPath.row] = selectedTodo
        
        tableView.reloadData()
    }
}

extension TodosViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if indexPath.section == 0 {
            return false
        } else {
            return true
        }
        
    }
    
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
            
            cell.indexPath = indexPath
            cell.delegate = self
            
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
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 2 && baseArray[1].count > 0 {
            return "\(baseArray[1].count) Completed Items"
        }
        return ""
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

extension TodosViewController : UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section != 0 {
            performSegueWithIdentifier("todosToTodoSegue", sender: indexPath)
            
            selectedTodoIndexPath = indexPath
            
            tableView.deselectRowAtIndexPath(indexPath, animated: false)
            
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 2 && baseArray[1].count > 0 {
            return 25
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins = UIEdgeInsetsZero
        
    }
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if tableView.editing {
            return UITableViewCellEditingStyle.None
        }
        return UITableViewCellEditingStyle.Delete
    }
    
    func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }
}
