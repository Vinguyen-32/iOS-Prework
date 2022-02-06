//
//  ViewController.swift
//  Prework
//
//  Created by Vi Nguyen on 2/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get Bill Amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get Total by multiplying Tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount label
        totalLabel.text = String(format: "$%.2f", total)
    }
}

