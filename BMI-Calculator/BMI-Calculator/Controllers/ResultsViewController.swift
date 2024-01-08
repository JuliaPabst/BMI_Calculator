//
//  ResultsViewController.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 03.01.24.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue!
        background.backgroundColor = color ?? UIColor.systemBlue
        adviceLabel.text = advice ?? "Try again"
        
    }
    
   
    

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }

}
