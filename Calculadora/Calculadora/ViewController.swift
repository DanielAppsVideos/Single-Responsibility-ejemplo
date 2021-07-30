//
//  ViewController.swift
//  Calculadora
//
//  Created by danielapps on 12/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valorUnoTextField: UITextField!
    @IBOutlet weak var valorDosTextField: UITextField!
    @IBOutlet weak var sumaButton: UIButton!
    @IBOutlet weak var restaButton: UIButton!
    @IBOutlet weak var multiplicacionButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var resultadoCalculado: UILabel!
    var alu:Alu = Alu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SumaButtonPressed(_ sender: UIButton) {
        sumaButton.isSelected = true
    }
    @IBAction func restaButtonPressed(_ sender: UIButton) {
        restaButton.isSelected = true
    }
    @IBAction func multiplicacionButtonPressed(_ sender: Any) {
        multiplicacionButton.isSelected = true
    }
    @IBAction func divisionButtonPressed(_ sender: UIButton) {
        divisionButton.isSelected = true
    }
    @IBAction func calcularButtonPressed(_ sender: UIButton) {
        let operation = getSelectedOperation()
        let val1 = Double(valorUnoTextField.text!)!
        let val2 = Double(valorDosTextField.text!)!
        
        let result = alu.performOperation(op1:val1,op2:val2, operation:operation)
        resultadoCalculado.text = "\(result)"
        /*
        
        */
        
    }
    func getSelectedOperation()->AluOperation{
        
        if sumaButton.isSelected{
            return .add
        }
        if restaButton.isSelected{
            return .diff
        }
        if multiplicacionButton.isSelected{
            return .mult
        }
        if divisionButton.isSelected{
            return .div
        }
        return .add
    }
}

