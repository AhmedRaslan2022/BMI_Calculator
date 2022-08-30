//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Macintosh on 03/08/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmiValue ?? "0.0"
        adviceLabel.text = advice ?? "No Advice"
        view.backgroundColor = color ?? UIColor.white

    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true,completion: nil)
    }
    
}
