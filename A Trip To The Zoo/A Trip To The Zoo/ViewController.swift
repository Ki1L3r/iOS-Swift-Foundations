//
//  ViewController.swift
//  A Trip To The Zoo
//
//  Created by Mikel Sanchez Herrero on 24/2/16.
//  Copyright © 2016 Mikel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var factLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myPenguin = Penguin(age: 3, name: "Wheezy", species: "Gento Penguin", image: UIImage(named: "GentooPenguin")!)
        
        pictureImageView.image = myPenguin.image
        nameLabel.text = myPenguin.name
        speciesLabel.text = myPenguin.species
        
        myPenguin.speak()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
         
    }

}

