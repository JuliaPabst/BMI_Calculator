//
//  ResultsViewController.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 03.01.24.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue!
    }
    
   
    

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }

}
