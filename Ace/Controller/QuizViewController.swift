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
    @IBOutlet var answerButtions: [UIButton]!
    private var someQuiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = someQuiz.bank[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func navButtonPressed(_ sender: Any) {
    }
    
}

