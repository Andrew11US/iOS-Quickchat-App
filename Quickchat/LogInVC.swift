//
//  LogInVC.swift
//  Quickchat
//
//  Created by Andrew Foster on 5/26/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class LogInVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: RoundTextField!
    @IBOutlet weak var passwordTextField: RoundTextField!
    @IBOutlet weak var loginBtn: RoundedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        
        if let email = emailTextField.text, let pass = passwordTextField.text, (email.characters.count > 0) && (pass.characters.count > 0) {
            
            AuthService.instance.login(email: email, password: pass, onComplete: { (errMsg, data) in
                guard errMsg == nil else {
                    
                    let alert = UIAlertController(title: "Error Authentication", message: errMsg, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    return
                }
                
                self.dismiss(animated: true, completion: nil)
            })
            
        } else {
            let alert = UIAlertController(title: "Username and Password Required", message: "You need to provide both an email and a password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        
        self.view.endEditing(true)
    }
    

}
