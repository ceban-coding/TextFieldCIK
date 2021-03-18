//
//  ViewController.swift
//  TextFieldCIK
//
//  Created by Ion Ceban on 3/15/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    let zipDelegate = zipCodeDelegate()
    let DollarTextField = DollarTextFieldDelegate()
    
    // MARK: Outlets
    
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var switchTextField: UISwitch!
    
 
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the three delegates
        self.zipTextField.delegate = self.zipDelegate
        self.dollarTextField.delegate = self.DollarTextField
        self.textField.delegate = self

}

// MARK: Switch text Field Delagate
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.switchTextField.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
 
    // MARK: Actions
    
    @IBAction func togleSwitch(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
            self.textField.resignFirstResponder()
        }
    }
    
}
