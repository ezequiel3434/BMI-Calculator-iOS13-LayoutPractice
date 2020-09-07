//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ezequiel Parada Beltran on 07/09/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiNumber = weight  / pow(height, Float(2))
        
        
        switch bmiNumber {
        case 0..<18.5:
            bmi = BMI(value: bmiNumber, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            break
        case 18.5...24.9 :
            bmi = BMI(value: bmiNumber, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            break
        default:
            bmi = BMI(value: bmiNumber, advice: "Eat less pies!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            break
        }
        
        
        
    }
    
    func getBMIValue() -> String {
        guard let bmiValue = bmi?.value else { return "0.0" }
        
        
        return String(format: "%.1f", bmiValue)
    }
    
    func getAdvice() -> String {
        guard let bmiAdvice = bmi?.advice else { return "0.0" }
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        guard let bmiColor = bmi?.color else { return UIColor.white }
        return bmiColor
    }
}
