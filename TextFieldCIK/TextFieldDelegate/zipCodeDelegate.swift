//
//  zipDelegate.swift
//  TextFieldCIK
//
//  Created by Ion Ceban on 3/15/21.
//

import Foundation
import UIKit

class zipCodeDelegate : NSObject, UITextFieldDelegate {
    
    // MARK: Properties
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
}
