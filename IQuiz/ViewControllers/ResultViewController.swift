//
//  ResultViewController.swift
//  IQuiz
//
//  Created by Filipe Ferreira on 07/09/23.
//

import UIKit

class ResultViewController: UIViewController {
    var score: Int?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        configureLayout();
        configureResult();
    }
    
    func configureLayout()
    {
        navigationItem.hidesBackButton = true;
        restartQuizBTN.layer.cornerRadius = 12.0
    }
    
    func configureResult(){
        guard let score = self.score
        else{
            return
        };
        
        numberOfCorrectResponses.text = "Você acertou \(score) de \(quizzes.count)";
        let percent = (100.00 / Double(quizzes.count)) * Double(score);
        percenteOfCorrectResponses.text = "Percentual final: \(String(format:"%.2f", percent))%";
    }
    
    @IBOutlet weak var numberOfCorrectResponses: UILabel!
    @IBOutlet weak var percenteOfCorrectResponses: UILabel!
    @IBOutlet weak var restartQuizBTN: UIButton!
    
    
    @IBAction func restartQuizBTNAction(_ sender: Any) {
    }
    
}
