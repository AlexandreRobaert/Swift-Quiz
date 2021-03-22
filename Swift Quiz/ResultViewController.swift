//
//  ResultViewController.swift
//  Swift Quiz
//
//  Created by Alexandre Robaert on 16/03/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWorng: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var quizManager: QuizManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadResults()
    }
    @IBAction func close(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func loadResults(){
        self.lbAnswered.text = "Respondidas: \(quizManager.totalAnswers)"
        self.lbCorrect.text = "Corretas: \(quizManager.totalCorrectAnswers)"
        self.lbWorng.text = "Erradas: \(quizManager.totalAnswers - quizManager.totalCorrectAnswers)"
        self.lbScore.text = "\((Float16(quizManager.totalCorrectAnswers) / Float16(quizManager.totalAnswers)) * 100)%"
    }
}
