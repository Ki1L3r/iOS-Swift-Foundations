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
    
    var animals : [Animal] = []
    var currentAnimalIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myPenguin = Penguin(age: 3, name: "Wheezy", species: "Gento Penguin", image: UIImage(named: "GentooPenguin")!)
        
        pictureImageView.image = myPenguin.image
        nameLabel.text = myPenguin.name
        speciesLabel.text = myPenguin.species
        factLabel.text = myPenguin.randomFact()
        
//        myPenguin.speak()
//        myPenguin.trumpetANumberOfTimes(5)
//        myPenguin.speakANumberOfTimes(3, isLoud: false)
//        
//        let ageOfPenguinInHumanYears = myPenguin.ageInPinguinYearsFromHumanYears();
//        print(ageOfPenguinInHumanYears)
//        
//        let animalInstance = Animal()
//        print(animalInstance.speak())
//        print(animalInstance.randomFact())
//        
//        print(animalInstance.bodyStatistics.height)
//        print(animalInstance.personalInformation.name)
        
//        let myTiger = Tiger()
//        myTiger.speak()
//        myTiger.randomFact()
        
        let myTiger = Factory.createTiger()
        print(myTiger.bodyStatistics.height)
        print(myTiger.personalInformation.name)
        
        let myElephant = Factory.createElephant()
        print(myElephant.bodyStatistics.height)
        print(myElephant.personalInformation.name)
        
        let myLion = Factory.createLion()
        print(myLion.bodyStatistics.height)
        print(myLion.personalInformation.name)
        
        let myLionCub = Factory.createLionCub()
        print(myLionCub.bodyStatistics.height)
        print(myLionCub.personalInformation.name)
        
        animals = [myTiger, myLion, myLionCub, myElephant]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        calcualteIndex()
        updateView()
    }
    
    func calcualteIndex() {
        if currentAnimalIndex == animals.count-1 {
            currentAnimalIndex = 0
        } else {
            currentAnimalIndex++
        }
    }
    
    func updateView() {
        let currentAnimal = animals[currentAnimalIndex]
        
        UIView.animateWithDuration(2) { () -> Void in
            self.nameLabel.text = currentAnimal.personalInformation.name
            self.speciesLabel.text = currentAnimal.personalInformation.species
            self.pictureImageView.image = currentAnimal.personalInformation.image
            self.factLabel.text = currentAnimal.randomFact()
        }

    }

}

