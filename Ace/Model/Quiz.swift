//
//  Quiz.swift
//  Ace
//
//  Created by Korman Chen on 1/8/18.
//  Copyright © 2018 Korman Chen. All rights reserved.
//

import Foundation

class Quiz {
    
    private var questionBank = [Question]()
    private var nextQuestionIndex = 0
    
    init() {
        
        questionBank.append(Question("A plane electromagnetic wave is traveling in the -z direction of a coordinate system. When the magnetic field at the origin of the coordinate system points in the +y direction, in what direction does the electric field point?"))
        questionBank[0].addAnswer(text: "(A) -y", correct: false)
        questionBank[0].addAnswer(text: "(B) +x", correct: false)
        questionBank[0].addAnswer(text: "(C) -z", correct: false)
        questionBank[0].addAnswer(text: "(D) +z", correct: true)
        questionBank[0].addAnswer(text: "(E) -x", correct: false)
    }
    
    func loadQuestionText() -> String {
        let questionText = questionBank[nextQuestionIndex].question
        nextQuestionIndex += 1
        
        if nextQuestionIndex >= questionBank.count {
            nextQuestionIndex = 0
        }
        
        return questionText
    }
}
