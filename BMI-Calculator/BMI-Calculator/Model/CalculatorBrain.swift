//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 04.01.24.
//

import Foundation

struct CalculatorBrain {
    
    var bmi = ""
    
    mutating func calculateBmi(weight: Float, height: Float){
        self.bmi = String(format: "%.1f", (weight / pow(height, 2)))
    }
    
    func getBmiValue() -> String{
        return bmi
    }
}
