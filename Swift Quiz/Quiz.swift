//
//  Quiz.swift
//  Swift Quiz
//
//  Created by Alexandre Robaert on 17/03/21.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctAnswer: String
    
    func validadeOptions(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctAnswer
    }
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
}
