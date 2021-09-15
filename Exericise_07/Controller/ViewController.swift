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
    private var resultValue = 0

    @IBAction private func button(_ sender: Any) {
        let val1 = Int(textField1.text!) ?? 0
        let val2 = Int(textField2.text!) ?? 0

        if let tabbarIndex = tabBarController?.selectedIndex {
            switch Operator(rawValue: tabbarIndex) {
            case .addition:
                resultValue = Addition().calculate(val1: val1, val2: val2)
            case .subtraction:
                resultValue = Subtraction().calculate(val1: val1, val2: val2)
            default:
                return
            }
        }
        updateLabel()
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    private func updateLabel() {
        resultLabel.text = String(resultValue)
    }
}
