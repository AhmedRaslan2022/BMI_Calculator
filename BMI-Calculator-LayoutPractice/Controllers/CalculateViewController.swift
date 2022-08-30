//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Macintosh on 03/08/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
 
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentHeight = sender.value
            heightLabel.text = String(format: "%.2f", currentHeight)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentWeight = sender.value
            weightLabel.text = String(format: "%.2f", currentWeight)
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calcBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
         
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue =  calculatorBrain.getBMI()
            destinationVC.advice =  calculatorBrain.getAdvice()
            destinationVC.color =  calculatorBrain.getColor()
            
        }
    }
    
}

