//
//  Quiz.swift
//  Quiz
//
//  Created by spark-01 on 2024/05/09.
//

import UIKit

class Quiz {
    let text: String
    let correctAnswer: Bool
    let imageName: String
    
    //初期化
    init(text: String, correctAnswer: Bool, imageName: String) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
}
