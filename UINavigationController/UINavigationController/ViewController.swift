//
//  ViewController.swift
//  UINavigationController
//
//  Created by mikel.sanchez.local on 23/3/16.
//  Copyright © 2016 mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showBarButtonItemPressed(sender: UIBarButtonItem) {
        let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

