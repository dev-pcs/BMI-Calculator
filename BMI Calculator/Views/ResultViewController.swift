//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Priyank Shah on 7/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
 
class ResultViewController: UIViewController {          //subclass of view controller
    
    
    var bmiValue: String?                               //optional property of the class
    var advice: String?
    var color: UIColor?
    

    @IBOutlet weak var BMILabel: UILabel!               //ib outlets
    @IBOutlet weak var adviceLabel: UILabel!            //IB outlets
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = bmiValue                                //Display the bmi value
        adviceLabel.text = advice
        self.view.backgroundColor = color
        }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {     //IB Action for Recalulcate button
        dismiss(animated: true, completion: nil)                //Dismiss 2nd screen and go to 1st screen
    }
    

   

}
