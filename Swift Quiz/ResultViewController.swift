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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func close(_ sender: UIButton) {
        
        
    }
}
