//
//  scrollViewController.swift
//  FirePit
//
//  Created by Abrar Hoque on 10/18/20.
//
//
import UIKit
import Firebase


class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        let email0 = emailTextfield.text
        let pass = passwordTextfield.text
        
        if let email = email0, let password = pass {
            
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: "loginScroll" , sender: self)
                }
              
              // ...
            
            }
            
            
        }
        
        
        
        
        
        
    }
    
}
