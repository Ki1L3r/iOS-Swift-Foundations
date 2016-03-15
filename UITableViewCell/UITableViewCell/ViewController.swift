//
//  ViewController.swift
//  UITableViewCell
//
//  Created by Mikel Sanchez Herrero on 15/3/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var yogaTypes = ["Hatha", "Vinyasa", "Bikram", "Ashtanga", "Iyengar"]
    var yogaDescriptions = ["Gentle and focuses on breathing", "faster-paced and more fitness-oriented", "Promotes detoxification and prevention of injuries", "Allows you to work at your own pace", "For the perfectionist"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yogaTypes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : YogaTableViewCell = tableView.dequeueReusableCellWithIdentifier("yogaCell") as! YogaTableViewCell
        
        cell.titleLabel.text = yogaTypes[indexPath.row]
        cell.detailsLabel.text = yogaDescriptions[indexPath.row]
        
        return cell
    }


}

