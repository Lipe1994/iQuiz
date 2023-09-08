//
//  Quiz.swift
//  IQuiz
//
//  Created by Filipe Ferreira on 07/09/23.
//

import Foundation

struct Quiz
{
    var description: String;
    var responses: [String];
    var correctResponse: Int;
}

let quizzes: [Quiz] = [
    Quiz(description: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", responses: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctResponse: 2),
    Quiz(description: "Quando foi lançado o filme Avatar 2?", responses: ["2014", "2022", "2023"], correctResponse: 1),
    Quiz(description: "Quando foi lançado o filme Vingadores Ultimato?", responses: ["2019", "2018", "2017"], correctResponse: 0),
];
