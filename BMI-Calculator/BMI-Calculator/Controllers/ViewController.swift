//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 01.01.24.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    
    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet var weightSlider: UISlider!
    
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
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        print(bmi)
    }
    
}

