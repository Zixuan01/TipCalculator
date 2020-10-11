//
//  ViewController.swift
//  tip
//
//  Created by Hedda on 10/10/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billAmountTextField: UITextField!

    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabelView: UILabel!
    
    @IBOutlet weak var tipPecentageSlider: UISlider!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        // ?? 0 if not valid change to 0
        let tipPercentage = tipPecentageSlider.value
        // slider to make more possible percentages
        // calculate the tip and total
        let tip = bill * Double(tipPercentage)/100
        let total = bill + tip
        
        // update the tip and total labels
        tipPercentageLabelView.text = String(format: "%02d%%", Int(tipPecentageSlider.value))
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

