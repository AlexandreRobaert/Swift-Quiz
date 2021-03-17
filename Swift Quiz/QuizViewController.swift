//
//  QuizViewController.swift
//  Swift Quiz
//
//  Created by Alexandre Robaert on 16/03/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var viewTimer: UIView!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet var buttonsAnswers: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        
    }
}
