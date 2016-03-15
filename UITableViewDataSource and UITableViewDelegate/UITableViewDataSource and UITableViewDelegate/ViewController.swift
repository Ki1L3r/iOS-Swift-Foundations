//
//  ViewController.swift
//  UITableViewDataSource and UITableViewDelegate
//
//  Created by Mikel Sanchez Herrero on 8/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var n64Games = ["Super Mario 64", "Golden Eye 007", "Mario Kart 64", "Star Fox", "Zelda Ocarina of Time"]
    
    var n64Descriptions = ["An RPG where Mario faces off against Bowser", "Arguably the greatest FPS of all time", "When in doubt settle it over a race", "Do a barrel roll", "I got stuck in Jabu-Jabu's belly"]
    
    var n64GameImages = ["SuperMario", "GoldenEye", "MarioKart", "StarFox", "Zelda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return n64Games.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = n64Games[indexPath.row]
        cell.detailTextLabel?.text = n64Descriptions[indexPath.row]
        let imageName = n64GameImages[indexPath.row]
        cell.imageView?.image = UIImage(named: imageName)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("\(n64Games[indexPath.row]) selected")
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            tableView.beginUpdates()
            n64Games.removeAtIndex(indexPath.row)
            n64Descriptions.removeAtIndex(indexPath.row)
            n64GameImages.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            tableView.endUpdates()
        }
    }
    
    @IBAction func editButtonPressed(sender: UIButton) {
        tableView.editing = !tableView.editing
        let buttonText = tableView.editing ? "Done" : "Editing"
        sender.setTitle(buttonText, forState: .Normal)
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }

    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let gameToMove = n64Games[sourceIndexPath.row];
        n64Games.removeAtIndex(sourceIndexPath.row)
        n64Games.insert(gameToMove, atIndex: destinationIndexPath.row)
        let gameDescriptionToMove = n64Descriptions[sourceIndexPath.row]
        n64Descriptions.removeAtIndex(sourceIndexPath.row)
        n64Descriptions.insert(gameDescriptionToMove, atIndex: destinationIndexPath.row)
        let gameImageToMove = n64GameImages[sourceIndexPath.row]
        n64GameImages.removeAtIndex(sourceIndexPath.row)
        n64GameImages.insert(gameImageToMove, atIndex: destinationIndexPath.row)
    }
}

