//
//  ViewController.swift
//  IQuiz
//
//  Created by Filipe Ferreira on 07/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLaytou();
    }
    
    func configureLaytou()
    {
        navigationItem.hidesBackButton = true;
        startOutletBTN.layer.cornerRadius = 12.0;
    }

    @IBAction func startBTN(_ sender: Any) {
        print("O botão foi presssionado");
    }
    
    @IBOutlet weak var startOutletBTN: UIButton!
}

