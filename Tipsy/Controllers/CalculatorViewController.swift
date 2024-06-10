//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        calculatorBrain.tipString = sender.currentTitle!
        
        billTextField.endEditing(true)

    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.f", sender.value)
        calculatorBrain.peopleNumber = Float(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.totalSum = Float(billTextField.text ?? "0") ?? 0.0
        print(calculatorBrain.eachTip)
    }
    


}

