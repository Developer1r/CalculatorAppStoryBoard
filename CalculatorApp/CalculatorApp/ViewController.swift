//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Elior Cohen on 15/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiTextFieldResult: UITextField!
    
    private var varNumber1 = 0.0
    private var varNumber2 = 0.0
    private var varNumberResult = 0.0
    private var varOperator = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func button1(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "1"
    }
    
    @IBAction func button2(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "2"
    }
    
    @IBAction func button3(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "3"
    }
    
    @IBAction func button4(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "4"
    }
    
    @IBAction func button5(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "5"
    }
    
    @IBAction func button6(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "6"
    }
    
    @IBAction func button7(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "7"
    }
    
    @IBAction func button8(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "8"
    }
    
    @IBAction func button9(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "9"
    }
    
    @IBAction func button0(Sender: UIButton) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "0"
    }
    
    @IBAction func buttonPlus(Sender: UIButton) {
        varOperator = "+"
        varNumber1 = Double(uiTextFieldResult.text!)!
        
        clearText()
    }
    
    @IBAction func buttonMinus(Sender: UIButton) {
        varOperator = "-"
        varNumber1 = Double(uiTextFieldResult.text!)!
        
        clearText()
    }
    
    @IBAction func buttonMultiplication(Sender: UIButton) {
        varOperator = "*"
        varNumber1 = Double(uiTextFieldResult.text!)!
        
        clearText()
    }
    
    @IBAction func buttonDivision(Sender: UIButton) {
        varOperator = "/"
        varNumber1 = Double(uiTextFieldResult.text!)!
        
        clearText()
    }
    
    @IBAction func buttonEqual(Sender: UIButton) {
        varNumber2 = Double(uiTextFieldResult.text!)!
        
        switch varOperator {
        case "+":
            varNumberResult = varNumber1 + varNumber2
            
            resultCalculator()
        case "-":
            varNumberResult = varNumber1 - varNumber2
            
            resultCalculator()
        case "*":
            varNumberResult = varNumber1 * varNumber2
            
            resultCalculator()
        case "/":
            varNumberResult = varNumber1 / varNumber2
            
            resultCalculator()
        default:
            uiTextFieldResult.text = "Error"
        }
    }
    
    @IBAction func buttonClear(Sender: UIButton) {
        clearText()
    }
    
    func clearText() {
        uiTextFieldResult.text = ""
    }
    
    func resultCalculator() {
        let finishResult = varNumberResult.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", varNumberResult) : String(varNumberResult)
        uiTextFieldResult.text = finishResult
    }
    
}
