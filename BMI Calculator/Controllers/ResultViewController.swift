//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Justin Mercado on 8/20/22.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var imageColorView: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageColorView.backgroundColor = color
        adviceLabel.text = advice
        bmiLabel.text = bmiValue
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
