//
//  scrollViewController.swift
//  FirePit
//
//  Created by Abrar Hoque on 10/18/20.
//
//

import UIKit
import Firebase

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
        
    }
    
    class profile {
        var image: UIImage
        var name: String
        var major: String
        var classes: String
        var goals: String
        
        init( image: UIImage, name: String, major: String, classes: String, goals: String){
            self.image = image
            self.name = name
            self.major = major
            self.classes = classes
            self.goals = goals
            
        }
    }
    
    
    
    var personArray: [profile] = []

    

    
    
    
    
    @IBAction func uploadPic(_ sender: UIButton) {
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickedImage
        }
    }
    
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var major: UITextField!
    
    @IBOutlet weak var classes: UITextField!
    
    
    @IBOutlet weak var goals: UITextField!
    
    
  
    
    
    
    @IBAction func submit(_ sender: UIButton) {
        if let name = name.text, let major = major.text, let classes = classes.text, let goals = goals.text, let image = imageView.image {
            
            let person = profile(image: image, name: name, major: major, classes: classes, goals: goals)
            
            personArray.append(person)
            
            performSegue(withIdentifier: "scrollVC" , sender: self)
            
        }
        
    }
    
    
   
    
    
    
}
