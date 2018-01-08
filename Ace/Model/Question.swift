//
//  Question.swift
//  Ace
//
//  Created by Korman Chen on 1/6/18.
//  Copyright © 2018 Korman Chen. All rights reserved.
//

import Foundation

class Question {
    
    var question : String
    private var correctAnswer : Int?
    private var answerBank = [String]()
    
    init(_ question : String) {
        self.question = question
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
