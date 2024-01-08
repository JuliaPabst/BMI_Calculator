//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 01.01.24.
//

import UIKit

class CalculateViewController: UIViewController {
 
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    
    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightLabel.text = "1.5 m"
        
        weightLabel.text = "50 kg"
    }

    @IBAction func adjustHeightSlider(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func adjustWeightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f kg", sender.value)
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        calculatorBrain.calculateBmi(weight: weightSlider.value, height: heightSlider.value)
     
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
 
}

