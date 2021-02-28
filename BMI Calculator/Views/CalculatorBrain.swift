//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Priyank Shah on 7/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {                                            //new struct with properties and methods for calculating bmi, changing backgroud changing color and advice
    
    
    var bmi: BMI?                                           //new struct bmi used in both methods
    
    
    mutating func calculateBMI(height: Float, Weight: Float) {                     //method(Calculate BMI) value with height and weight arguments; notice mutating keyword for chaging struct property
        let bmiValue = Weight / (height * height)                                  //BMI formula
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))        //seperate bmi struct for underweight
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))      //seperate bmi struct for normal
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))        //seperate bmi struct for overweight
        }
        
        //
    }
    
    
     func getBMIValue() -> String {                                                //method(getBMIValue) with return
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)        //convert the calculated bmi to string; with nil coaelscing
        return bmiTo1DecimalPlace                                                 //return
    }
    
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "none"
        return advice
    }
    
    
    func getColor() -> UIColor {
        let color: UIColor = bmi?.color ?? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        return color
    }
    
    
}
