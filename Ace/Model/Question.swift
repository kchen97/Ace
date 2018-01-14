//
//  Question.swift
//  Ace
//
//  Created by Korman Chen on 1/6/18.
//  Copyright © 2018 Korman Chen. All rights reserved.
//

import Foundation

class Question {
    
    var text : String
    var correctAnswer : Int?
    var answerBank = [String]()
    
    init(_ question : String) {
        self.text = question
        correctAnswer = nil
    }
    
    func addAnswer(text : String, correct : Bool) -> Bool {
        
        if correctAnswer != nil && correct {
            return false
        }
        else if correct {
            correctAnswer = answerBank.endIndex
        }
        
        answerBank.append(text)

        return true
    }
}
