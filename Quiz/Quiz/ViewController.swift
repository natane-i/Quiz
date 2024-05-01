//
//  ViewController.swift
//  Quiz
//
//  Created by spark-01 on 2024/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.label.text = self.date.description
        
    }
    
    @IBAction func pressButton(_ sender: Any) {
        self.date.addTimeInterval(60 * 60 * 9)
        self.label.text = self.date.description
    }
}

