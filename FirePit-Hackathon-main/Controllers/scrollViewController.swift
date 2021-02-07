//
//  scrollViewController.swift
//  FirePit
//
//  Created by Abrar Hoque on 10/18/20.
// 
//

import UIKit
import Firebase

class scrollViewController: UIViewController {
    
    
    
    @IBAction func chat(_ sender: Any) {
        
        performSegue(withIdentifier: "toChat" , sender: self)
        
    }
    
    
    
    
    
    
}
