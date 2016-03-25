//: Playground - noun: a place where people can play

import UIKit

protocol DiceDelegate {
    func diceRollCompleted(result: Int)
    
}

class Dice {
    var sides: Int
    
    var delegate: DiceDelegate?
    
    init(sides: Int){
        self.sides = sides
    }
    
    func randomNumer() -> Int {
        return Int(arc4random_uniform(UInt32(sides)) + 1)
    }
    
    func roll() -> Int {
        let result = Int(self.randomNumer())
        delegate?.diceRollCompleted(result)
        return result
    }
}

class Game: DiceDelegate {
    var wins: Int
    var dice: Dice
    
    init(wins: Int, diceSides: Int){
        self.wins = wins
        self.dice = Dice(sides: diceSides)
        dice.delegate = self
    }
    
    func diceRollCompleted(result: Int) {
        if result > 3 {
            wins += 1
        }
        
        print("Number of wins \(wins)")
    }
}

let game = Game(wins: 0, diceSides: 6)
game.dice.roll()
game.dice.roll()

