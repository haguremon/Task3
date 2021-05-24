//
//  ViewController.swift
//  task3
//
//  Created by IwasakIYuta on 2021/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var text1Field: UITextField!
    @IBOutlet private var text2Field: UITextField!
    
    @IBOutlet private var text1Label: UILabel!
    @IBOutlet private var text2Label: UILabel!
    
    @IBOutlet private var text1PlusMinusSwitch: UISwitch!
    @IBOutlet private var text2PlusMinusSwitch: UISwitch!
    
    @IBOutlet private var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text1Field.keyboardType = .decimalPad
        text2Field.keyboardType = .decimalPad
    
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
                let text1 = Double(text1Field.text!) ?? 0
                let text2 = Double(text2Field.text!) ?? 0
//        guard let text1 = Double(text1Field.text!) else { return }
//        guard let text2 = Double(text2Field.text!) else { return }
        let signedNumber1: Double
        if text1PlusMinusSwitch.isOn {
            
            signedNumber1 = -text1
            
        } else {
            
            signedNumber1 = text1
            //print(signedNumber1)
        }
        text1Label.text = String(signedNumber1)
        
        let signedNumber2: Double
        if text2PlusMinusSwitch.isOn {
            
            signedNumber2 = -text2
        } else {
            
            signedNumber2 = text2
        }
        
        text2Label.text = String(signedNumber2)
        
        resultLabel.text = String(signedNumber1 + signedNumber2)
    }
    
}

