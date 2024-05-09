//
//  QuizViewController.swift
//  Quiz
//
//  Created by spark-01 on 2024/05/07.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var nameText: String = ""
    
    @IBOutlet weak var quizCard: QuizCard!
    let manager: QuizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.quizCard.style = .initial
        self.loadQuiz()
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(dragQuizCard(_:)))
        self.quizCard.addGestureRecognizer(panGestureRecognizer)
    }
    
    func loadQuiz() {
        //クイズの問題文を表示
        self.quizCard.quizLabel.text = manager.currentQuiz.text
        //クイズの画像を表示
        self.quizCard.quizImageView.image = UIImage(named: manager.currentQuiz.imageName)
    }
    
    @objc func dragQuizCard(_ sender: UIPanGestureRecognizer) {
        
        switch sender.state {
        case .began, .changed:
            self.transformQuizCard(gesture: sender)
        case .ended:
            break
        default:
            break
        }
    }
    
    func transformQuizCard(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self.quizCard)
        let translationTransform = CGAffineTransform(translationX: translation.x, y: translation.y)
        let translationPercent = translation.x/UIScreen.main.bounds.width/2
        let rotationAngle = CGFloat.pi/3 * translationPercent
        let rotationTransform = CGAffineTransform(rotationAngle: rotationAngle)
        let transform = translationTransform.concatenating(rotationTransform)
        self.quizCard.transform = transform
        
        if translation.x > 0 {
            self.quizCard.style = .right
        } else {
            self.quizCard.style = .wrong
        }
    }
    
}
