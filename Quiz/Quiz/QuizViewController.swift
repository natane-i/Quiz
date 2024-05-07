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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.label.text = self.nameText
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
