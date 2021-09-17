//
//  MinusViewController.swift
//  Exericise_07
//
//  Created by 白石裕幸 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var resultLabel: UILabel!

    private var calculator: Calculation!

    @IBAction private func button(_ sender: Any) {
        let val1 = Int(textField1.text!) ?? 0
        let val2 = Int(textField2.text!) ?? 0

        let resultValue = calculator.calculate(val1: val1, val2: val2)

        resultLabel.text = String(resultValue)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    func configure(calculator: Calculation) {
        self.calculator = calculator
    }
}
