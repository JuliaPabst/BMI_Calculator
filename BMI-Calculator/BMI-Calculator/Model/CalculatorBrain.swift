//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 04.01.24.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
        
    mutating func calculateBmi(weight: Float, height: Float){
        bmi = weight / pow(height, 2)
    }
    
    func getBmiValue() -> String{
        return String(format: "%.1f",  bmi ?? 0.0)
    }
}
