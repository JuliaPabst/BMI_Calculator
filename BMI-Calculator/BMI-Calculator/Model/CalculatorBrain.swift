//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Julia Pabst on 04.01.24.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
        
    mutating func calculateBmi(weight: Float, height: Float){
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case ...18.5: bmi = BMI(value: bmiValue, advice: "You are underweight.", color: UIColor(red: 0.68, green: 0.85, blue: 0.9, alpha: 1.0))
        case 18.5...24.9: bmi = BMI(value: bmiValue, advice: "You have the perfect weight.", color: UIColor(red: 0.56, green: 0.93, blue: 0.56, alpha: 1.0))
        default: bmi = BMI(value: bmiValue, advice: "You are overweigth.", color: UIColor(red: 0.98, green: 0.5, blue: 0.5, alpha: 1.0)
)
        }
        
    }
    
    func getBmiValue() -> String{
        return String(format: "%.1f",  bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Try again!"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
