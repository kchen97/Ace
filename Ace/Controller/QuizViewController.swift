//
//  ViewController.swift
//  Ace
//
//  Created by Korman Chen on 1/6/18.
//  Copyright © 2018 Korman Chen. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    private var someQuiz = Quiz()
    private var currentQuestion: Question!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        loadQuestionUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func navButtonPressed(_ sender: Any) {
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if sender.tag == currentQuestion.correctAnswer! {
            print("Correct!")
        }
        else {
            print("Wrong.")
        }
    }
    
    func configureUI() {
        questionLabel.numberOfLines = 5
        questionLabel.adjustsFontSizeToFitWidth = true
    }
    
    func loadQuestionUI() {
        let currentQuestion = someQuiz.loadQuestion()
        questionLabel.text = currentQuestion.text
        
        for index in 0..<currentQuestion.answerBank.count {
            answerButtons[index].setTitle(currentQuestion.answerBank[index], for: .normal)
        }
        
        if currentQuestion.answerBank.count > answerButtons.count {
            for index in (currentQuestion.answerBank.count - 1)..<answerButtons.count {
                answerButtons[index].isHidden = true
                answerButtons[index].isEnabled = false
            }
        }
    }
    
    func resetUI() {
        for button in answerButtons {
            button.isEnabled = true
            button.isHidden = false
        }
    }
}

