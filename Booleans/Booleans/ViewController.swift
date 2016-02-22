//
//  ViewController.swift
//  Booleans
//
//  Created by Mikel Sanchez Herrero on 15/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var batmanStrongerButton: UIButton!
    @IBOutlet weak var batmanSmarterButton: UIButton!
    @IBOutlet weak var batmanCraftierButton: UIButton!
    
    @IBOutlet weak var supermanStrongerButton: UIButton!
    @IBOutlet weak var supermanSmarterButton: UIButton!
    @IBOutlet weak var supermanCraftierButton: UIButton!
    
    var strongerBatman: Bool = false
    var smarterBatman: Bool = false
    var craftierBatman: Bool = false
    
    var strongerSuperman: Bool = false
    var smarterSuperman: Bool = false
    var craftierSuperman: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func batmanStrongerButtonTap(sender: UIButton) {
        batmanStrongerButton.enabled = false
        supermanStrongerButton.enabled = false
        strongerBatman = true
    }
    
    @IBAction func supermanStrongerButtonTap(sender: UIButton) {
        supermanStrongerButton.enabled = false
        batmanStrongerButton.enabled = false
        strongerSuperman = true
    }

    @IBAction func batmanSmarterButtonTap(sender: UIButton) {
        batmanSmarterButton.enabled = false
        supermanSmarterButton.enabled = false
        smarterBatman = true
    }
    
    @IBAction func supermanSmarterButtonTap(sender: UIButton) {
        supermanSmarterButton.enabled = false
        batmanSmarterButton.enabled = false
        smarterSuperman = true
    }
    
    @IBAction func batmanCraftierButtonTap(sender: UIButton) {
        batmanCraftierButton.enabled = false
        supermanCraftierButton.enabled = false
        craftierBatman = true
    }
    
    @IBAction func supermanCraftierButtonTap(sender: UIButton) {
        supermanCraftierButton.enabled = false
        batmanCraftierButton.enabled = false
        craftierSuperman = true
    }
    
    @IBAction func calculateButtonTap(sender: UIButton) {
        if strongerBatman && smarterBatman && craftierBatman {
            view.backgroundColor = UIColor(patternImage: UIImage(named: "batman")!)
        } else if strongerSuperman && smarterSuperman && craftierSuperman {
            view.backgroundColor = UIColor(patternImage: UIImage(named: "superman")!)
        } else {
            view.backgroundColor = UIColor(patternImage: UIImage(named: "batmanAndSuperman")!)
        }
    }
}

