//
//  ViewController.swift
//  tip calculator
//
//  Created by Johnny Yang on 13/06/2023.
//

import UIKit

    class ViewController: UIViewController {

        @IBOutlet weak var billAmountTxt: UITextField!
        @IBOutlet weak var tipPercentTxt: UITextField!
        @IBOutlet weak var calculateTipBtn: UIButton!

        @IBOutlet weak var tipAmountLbl: UILabel!
        @IBOutlet weak var billTotalLbl: UILabel!

        @IBAction func calculateTip(_ sender: Any) {
            
            // Convert bill amount text to a Double
            let billAmount:Double = Double(billAmountTxt.text!)!
            
            // Calculate tip amount based on bill amount and tip percentage
            let tipAmount:Double = (Double(tipPercentTxt.text!)! / 100) * billAmount
            tipAmountLbl.text = "\(tipAmount)"
            
            // Calculate total bill amount
            billTotalLbl.text = "\(billAmount + tipAmount)"
            
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }

    }
