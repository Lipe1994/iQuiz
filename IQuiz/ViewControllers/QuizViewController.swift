//
//  QuizViewController.swift
//  IQuiz
//
//  Created by Filipe Ferreira on 07/09/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    var score = 0;
    var numberQuiz = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout();
        configureQuiz();
    }
    
    func configureLayout()
    {
        for btn in commonBTNS
        {
            btn.layer.cornerRadius = 12.0;
        }
        navigationItem.hidesBackButton = true;
        descriptionLabel.numberOfLines = 0;
        descriptionLabel.textAlignment = .center;
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet var commonBTNS: [UIButton]!
    
    @objc func configureQuiz()
    {
        descriptionLabel.text = quizzes[numberQuiz].description;
        
        for btn in commonBTNS
        {
            btn.setTitle(quizzes[numberQuiz].responses[btn.tag], for: .normal);
            btn.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    @IBAction func optionBTN(_ sender: UIButton) {
        
        print(sender.tag);
        
        let ifIsCorrect = quizzes[numberQuiz].correctResponse == sender.tag;
        
        if(ifIsCorrect){
            score += 1;
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0);
            print("Usuário acertou!");
        }else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0);
            print("Usuário errou!");
        }
        
        if(numberQuiz < (quizzes.count - 1)){
            numberQuiz += 1;
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configureQuiz), userInfo: nil, repeats: false);
        }else{
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(goToResultsView), userInfo: nil, repeats: false);
        }
    }
    
    @objc func goToResultsView()
    {
        performSegue(withIdentifier: "goToResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let resultView = segue.destination as? ResultViewController else{
            return;
        }
        
        resultView.score = score;
    }
}
