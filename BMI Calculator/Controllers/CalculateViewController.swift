//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    var calculatorBrain = CalculatorBrain()                             //************* create object calculatrorBrain from struct
    
    
    @IBOutlet weak var heightLabel: UILabel!                            //
    @IBOutlet weak var weightLabel: UILabel!                            //UI labels for slider and view
    @IBOutlet weak var heightSlider: UISlider!                          //
    @IBOutlet weak var weightSlider: UISlider!                          //
    
    
    override func viewDidLoad() {                                       //when view is loaded
        super.viewDidLoad()
    }
    
    
    //For displaying height slider value label
    @IBAction func heightSliderChanges(_ sender: UISlider) {            //IB action height slider
        let height = String(format: "%.2f", sender.value)               //convert the value from slider(Float -> String)
        heightLabel.text = "\(height)m"                                 //update the label with concatenation
    }
    
    
    //for displaying weight slider vlaue label
    @IBAction func weightSliderChanged(_ sender: UISlider) {            //IB action weight slider
        let weight = String(format: "%.0f", sender.value)               //convert the value from slider(Float -> String)
        weightLabel.text = "\(weight)kg"                                //update the label with concatenation
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {                       //when button is pressed
        let height = heightSlider.value                                         //copy height value from slider
        let weight = weightSlider.value                                         //copy weight value from slider
        
        calculatorBrain.calculateBMI(height:                                                    height, Weight: weight)            //************** calculateBMI method from calculator brain
        self.performSegue(withIdentifier: "goToResult", sender: self)           //method(from uiview controller): perform segue
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {         //override the method(from UIView controller)
        if segue.identifier == "goToResult" {                                   //check which screen it has to go to
            let destinationVC = segue.destination as! ResultViewController      //destination is the ResultViewController that will be initialized when the segue is performed; as- Downcasting UI view controller to ResultViewController; !: forced donwncast
            destinationVC.bmiValue = calculatorBrain.getBMIValue()              //************** To get bmiValue
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }

    }
    
}

