//
//  MinusViewController.swift
//  Exericise_07
//
//  Created by 白石裕幸 on 2021/08/11.
//

import UIKit

class MinusViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textField01: UITextField!
    @IBOutlet var textField02: UITextField!
    @IBOutlet var resultLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        delegate()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {

        let val01 = Int(textField01.text!) ?? 0
        let val02 = Int(textField02.text!) ?? 0
        
        let result = val01 - val02
        resultLabel.text = String(result)
        

        self.view.endEditing(true)
    }


    private func delegate(){
        textField01.delegate = self
        textField02.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}
