//: Playground - noun: a place where people can play

import UIKit

class MillonarieShow {
    var question : String
    var answer : String?
    
    init(question: String) {
        self.question = question
    }
    
    func ask() {
        print(question)
    }
}

var finalQuestion = MillonarieShow(question: "What is the meaning of live?")
finalQuestion.ask()
finalQuestion.answer = "42"

