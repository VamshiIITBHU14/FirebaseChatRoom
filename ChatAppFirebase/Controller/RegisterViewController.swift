//
//  RegisterViewController.swift
//  ChatAppFirebase
//
//  Created by Priyanka Pote on 24/11/17.
//  Copyright © 2017 VamshiKrishna. All rights reserved.
//

import UIKit
import SVProgressHUD
import Firebase

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextfield.delegate = self
        passwordTextfield.delegate = self
        self.hideKeyboardWhenTappedAround()
        
        let dummyArray = [1, 2, 3]
        let another = dummyArray.map({(n1) in  String(n1)})
        print(another)
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    @IBAction func registerPressed(_ sender: AnyObject) {
       SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                print(error!)
            }
            else{
                SVProgressHUD.dismiss()
                 self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
}
