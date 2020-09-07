//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ezequiel Parada Beltran on 07/09/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue: String?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiNumber = weight  / pow(height, Float(2))
        bmiValue = String(format: "%.1f", bmiNumber)
    }
    
    func getBMIValue() -> String {
        guard let bmi = bmiValue else { return "0.0" }
        return bmi
    }
}
