//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Macintosh on 03/08/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit
struct CalculatorBrain {
 
    var bmi : BMI?
    
    mutating func calcBMI(height: Float, weight: Float){
       let bmiValue  = weight/(height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.yellow)
        } else if  bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBMI ()-> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    func getAdvice ()-> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor ()-> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
