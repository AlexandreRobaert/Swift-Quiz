//
//  QuizViewController.swift
//  Swift Quiz
//
//  Created by Alexandre Robaert on 16/03/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var labelTimer: UILabel!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet var buttonsAnswers: [UIButton]!
    
    let segueResult = "segueResult"
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nextQuestion()
        starTime()
    }
    
    func starTime(){
        self.progressView.progress = 0.0
        let progress = Progress(totalUnitCount: 180)
        progress.completedUnitCount = 0
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            
            guard progress.isFinished == false else {
                timer.invalidate()
                self.showResult()
                return
            }
            
            progress.completedUnitCount += 1
            self.progressView.setProgress(Float(progress.fractionCompleted), animated: true)
            self.labelTimer.text = "Tempo restante: \(progress.completedUnitCount) segundos"
        }
    }
    
    func nextQuestion(){
        quizManager.refreshQuiz()
        showQuestion()
    }
    
    func showQuestion(){
        labelQuestion.text = quizManager.question
        for (index, options) in quizManager.options.enumerated() {
            buttonsAnswers[index].setTitle(options, for: .normal)
        }
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        quizManager.validadeAnswer(index: sender.tag)
        nextQuestion()
    }
    
    func showResult(){
        performSegue(withIdentifier: self.segueResult, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == self.segueResult {
            let vcResult = segue.destination as! ResultViewController
            vcResult.quizManager = quizManager
        }
    }
}
